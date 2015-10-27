package br.com.xti.ouvidoria.dao;

import java.sql.Clob;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.apache.commons.lang.StringUtils;

import br.com.xti.ouvidoria.dto.manifestacao.DTOManifestacao;
import br.com.xti.ouvidoria.dto.manifestacao.DTOPesquisaManifestacao;
import br.com.xti.ouvidoria.filtropersonalizado.FiltroPersonalizado;
import br.com.xti.ouvidoria.helper.EnumHelper;
import br.com.xti.ouvidoria.model.TbEncaminhamento;
import br.com.xti.ouvidoria.model.TbManifestacao;
import br.com.xti.ouvidoria.model.TbManifestacao_;
import br.com.xti.ouvidoria.model.TbTramite;
import br.com.xti.ouvidoria.model.TbUnidade;
import br.com.xti.ouvidoria.model.TbUsuario;
import br.com.xti.ouvidoria.model.enums.BooleanEnum;
import br.com.xti.ouvidoria.model.enums.FuncaoUsuarioEnum;
import br.com.xti.ouvidoria.model.enums.StatusEncaminhamentoEnum;
import br.com.xti.ouvidoria.model.enums.StatusManifestacaoEnum;
import br.com.xti.ouvidoria.model.enums.UnidadeEnum;

/**
 * @author Clelson
 */
@Stateless
public class ManifestacaoDTODAO extends AbstractDAO<TbManifestacao> {

    @EJB
    private VwUltimoTramiteDAO vwUltimoTramiteDAO;
    @EJB
    private ManifestacaoDAO manifestacaoDAO;
    
    
    private Map<String, StringBuffer> 	mapaEntidades = new HashMap<String, StringBuffer>();
    private Map<String, Boolean> 		mapaUsoEntidades = new HashMap<String, Boolean>();
    private static final String ASSOCIACAO_ENCAMINHAMENTOS				=	"encaminhamentos"; 
    private static final String ASSOCIACAO_UNIDADE_RECEBEU				=	"unidadeRecebeu"; 
    private static final String ASSOCIACAO_UNIDADE_ENVIOU				=	"unidadeEnviou"; 
    private static final String ASSOCIACAO_TRAMITE						=	"tramite"; 
    private static final String ASSOCIACAO_USUARIO_RECEPTOR				=	"usuarioReceptor"; 
    private static final String ASSOCIACAO_USUARIO_EMISSOR				=	"usuarioEmissor"; 
    private static final String ASSOCIACAO_ULTIMO_TRAMITE				=	"ultimoTramite"; 

    public ManifestacaoDTODAO() {
        super(TbManifestacao.class);
        
        //Carrega os mapas para controlar as associações de entidades 
        mapaEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, 
        		new StringBuffer ("	LEFT JOIN TbEncaminhamento en				ON en.idManifestacao					= m.idManifestacao "));
        mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, false);
        
        mapaEntidades.put(ASSOCIACAO_UNIDADE_RECEBEU, 
        		new StringBuffer ("	LEFT JOIN TbUnidade unidadeRecebeu			ON unidadeRecebeu.idUnidade				= en.idUnidadeRecebeu "));
        mapaUsoEntidades.put(ASSOCIACAO_UNIDADE_RECEBEU,  false);
        
        mapaEntidades.put(ASSOCIACAO_UNIDADE_ENVIOU, 
        		new StringBuffer ("	LEFT JOIN TbUnidade unidadeEnviou			ON unidadeEnviou.idUnidade				= en.idUnidadeEnviou ")); 
        mapaUsoEntidades.put(ASSOCIACAO_UNIDADE_ENVIOU,  false);
        
        mapaEntidades.put(ASSOCIACAO_TRAMITE, 
        		new StringBuffer ("	LEFT JOIN TbTramite tra						ON tra.idEncaminhamento					= en.idEncaminhamento " ));
        mapaUsoEntidades.put(ASSOCIACAO_TRAMITE,  false);

        mapaEntidades.put(ASSOCIACAO_USUARIO_RECEPTOR, 
        		new StringBuffer ("	LEFT JOIN TbUsuario usuarioReceptor			ON usuarioReceptor.idUsuario			= tra.idUsuarioReceptor " +
        						  "	LEFT JOIN TbUnidade unidadeUsuarioReceptor	ON unidadeUsuarioReceptor.idUnidade 	= usuarioReceptor.idUnidade " ));
        mapaUsoEntidades.put(ASSOCIACAO_USUARIO_RECEPTOR,  false);
    	
        mapaEntidades.put(ASSOCIACAO_USUARIO_EMISSOR, 
        		new StringBuffer ("	LEFT JOIN TbUsuario usuarioEmissor			ON usuarioEmissor.idUsuario				= tra.idUsuarioEmissor " +
        						  "	LEFT JOIN TbUnidade unidadeUsuarioEmissor	ON unidadeUsuarioEmissor.idUnidade 		= usuarioEmissor.idUnidade " ));
        mapaUsoEntidades.put(ASSOCIACAO_USUARIO_EMISSOR,  false);
    	
        mapaEntidades.put(ASSOCIACAO_ULTIMO_TRAMITE, 
        		new StringBuffer ("	LEFT JOIN  ( "
							    	+ "		SELECT ulTrm.* "
							    	+ "		FROM TbTramite ulTrm "
							    	+ "			INNER JOIN TbEncaminhamento 	ulTrm_Enc 	ON ulTrm_Enc.idEncaminhamento 		= ulTrm.idEncaminhamento "
							    	+ "			INNER JOIN tbManifestacao 		ulTrm_Man 	ON ulTrm_Man.idManifestacao		 	= ulTrm_Enc.idManifestacao "
							    	+ "		WHERE "
							    	+ " 	ORDER BY ulTrm.idTramite DESC LIMIT 1) ultimoTramite "
							    	+ "	ON 	ultimoTramite.idEncaminhamento	= en.idEncaminhamento " ));
        mapaUsoEntidades.put(ASSOCIACAO_ULTIMO_TRAMITE,  false);
			

    }

    /**
     * Recupera o SQL para complementar a associação de entidades
     * @return
     */
    private String recuperaComplementoAssociacaoEntidades(){
    	String sqlAssociacao = "";

    	sqlAssociacao += mapaUsoEntidades.get(ASSOCIACAO_ENCAMINHAMENTOS) ? mapaEntidades.get(ASSOCIACAO_ENCAMINHAMENTOS) : "";
    	sqlAssociacao += mapaUsoEntidades.get(ASSOCIACAO_UNIDADE_RECEBEU) ? mapaEntidades.get(ASSOCIACAO_UNIDADE_RECEBEU) : "";
    	sqlAssociacao += mapaUsoEntidades.get(ASSOCIACAO_UNIDADE_ENVIOU) ? mapaEntidades.get(ASSOCIACAO_UNIDADE_ENVIOU) : "";
    	sqlAssociacao += mapaUsoEntidades.get(ASSOCIACAO_TRAMITE) ? mapaEntidades.get(ASSOCIACAO_TRAMITE) : "";
    	sqlAssociacao += mapaUsoEntidades.get(ASSOCIACAO_USUARIO_RECEPTOR) ? mapaEntidades.get(ASSOCIACAO_USUARIO_RECEPTOR) : "";
    	sqlAssociacao += mapaUsoEntidades.get(ASSOCIACAO_USUARIO_EMISSOR) ? mapaEntidades.get(ASSOCIACAO_USUARIO_EMISSOR) : "";
    	sqlAssociacao += mapaUsoEntidades.get(ASSOCIACAO_ULTIMO_TRAMITE) ? mapaEntidades.get(ASSOCIACAO_ULTIMO_TRAMITE) : "";
    	
    	return sqlAssociacao;
    }
    
    /**
     * Configura a mapa de utilização de associações de entidades 
     * @param associacaoEntidade
     */
    private void configuraComplementoAssociacaoEntidade(String associacaoEntidade){
    	if (associacaoEntidade.equals(ASSOCIACAO_ENCAMINHAMENTOS))
    		mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, true);
    	
    	else if (associacaoEntidade.equals(ASSOCIACAO_UNIDADE_RECEBEU)){
       		mapaUsoEntidades.put(ASSOCIACAO_UNIDADE_RECEBEU, true);
       		mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, true);
    	}else if (associacaoEntidade.equals(ASSOCIACAO_UNIDADE_ENVIOU)){
    		mapaUsoEntidades.put(ASSOCIACAO_UNIDADE_ENVIOU, true);
    		mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, true);
    	}else if (associacaoEntidade.equals(ASSOCIACAO_TRAMITE)){
    		mapaUsoEntidades.put(ASSOCIACAO_TRAMITE, true);
    		mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, true);

    	}else if (associacaoEntidade.equals(ASSOCIACAO_USUARIO_RECEPTOR)){
    		mapaUsoEntidades.put(ASSOCIACAO_USUARIO_RECEPTOR, true);
    		mapaUsoEntidades.put(ASSOCIACAO_TRAMITE, true);
    		mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, true);
    	}else if (associacaoEntidade.equals(ASSOCIACAO_USUARIO_EMISSOR)){
    		mapaUsoEntidades.put(ASSOCIACAO_USUARIO_EMISSOR, true);
    		mapaUsoEntidades.put(ASSOCIACAO_TRAMITE, true);
    		mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, true);
    	}
    	else if (associacaoEntidade.equals(ASSOCIACAO_ULTIMO_TRAMITE)){
    		mapaUsoEntidades.put(ASSOCIACAO_ULTIMO_TRAMITE, true);
    		mapaUsoEntidades.put(ASSOCIACAO_ENCAMINHAMENTOS, true);
    	}
    }
    
    @Override
    public String getNomeEntidade() {
        return "Manifestação";
    }

	/**
	 * Recupera as manifestações conforme os dados do DTO de pesquisa 'DTOPesquisaManifestacao' e dos filtros personalizados
	 * 
	 * @param filtroManifestacao
	 * @param filtrosPersonalizados
	 * @return
	 */
    public List<TbManifestacao> getManifestacoes(DTOPesquisaManifestacao filtroManifestacao, boolean filtraOcultas, FiltroPersonalizado... filtrosPersonalizados) {
        try {
            // Criando Query para filtro
            CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
            CriteriaQuery<TbManifestacao> query = cb.createQuery(TbManifestacao.class);
            Root<TbManifestacao> m = query.from(TbManifestacao.class);
            query.select(m);
            query.distinct(true);
//            query.orderBy(cb.desc(m.get(TbManifestacao_.nrManifestacao)));

            List<Predicate> restricoesLista = new ArrayList<>();
            for (FiltroPersonalizado filtro : filtrosPersonalizados) {
            	// TODO Delegar para a implementação de ManifestacaoDAO a recuperação de filtros com JPAModel
                Predicate[] predicates = manifestacaoDAO.getFiltros(cb, m, filtro);
                if (predicates.length > 0) {
                    if ("or".equals(filtro.getMetodoBusca())) {
                        restricoesLista.add(cb.or(predicates));
                    } else if ("not".equals(filtro.getMetodoBusca())) {
                    	for (Predicate predicate : predicates) {
							restricoesLista.add(predicate.not());
						}
                    } else {
                        restricoesLista.add(cb.and(predicates));
                    }
                }
            }
            //Acrescenta filtro de manifestações ocultas 
            if (filtraOcultas){
                restricoesLista.add(cb.equal(m.get(TbManifestacao_.stStatusOcultacao), BooleanEnum.SIM.getId()));
            }

            query.where(restricoesLista.toArray(new Predicate[restricoesLista.size()]));
            
        	// Carrega a quantidade de registros da pesquisa no DTO informado
            CriteriaQuery<Long> queryCount = cb.createQuery(Long.class);

            Root<TbManifestacao> root = queryCount.from(TbManifestacao.class);
            Expression<Long> expression = cb.countDistinct(root.get("idManifestacao"));
            queryCount.select(expression);
            List<Predicate> restricoesListaCount = new ArrayList<>();
            for (FiltroPersonalizado filtro : filtrosPersonalizados) {
            	// TODO Delegar para a implementação de ManifestacaoDAO a recuperação de filtros com JPAModel
                Predicate[] predicates = manifestacaoDAO.getFiltros(cb, root, filtro);
                if (predicates.length > 0) {
                    if ("or".equals(filtro.getMetodoBusca())) {
                    	restricoesListaCount.add(cb.or(predicates));
                    } else if ("not".equals(filtro.getMetodoBusca())) {
                    	for (Predicate predicate : predicates) {
                    		restricoesListaCount.add(predicate.not());
						}
                    } else {
                    	restricoesListaCount.add(cb.and(predicates));
                    }
                }
            }
            if (filtraOcultas){
            	restricoesListaCount.add(cb.equal(root.get(TbManifestacao_.stStatusOcultacao), BooleanEnum.SIM.getId()));
            }
            queryCount.where(restricoesListaCount.toArray(new Predicate[restricoesListaCount.size()]));
        	filtroManifestacao.setRowCount(getEntityManager().createQuery(queryCount).getSingleResult().intValue());

        	
        	// Configura parâmetros da ordenação
        	if (filtroManifestacao.getOrdenacaoCampo() != null){
        		if (filtroManifestacao.getOrdenacaoCampo().equals("nrManifestacao")){
        			if (filtroManifestacao.getOrdenacaoForma().equals("DESC"))
        				query.orderBy(cb.desc(m.get(TbManifestacao_.nrManifestacao)));
        			else if (filtroManifestacao.getOrdenacaoForma().equals("ASC"))
        				query.orderBy(cb.asc(m.get(TbManifestacao_.nrManifestacao)));
        		}
        		if (filtroManifestacao.getOrdenacaoCampo().equals("dtUltimaAtualizacao")){
        			if (filtroManifestacao.getOrdenacaoForma().equals("DESC"))
        				query.orderBy(cb.desc(m.get(TbManifestacao_.dtUltimaAtualizacao)));
        			else if (filtroManifestacao.getOrdenacaoForma().equals("ASC"))
        				query.orderBy(cb.asc(m.get(TbManifestacao_.dtUltimaAtualizacao)));
        		}
        		if (filtroManifestacao.getOrdenacaoCampo().equals("nomePessoa")){
        			if (filtroManifestacao.getOrdenacaoForma().equals("DESC"))
        				query.orderBy(cb.desc(m.get(TbManifestacao_.nmPessoa)));
        			else if (filtroManifestacao.getOrdenacaoForma().equals("ASC"))
        				query.orderBy(cb.asc(m.get(TbManifestacao_.nmPessoa)));
        		}
        		
        	}

            
            // Retorna as manifestações encontradas
            TypedQuery<TbManifestacao> selectQuery = getEntityManager().createQuery(query);
            
            // Define posições na paginação da pesquisa
            selectQuery.setFirstResult(filtroManifestacao.getPrimeiroRegistro());
            selectQuery.setMaxResults(filtroManifestacao.getQuantidadeRegistros());
            
            return selectQuery.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    
    
    @SuppressWarnings("unchecked")
    public void pesquisaManifestacoes(DTOPesquisaManifestacao filtroManifestacao, TbUsuario usuario){

    	StringBuffer camposQuery = new StringBuffer(
	    	" SELECT  " + 
	    	"  m.nrManifestacao" + // 			as nrManifestacao" + 
	    	", m.idManifestacao" + // 			as idManifestacao" + 
	    	", m.dtCadastro" + // 				as dtCadastro" + 
	    	", m.dtUltimaAtualizacao" + // 		as dtUltimaAtualizacao" + 
	    	", m.nmPessoa" + // 					as nomeManifestante" +
//	    	+ "-- Deve ser exibido apenas se manifestação não for sigilosa ou se o usuário tem o papel para visualizar dados sigilosos " + 
//	    	", m.nmPessoa" + // 					as nomePessoa" +
//	    	+ "-- Deve ser exibido apenas se manifestação não for sigilosa ou se o usuário tem o papel para visualizar dados sigilosos " + 
	    	", tp.idTipoManifestacao" + // 		as idTipoManifestacao" + 
	    	", tp.nmTipoManifestacao" + // 		as nomeTipoManifestacao" + 
//	    	"-- 	 as ddPrioridade, -- ?talvez seja o idPrioridade " + 
	    	", pr.nmPrioridade" + // 				as nomePrioridade" +
//	    	+ "-- Não deve ser exibido para o interlocutor " + 
	    	", m.stStatusManifestacao" + // 		as idStatusManifestacao" + 
	    	", m.siSigilo" + // 					as sigilo" +
//	    	+ "--Define se a manifestação é sigilosa " + 
	    	", m.stStatusOcultacao" + // 			as oculta" + 
	    	", m.dsTextoManifestacao" + // 		as dsTextoManifestacao" + 
	    	", m.dsMotivoOcultacao" + // 			as motivoOcultacao" + 
	
	    	
	    	", tp.prazoEntrada" + // 				as prazoEncaminhamento" + 
	    	", tp.prazoAreaSolucionadora" + // 	as prazoRespostaAOuvidoria" + 
	    	", tp.prazoRespostaCidadao" ); // 		as prazoRespostaAoManifestante" ); 
    	

    	StringBuffer fonteDadosQuery = new StringBuffer(
    		" FROM tbManifestacao m " + 
//	    	"	INNER JOIN vwUltimoTramite ut 			ON ut.idManifestacao 			= m.idManifestacao  " + 
	    	"	INNER JOIN tbTipoManifestacao tp			ON tp.idTipoManifestacao 		= m.idTipoManifestacao " + 
	    	"	INNER JOIN TbPrioridade pr				ON pr.idPrioridade 				= m.idPrioridade " );
    	

    	StringBuffer filtroQuery = new StringBuffer("");
		boolean filtraOcultas = filtroManifestacao.getFiltroPesquisa().isOculta();
    	FuncaoUsuarioEnum funcao = EnumHelper.getFuncaoUsuarioEnum(usuario.getTpFuncao());
    	if (funcao == FuncaoUsuarioEnum.ADMINISTRADOR && filtraOcultas){//Filtra ocultas apenas para o Administrador
    		filtroQuery.append(" WHERE m.stStatusOcultacao = " + BooleanEnum.SIM.getId());
    	}else {
    		/*
    		filtroQuery.append("( m.stStatusOcultacao = " + BooleanEnum.NAO.getId());
    		filtroQuery.append(" or m.stStatusOcultacao = " + BooleanEnum.SIM.getId());
    		filtroQuery.append(" or m.stStatusOcultacao IS NULL ) " );
    		*/
    	}

    	// Configura os filtros de pesquisa conforme o cenário de pesquisa
    	//configuraFiltroPesquisa(filtroManifestacao, filtroQuery, usuario);
		if (filtroManifestacao.isCenarioPesquisaCaixaEntrada())
			configuraFiltroCaixaEntrada(filtroQuery, usuario);
		else if (filtroManifestacao.isCenarioPesquisaSolicitadaInformacao())
			configuraFiltroSolicitadaInformacao(filtroQuery);
		else if (filtroManifestacao.isCenarioPesquisaEmMonitoramento())
			configuraFiltroEmMonitoramento(filtroQuery);
		else if (filtroManifestacao.isCenarioPesquisaDevolvidas())
			configuraFiltroDevolvidas(filtroQuery, usuario);

		//TODO Desenvolver a pesquisa de manifestações pelo filtro informado

		// Carrega os complementos das associações de entidades requeridas
    	fonteDadosQuery.append( recuperaComplementoAssociacaoEntidades() );

    	
    	StringBuffer ordenacaoQuery = new StringBuffer();
    	
    	String campoOrdenacao = filtroManifestacao.getOrdenacaoCampo();
    	String formaOrdenacao = filtroManifestacao.getOrdenacaoForma();
    	if (!StringUtils.isEmpty(campoOrdenacao) && !StringUtils.isEmpty(formaOrdenacao)){
    		ordenacaoQuery.append(" ORDER BY " + campoOrdenacao + " " + formaOrdenacao);
    	}

    	
    	

    	// Carrega a quantidade de registros da pesquisa no DTO informado
    	StringBuffer queryCount = new StringBuffer("SELECT count(m.nrManifestacao) ");
    	queryCount.append(fonteDadosQuery);
    	//Acrescenta clásula WHERE quando tem filtros informados
    	queryCount.append(filtroQuery);
    	Query selectQueryCount = getEntityManager().createNativeQuery(queryCount.toString());
    	filtroManifestacao.setRowCount(Integer.parseInt("" + selectQueryCount.getSingleResult()));

    	// Realiza a pesquisa 
    	StringBuffer query = new StringBuffer(camposQuery);
    	query.append(fonteDadosQuery);
    	//Acrescenta clásula WHERE quando tem filtros informados
    	query.append(filtroQuery);
    	query.append(ordenacaoQuery);
    	Query selectQuery = getEntityManager().createNativeQuery(query.toString());
    	
    	// Define posições na paginação da pesquisa
        selectQuery.setFirstResult(filtroManifestacao.getPrimeiroRegistro());
        selectQuery.setMaxResults(filtroManifestacao.getQuantidadeRegistros());
        
        // Executa a pesquisa e transforma os objetos em um bean do DTO informado
        List<Object[]> resultList = selectQuery.getResultList();
//      ResultTransformer resultTransformer  = Transformers.aliasToBean(filtroManifestacao.getClassResultado());
//      List<DTOManifestacao> retorno = resultTransformer.transformList(resultList);
        
        List<DTOManifestacao> retorno = new ArrayList<DTOManifestacao>();
        for (Object[] obj : resultList) {
        	DTOManifestacao dto = new DTOManifestacao();
        	dto.setNrManifestacao((Integer) obj[0]);
        	dto.setIdManifestacao((Integer) obj[1]);
        	dto.setDtCadastro(new Date( ((Timestamp) obj[2]).getTime() ));
        	dto.setDtUltimaAtualizacao(new Date( ((Timestamp) obj[3]).getTime() ));
        	dto.setNomeManifestante((String) obj[4]);
        	dto.setNomePessoa((String) obj[4]);
        	
        	dto.setIdTipoManifestacao((Integer) obj[5]);
        	dto.setNomeTipoManifestacao((String) obj[6]);
        	dto.setNomePrioridade((String) obj[7]);
        	dto.setIdStatusManifestacao( ((Character) obj[8]).toString());
        	//TODO  Verificar se os valores booleanos estão recuperados corretamente
        	dto.setSigilo(Boolean.valueOf( ((Character) obj[9]).toString()) );
        	dto.setOculta( ((Character) obj[10]).toString().equals("1") ) ;
        	//TODO Recuperar o texto adequadamente
        	dto.setDsTextoManifestacao( ( (Clob) obj[11]).toString());
        	dto.setMotivoOcultacao((String) obj[12]);
        	
        	dto.setPrazoEncaminhamento((Integer) obj[13]);
        	dto.setPrazoRespostaAOuvidoria((Integer) obj[14]);
        	dto.setPrazoRespostaAoManifestante((Integer) obj[15]);

        	retorno.add(dto);
		}
        
        // Carrega o resultado da pesquisa no DTO informado 
        filtroManifestacao.setResultado(retorno);
        

    }

	private void configuraFiltroDevolvidas(StringBuffer filtroQuery,
			TbUsuario usuario) {
		// TODO Auto-generated method stub
		filtroQuery.append(filtroQuery.length() > "WHERE ".length() ? " and " : " WHERE ");
		filtroQuery.append(" m.stStatusManifestacao = " + 
				StatusManifestacaoEnum.EM_ANDAMENTO.getId());
		filtroQuery.append(" and en.stEncaminhamento 				= " + StatusEncaminhamentoEnum.ENCAMINHADA.getId());
		filtroQuery.append(" and unidadeRecebeu.idUnidade 			= " + usuario.getIdUnidade().getIdUnidade());
		filtroQuery.append(" and tra.idUsuarioReceptor				= " + usuario.getIdUnidade().getIdUnidade());
		filtroQuery.append(" and tra.stRetornada	 				= " + BooleanEnum.NAO.getId());

		configuraComplementoAssociacaoEntidade(ASSOCIACAO_ENCAMINHAMENTOS);
		configuraComplementoAssociacaoEntidade(ASSOCIACAO_UNIDADE_RECEBEU);
		configuraComplementoAssociacaoEntidade(ASSOCIACAO_TRAMITE);
		
	}

	private void configuraFiltroEmMonitoramento(StringBuffer filtroQuery) {
		filtroQuery.append(filtroQuery.length() > "WHERE ".length() ? " and " : " WHERE ");
		filtroQuery.append(" m.stStatusManifestacao = " + 
				StatusManifestacaoEnum.EM_MONITORAMENTO.getId());
		
	}

	private void configuraFiltroSolicitadaInformacao(StringBuffer filtroQuery) {
		filtroQuery.append(filtroQuery.length() > "WHERE ".length() ? " and " : " WHERE ");
		filtroQuery.append(" m.stStatusManifestacao = " + 
				StatusManifestacaoEnum.SOLICITADA_INFORMACAO.getId());
		
	}

	/**
     * Configura os filtros para carregar a Caixa de Entrada
     * 
     * @param filtroQuery
     * @param usuario
     */
	private void configuraFiltroCaixaEntrada(StringBuffer filtroQuery, TbUsuario usuario) {
		// TODO Auto-generated method stub
        if(usuario != null) {
        	// Recupera a Função do usuário
        	FuncaoUsuarioEnum funcao = EnumHelper.getFuncaoUsuarioEnum(usuario.getTpFuncao());
        	
        	switch (funcao) {
        	case OPERADOR:
        		filtroQuery.append(filtroQuery.length() > "WHERE ".length() ? " and " : " WHERE ");
        		filtroQuery.append(" m.stStatusManifestacao				= " + StatusManifestacaoEnum.EM_ANDAMENTO.getId());
        		filtroQuery.append(" and en.stEncaminhamento 				= " + StatusEncaminhamentoEnum.ENCAMINHADA.getId());
        		filtroQuery.append(" and unidadeRecebeu.idUnidade 			= " + usuario.getIdUnidade().getIdUnidade());
        		filtroQuery.append(" and tra.idUsuarioReceptor				= " + usuario.getIdUnidade().getIdUnidade());
        		filtroQuery.append(" and tra.stRetornada	 				= " + BooleanEnum.NAO.getId());
        		
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_ENCAMINHAMENTOS);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_UNIDADE_RECEBEU);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_TRAMITE);
        		break;
        		
        	case INTERLOCUTOR:
        		filtroQuery.append(filtroQuery.length() > "WHERE ".length() ? " and " : " WHERE ");
        		filtroQuery.append(" m.stStatusManifestacao 				= " + StatusManifestacaoEnum.EM_ANDAMENTO.getId());
        		filtroQuery.append(" and en.stEncaminhamento 				= " + StatusEncaminhamentoEnum.ENCAMINHADA.getId());

        		filtroQuery.append(" and unidadeEnviou.idUnidade 			<> " + usuario.getIdUnidade().getIdUnidade());

        		filtroQuery.append(" and unidadeRecebeu.idUnidade 			<> " + usuario.getIdUnidade().getIdUnidade());
        		
        		filtroQuery.append(" and unidadeUsuarioEmissor.idUnidade 	<> " + UnidadeEnum.OUVIDORIA.getId());
        		filtroQuery.append(" and ultimoTramite.idUnidadeEnvio 		<> " + usuario.getIdUnidade().getIdUnidade());
        		
        		filtroQuery.append(" and usuarioReceptor. tpFuncao 			<> " +FuncaoUsuarioEnum.OPERADOR.getId());
        		filtroQuery.append(" and tra.stRetornada	 				<> " + BooleanEnum.NAO.getId());
        		
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_ENCAMINHAMENTOS);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_UNIDADE_ENVIOU);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_UNIDADE_RECEBEU);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_USUARIO_EMISSOR);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_TRAMITE);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_USUARIO_RECEPTOR);
        		configuraComplementoAssociacaoEntidade(ASSOCIACAO_ULTIMO_TRAMITE);

        		break;
        		
        	case MANIFESTANTE:
        		filtroQuery.append(filtroQuery.length() > "WHERE ".length() ? " and " : " WHERE ");
        		filtroQuery.append(" m.idUsuarioManifestante 	= " + usuario.getIdUnidade().getIdUnidade());
        		break;
        		
        	case ADMINISTRADOR:
        	case OUVIDOR:
        		filtroQuery.append(filtroQuery.length() > "WHERE ".length() ? " and " : " WHERE ");
        		filtroQuery.append(" m.stStatusManifestacao 		in (" + 
        				StatusManifestacaoEnum.NOVA.getId() + ", " +
        				StatusManifestacaoEnum.EM_ANALISE.getId() + ", " +
        				StatusManifestacaoEnum.SOLICITACAO_RESPONDIDA.getId() + ") ");
        		break;
        	}
        	
        }

	}

	/**
     * Oculta uma manifestação representada pelo atributo da classe DTOManifestacao.
     * 
     * 
     * @param manifestacaoSelecionada
     */
	public void ocultar(DTOManifestacao manifestacaoSelecionada) {
		// TODO Recuperar a manifestação
		// TODO Configurar o texto do motivo da ocultação
		// TODO Configurar a propriedade StStatusOcultacao da manifestação para SIM
		// TODO Atualizar a manifestação informada
		// TODO ver modelo em MBListarManifestacoes.hideManifestation() e no componente confirmDialog id="dialogoExcluir" do arquivo listarmanifestacoes.xhtml 
		
	}    
	
	
    /**
     * Oculta uma manifestação representada pelo atributo da classe DTOManifestacao.
     * 
     * 
     * @param manifestacaoSelecionada
     */
	public void desocultar(DTOManifestacao manifestacaoSelecionada) {
		// TODO Recuperar a manifestação
		// TODO Limpar o texto do motivo da ocultação
		// TODO Configurar a propriedade StStatusOcultacao da manifestação PARA NÃO
		// TODO Atualizar a manifestação informada
		// TODO ver modelo em MBListarManifestacoes.showManifestation() e no componente onfirmDialog id="dialogoMostrar" do arquivo listarmanifestacoes.xhtml 
		
	}    

}
