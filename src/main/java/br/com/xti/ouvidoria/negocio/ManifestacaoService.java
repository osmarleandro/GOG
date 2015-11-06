package br.com.xti.ouvidoria.negocio;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.TreeSet;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.inject.Inject;

import org.apache.commons.lang.StringUtils;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.Days;
import org.joda.time.LocalDate;

import br.com.xti.ouvidoria.controller.PesquisaManifestacaoViewHelper;
import br.com.xti.ouvidoria.dao.ComunicacaoExternaDAO;
import br.com.xti.ouvidoria.dao.EncaminhamentoDAO;
import br.com.xti.ouvidoria.dao.ManifestacaoDAO;
import br.com.xti.ouvidoria.dao.ManifestacaoDTODAO;
import br.com.xti.ouvidoria.dao.UsuarioDAO;
import br.com.xti.ouvidoria.dao.VwUltimoTramiteDAO;
import br.com.xti.ouvidoria.dto.manifestacao.DTOManifestacao;
import br.com.xti.ouvidoria.filtropersonalizado.FiltroPersonalizado;
import br.com.xti.ouvidoria.helper.DataHelper;
import br.com.xti.ouvidoria.helper.FiltroHelper;
import br.com.xti.ouvidoria.helper.ValidacaoHelper;
import br.com.xti.ouvidoria.model.TbComunicacaoExterna;
import br.com.xti.ouvidoria.model.TbEncaminhamento;
import br.com.xti.ouvidoria.model.TbManifestacao;
import br.com.xti.ouvidoria.model.TbTramite;
import br.com.xti.ouvidoria.model.TbUnidade;
import br.com.xti.ouvidoria.model.TbUsuario;
import br.com.xti.ouvidoria.model.enums.AtrasoManifestacaoEnum;
import br.com.xti.ouvidoria.model.enums.BooleanEnum;
import br.com.xti.ouvidoria.model.enums.FuncaoUsuarioEnum;
import br.com.xti.ouvidoria.model.enums.StatusEncaminhamentoEnum;
import br.com.xti.ouvidoria.model.enums.StatusManifestacaoEnum;
import br.com.xti.ouvidoria.model.enums.UnidadeEnum;
import br.com.xti.ouvidoria.security.SecurityService;

import com.thoughtworks.xstream.XStream;

/**
 * @author Clelson
 */
@Stateless
public class ManifestacaoService {

	@Inject
	private SecurityService securityService;

    @EJB
    private ManifestacaoDTODAO manifestacaoDTODAO;
    @EJB
    private ManifestacaoDAO manifestacaoDAO;
    @EJB
    private EncaminhamentoDAO encaminhamentoDAO;
    @EJB
    private ComunicacaoExternaDAO comunicacaoExternaDAO;
    @EJB
    private UsuarioDAO usuarioDAO;
    
    
    @EJB
    private VwUltimoTramiteDAO vwUltimoTramiteDAO;

    public ManifestacaoService() {
    
    }

    
    /**
     * Oculta uma manifestação representada pelo atributo da classe DTOManifestacao.
     * 
     * 
     * @param manifestacaoSelecionada
     */
	public void ocultar(DTOManifestacao manifestacaoSelecionada) throws Exception{
		manifestacaoDTODAO.ocultar(manifestacaoSelecionada);
		
	}    
	
	
    /**
     * Desoculta uma manifestação representada pelo atributo da classe DTOManifestacao.
     * 
     * 
     * @param manifestacaoSelecionada
     */
	public void desocultar(DTOManifestacao manifestacaoSelecionada) throws Exception{
		manifestacaoDTODAO.desocultar(manifestacaoSelecionada);
		
	}    
 
    
    /**
     * Transforma uma lista de TbManifestacao em uma lista de DTOPesquisaManifestacao
     * 
     * @param filtroManifestacao
     * @param list
     */
    private void transformarListaDTOManifestacao(
    		PesquisaManifestacaoViewHelper filtroManifestacao,
    		List<TbManifestacao> list) {
    	List<DTOManifestacao> retorno = new ArrayList<DTOManifestacao>();
    	for (TbManifestacao manifestacao : list) {
    		DTOManifestacao dto = new DTOManifestacao();
    		dto.setNumeroManifestacao(manifestacao.getNrManifestacao());
    		dto.setIdManifestacao(manifestacao.getIdManifestacao());
    		dto.setDataCadastro(manifestacao.getDtCadastro());
    		dto.setDataUltimaAtualizacao(manifestacao.getDtUltimaAtualizacao());
    		dto.setNomeManifestante(manifestacao.getNmPessoa());
    		dto.setNomePessoa(manifestacao.getNmPessoa());
    		
    		dto.setIdTipoManifestacao(manifestacao.getIdTipoManifestacao().getIdTipoManifestacao());
    		dto.setNomeTipoManifestacao(manifestacao.getIdTipoManifestacao().getNmTipoManifestacao());
    		dto.setNomePrioridade(manifestacao.getIdPrioridade().getNmPrioridade());
    		dto.setIdStatusManifestacao( manifestacao.getStStatusManifestacao());
    		//TODO  Verificar se os valores booleanos estão recuperados corretamente
    		dto.setSigilo(Boolean.valueOf(manifestacao.getSiSigilo()));
    		dto.setOculta(Boolean.valueOf( manifestacao.getStStatusOcultacao() ) );
    		//TODO Recuperar o texto adequadamente
    		dto.setTextoManifestacao( manifestacao.getDsTextoManifestacao() );
    		dto.setMotivoOcultacao(manifestacao.getDsMotivoOcultacao());
    		
    		dto.setPrazoEncaminhamento(manifestacao.getIdTipoManifestacao().getPrazoEntrada());
    		dto.setPrazoRespostaAOuvidoria(manifestacao.getIdTipoManifestacao().getPrazoAreaSolucionadora());
    		dto.setPrazoRespostaAoManifestante(manifestacao.getIdTipoManifestacao().getPrazoRespostaCidadao());
    		
    		dto.setDataMonitoramento(manifestacao.getDataMonitoramento());
    		
    		retorno.add(dto);
    	}
    	
    	// Carrega o resultado da pesquisa no DTO informado 
    	filtroManifestacao.setResultado(retorno);
    }
    

	private void pesquisaManifestacoesFiltroPersonalizado(PesquisaManifestacaoViewHelper filtroManifestacao) {
		boolean filtraOcultas = filtroManifestacao.getFiltroPesquisa().isOculta();

        FiltroPersonalizado filtroPadrao = new FiltroPersonalizado();
		
		FuncaoUsuarioEnum funcao = securityService.getUserProfile();
		if(!(funcao == FuncaoUsuarioEnum.ADMINISTRADOR || funcao == FuncaoUsuarioEnum.OUVIDOR)) {
			filtroPadrao.setMetodoBusca("and");
			filtroPadrao.addManIdStatus(StatusManifestacaoEnum.EM_ANDAMENTO.getId());
			filtroPadrao.addEncIdUnidadeRecebeu(securityService.getUser().getIdUnidade().getIdUnidade());
		}
    	
        XStream xs = new XStream();
        FiltroPersonalizado filtroAtual = (FiltroPersonalizado) xs.fromXML(filtroManifestacao.getFiltroEscolhido().getDsParticao());

    	List<TbManifestacao> list = manifestacaoDTODAO.getManifestacoes(filtroManifestacao, filtraOcultas, filtroPadrao, filtroAtual);

        transformarListaDTOManifestacao(filtroManifestacao, list);
        complementaDadosManifestacao(filtroManifestacao);

    }

    
    @SuppressWarnings("unchecked")
    public void pesquisaManifestacoes(PesquisaManifestacaoViewHelper filtroManifestacao){
    	TbUsuario usuario = usuarioDAO.find(securityService.getUser().getIdUsuario());
    	
    	if (verificaCenarioPesquisaComDTO(filtroManifestacao)){
    		//TODO Considerar o cenário para a pesquisa
    		manifestacaoDTODAO.pesquisaManifestacoes(filtroManifestacao, usuario);
    		complementaDadosManifestacao(filtroManifestacao);
    	}else if(filtroManifestacao.isCenarioPesquisaEmAndamento()){
    		pesquisarEmAndamento(filtroManifestacao);
    	}else if(filtroManifestacao.isCenarioPesquisaRetornadas()){
    		pesquisarRetornadas(filtroManifestacao);
    	}else if(filtroManifestacao.isCenarioPesquisaSolucionadas()){
    		pesquisarSolucionadas(filtroManifestacao);
    	}else if(filtroManifestacao.isCenarioPesquisaComOuvidoria()){
    		pesquisarComOuvidoria(filtroManifestacao);
    	}else if(filtroManifestacao.isCenarioPesquisaFiltroPersonalizado()){
    		pesquisaManifestacoesFiltroPersonalizado(filtroManifestacao);
    	}else{
    		
    	}
    	
    	

    }
    

       
    /**
     * Verifica se o cenário de pesquisa está desenvolvido para pesquisar com utilização do DTO
     * 
     * @param filtroManifestacao
     * @return
     */
    private boolean verificaCenarioPesquisaComDTO(
			PesquisaManifestacaoViewHelper filtroManifestacao) {
    	// Utilizar os cenários de pesquisa que foram tratados no ManifestacaoDTODAO
		return 	filtroManifestacao.isCenarioPesquisaTodos() ||
				filtroManifestacao.isCenarioPesquisaCaixaEntrada() ||
				filtroManifestacao.isCenarioPesquisaEmMonitoramento() ||
				filtroManifestacao.isCenarioPesquisaDevolvidas() ||
				filtroManifestacao.isCenarioPesquisaSolicitadaInformacao();
	}


	private void pesquisarComOuvidoria(PesquisaManifestacaoViewHelper filtroManifestacao)  {
		boolean filtraOcultas = filtroManifestacao.getFiltroPesquisa().isOculta();
		
		//TODO Verificar se há a necessidade de alterar a utilização do manifestacaoDAO com a estrutura de filtros
    	FiltroPersonalizado filtro = new FiltroPersonalizado();
    	filtro.setMetodoBusca("and");
    	filtro.addManIdStatus(StatusManifestacaoEnum.EM_ANDAMENTO.getId());
        filtro.setEncStatus(StatusEncaminhamentoEnum.RETORNADA.getId());
        filtro.addEncIdUnidadeRecebeu(securityService.getUser().getIdUnidade().getIdUnidade());
    	
    	List<TbManifestacao> list = manifestacaoDTODAO.getManifestacoes(filtroManifestacao, filtraOcultas, filtro);
        
        transformarListaDTOManifestacao(filtroManifestacao, list);
        complementaDadosManifestacao(filtroManifestacao);
    }


    private void pesquisarSolucionadas(PesquisaManifestacaoViewHelper filtroManifestacao)  {
		boolean filtraOcultas = filtroManifestacao.getFiltroPesquisa().isOculta();

		//TODO Verificar se há a necessidade de alterar a utilização do manifestacaoDAO com a estrutura de filtros
        FiltroPersonalizado filtro = new FiltroPersonalizado();
        switch (securityService.getUserProfile()) {
        	case OPERADOR:
        		filtro.addEncIdOperador(securityService.getUser().getIdUsuario());
	        case INTERLOCUTOR:
	            filtro.addEncIdUnidadeRecebeu(securityService.getUser().getIdUnidade().getIdUnidade());
			case ADMINISTRADOR:
			case OUVIDOR:
				filtro.addManIdStatus(StatusManifestacaoEnum.SOLUCIONADA.getId());
				break;
			default: break;
		}

        List<TbManifestacao> list = manifestacaoDTODAO.getManifestacoes(filtroManifestacao, filtraOcultas, filtro);
        transformarListaDTOManifestacao(filtroManifestacao, list);
        complementaDadosManifestacao(filtroManifestacao);
    }
 
    
    private void pesquisarRetornadas(PesquisaManifestacaoViewHelper filtroManifestacao)  {
		boolean filtraOcultas = filtroManifestacao.getFiltroPesquisa().isOculta();

		//TODO Verificar se há a necessidade de alterar a utilização do manifestacaoDAO com a estrutura de filtros
        FiltroPersonalizado filtro = new FiltroPersonalizado();
        filtro.setMetodoBusca("and");
        
        if(securityService.isAdministrador() || securityService.isOuvidor()) {
        	filtro.addManIdStatus(StatusManifestacaoEnum.EM_ANDAMENTO.getId());
        	filtro.setEncStatus(StatusEncaminhamentoEnum.RETORNADA.getId());
        } else if(securityService.isInterlocutor()) {
        	filtro = FiltroHelper.getFiltrosPadrao(securityService.getUser());
        }
        
        List<TbManifestacao> list = manifestacaoDTODAO.getManifestacoes(filtroManifestacao, filtraOcultas, filtro);
        
        ajustarRetornadas(list);
        transformarListaDTOManifestacao(filtroManifestacao, list);
        complementaDadosManifestacao(filtroManifestacao);
    }
    
    private void ajustarRetornadas(List<TbManifestacao> list) {
    	switch (securityService.getUserProfile()) {
			case INTERLOCUTOR: // remover as manifestações que não foram retornadas pelo operador.
	        	TbUnidade unidadeInterlocutor = securityService.getUser().getIdUnidade();
	        	
	        	ListIterator<TbManifestacao> listIterator = list.listIterator();
	        	for( ; listIterator.hasNext() ; ) {
	        		enc: for (TbEncaminhamento e : listIterator.next().getTbEncaminhamentoCollection()) {
						if(e.getIdUnidadeRecebeu().equals(unidadeInterlocutor)) {
							boolean deletar = Boolean.TRUE;
							// Recupera o último trâmite da ouvidria para a área
							Date dtUltimoTramiteDaOuvidoria = null;
							ListIterator<TbTramite> listTramites = new ArrayList<TbTramite>(e.getTbTramiteCollection()).listIterator(e.getTbTramiteCollection().size());
							// Percorre a lista em ordem inversa para pegar o último trâmite da Ouvidoria
							for ( ; listTramites.hasPrevious() ; ) {
								TbTramite t = listTramites.previous();
								if(t.getIdUsuarioEmissor() != null && UnidadeEnum.OUVIDORIA.getId().equals(t.getIdUsuarioEmissor().getIdUnidade().getIdUnidade())) {
									dtUltimoTramiteDaOuvidoria = t.getDtTramite();
									break;
								}
							}
							
							if(dtUltimoTramiteDaOuvidoria == null) {
								dtUltimoTramiteDaOuvidoria = e.getDtEnvioTramite();
							}
							
							for (TbTramite t : e.getTbTramiteCollection()) {
								if(!(t.getIdUsuarioReceptor() != null && FuncaoUsuarioEnum.OPERADOR.getId().equals(t.getIdUsuarioReceptor().getTpFuncao()))) {
									continue;
								}
								
								if(BooleanEnum.NAO.getId().equals(t.getStRetornada()) && t.getDtTramite().compareTo(dtUltimoTramiteDaOuvidoria) >= 0) {
//								if(BooleanEnum.NAO.getId().equals(t.getStRetornada())) { //TODO
									listIterator.remove();
									break enc;
								} else {
									deletar = Boolean.FALSE;
								}
							}
							if(deletar)
								listIterator.remove();
						}
					}
	        	}
		        break;
			default:
				break;
		}
    }
  

    private void pesquisarEmAndamento(PesquisaManifestacaoViewHelper filtroManifestacao) {
		boolean filtraOcultas = filtroManifestacao.getFiltroPesquisa().isOculta();

		//TODO Verificar se há a necessidade de alterar a utilização do manifestacaoDAO com a estrutura de filtros
        FiltroPersonalizado filtro = new FiltroPersonalizado();
        filtro.setMetodoBusca("and");
        // -- ADMIN ou OUVIDOR
        if(securityService.isAdministrador() || securityService.isOuvidor()) {
	        filtro.setEncStatus(StatusEncaminhamentoEnum.ENCAMINHADA.getId());
	        filtro.addManIdStatus(StatusManifestacaoEnum.EM_ANDAMENTO.getId());
//	        filtro.addManIdStatus(StatusManifestacaoEnum.SOLICITADA_INFORMACAO.getId());
        } else if(securityService.isInterlocutor()) {
        	filtro = FiltroHelper.getFiltrosPadrao(securityService.getUser());
        }

        List<TbManifestacao> list = manifestacaoDTODAO.getManifestacoes(filtroManifestacao, filtraOcultas, filtro);
        if(securityService.isInterlocutor()) {
        	FiltroPersonalizado filtro2 = new FiltroPersonalizado();
        	filtro2.addManIdStatus(StatusManifestacaoEnum.EM_ANDAMENTO.getId());
        	filtro2.setEncStatus(StatusEncaminhamentoEnum.ENCAMINHADA.getId());
        	filtro2.addEncIdUnidadeEnviou(securityService.getUser().getIdUnidade().getIdUnidade());
        	list.addAll(manifestacaoDTODAO.getManifestacoes(filtroManifestacao, filtraOcultas, filtro2));
        }
        
        ajustarEmAndamento(list);
        transformarListaDTOManifestacao(filtroManifestacao, list);
        complementaDadosManifestacao(filtroManifestacao);
    }
    
    private void ajustarEmAndamento(List<TbManifestacao> list) {
    	switch (securityService.getUserProfile()) {
			case INTERLOCUTOR: // remover as manifestações que não foram encaminhadas para um operador.
	        	TbUnidade unidadeInterlocutor = securityService.getUser().getIdUnidade();
	        	
	        	ListIterator<TbManifestacao> listIterator = list.listIterator();
	        	for( ; listIterator.hasNext() ; ) {
	        		boolean deletarEnviou = Boolean.FALSE;
	        		boolean deletarRecebeu = Boolean.FALSE;
	        		enc: for (TbEncaminhamento e : listIterator.next().getTbEncaminhamentoCollection()) {
        				if(e.getIdUnidadeEnviou().equals(unidadeInterlocutor)) {
        					if(StatusEncaminhamentoEnum.RETORNADA.getId().equals(e.getStEncaminhamento())) {
        						deletarEnviou = Boolean.TRUE;
        					} else {
        						break enc;
        					}
        				} else if(e.getIdUnidadeRecebeu().equals(unidadeInterlocutor)) {
        					for (TbTramite t : e.getTbTramiteCollection()) {
        						if(t.getIdUsuarioReceptor() != null 
        								&& FuncaoUsuarioEnum.OPERADOR.getId().equals(t.getIdUsuarioReceptor().getTpFuncao())
        								&& BooleanEnum.NAO.getId().equals(t.getStRetornada())) {
        							break enc;
        						} else {
        							deletarRecebeu = Boolean.TRUE;
        						}
        					}
        				}
        				
        				if(deletarEnviou && deletarRecebeu) {
        					listIterator.remove();
        				}
					}
	        	}
		        break;
			default:
				break;
		}
    }

    
   
	/**
     * Complementa os dados da manifestação com atributos resultadas dos relacionamentos com demais entidades.
     * 
     * @param filtroManifestacao
     */
	private void complementaDadosManifestacao(
			PesquisaManifestacaoViewHelper filtroManifestacao) {
		List<DTOManifestacao> resultado = filtroManifestacao.getResultado();
        for (DTOManifestacao dtoManifestacao : resultado) {
        	//Recupera a lista de encaminhamentos da manifestação
        	Collection<TbEncaminhamento> listaEncaminhamentos = encaminhamentoDAO.getPorIdManifestacao(dtoManifestacao.getIdManifestacao());
        	dtoManifestacao.setEncaminhamentos(listaEncaminhamentos);
        	// Recupera o encaminhamento do usuário logado para a manifestação
        	recuperaEncaminhamentoDoUsuarioLogado(dtoManifestacao, listaEncaminhamentos);
        	//Recupera a lista de comunicações externas da manifestação
        	Collection<TbComunicacaoExterna> listaComunicacao = comunicacaoExternaDAO.getPorIdManifestacao(dtoManifestacao.getIdManifestacao());
        	dtoManifestacao.setComunicacaoExterna(listaComunicacao);

        	//TODO Recuperar o prazo para atendimento da manifestação: ver mBListarManifestacoes.getPrazoAtendimento(manifestacao)
        	//TODO Recuperar a data limite para atendimento do usuário logado: ver ManifestacaoUtils.getDataLimiteAtendimentoUnidadeUsuarioLogado
        	recuperaPrazoAtendimento(dtoManifestacao);

        	//TODO Definir o tipo de atraso em cada manifestação recuperada: ver MBListarManifestacoes.verificaAtraso
        	recuperaTipoAtraso(dtoManifestacao);
        	
        	//TODO Recuperar a lista com o nome dos operadores que atuaram na manifestação: ver MBListarManifestacoes.getNomeOperadoresComManifestacao
        	recuperaNomeOperadoresComManifestacao(dtoManifestacao);
        	
        	//TODO Recuperar a quantidade de dias em atraso da manifestação: ver MBListarManifestacoes.diasAtrasoAoManifestante
        	recuperaDiasAtrasoAoManifestante(dtoManifestacao);
        	
        	//TODO Recuperar o nome das unidades encaminhadas: ver MBListarManifestacoes.getUnidadesEncaminhadas
        	recuperaUnidadesEncaminhadas(dtoManifestacao);

		}
	}

    /**
     * Recupera o nome das unidades para as quais foram encaminhadas a manifestação 
     * 
     * @param manifestacao
     * @return
     */
    private void recuperaUnidadesEncaminhadas(DTOManifestacao dtoManifestacao) {
        StringBuilder unidades = new StringBuilder();
        Collection<TbEncaminhamento> listaEncaminhamentos = dtoManifestacao.getEncaminhamentos();
        if (listaEncaminhamentos != null) {
            for (TbEncaminhamento encaminhamento : listaEncaminhamentos) {
                if (unidades.length() == 0) {
                    unidades.append(encaminhamento.getIdUnidadeRecebeu().getSgUnidade());
                } else {
                    unidades.append(", ").append(encaminhamento.getIdUnidadeRecebeu().getSgUnidade());
                }
            }
        }
        
        dtoManifestacao.setNomesUnidades(unidades.toString());
    }

    
    
    private void recuperaDiasAtrasoAoManifestante(DTOManifestacao dtoManifestacao) {
		int diasEmAtraso = 0;
		if (dtoManifestacao != null
				&& !StatusManifestacaoEnum.SOLUCIONADA.getId().equals(dtoManifestacao.getIdStatusManifestacao())) {
    		if(securityService.isInterlocutor() || securityService.isOperador()) {
    			Date dateLimitToAnswer = dtoManifestacao.getPrazoAtendimento();
    			DateTimeZone BRAZIL = DateTimeZone.forID("America/Sao_Paulo");
    			DateTime start = new LocalDate(dateLimitToAnswer.getTime(), BRAZIL).toDateTimeAtStartOfDay();
    			DateTime end = new LocalDate(new Date().getTime(), BRAZIL).toDateTimeAtStartOfDay();
    			Days days = Days.daysBetween(start, end);
    			
    			if(days.isGreaterThan(null)) {
    				diasEmAtraso = days.getDays();
    			}
    		} else {
    			Integer prazoEncaminhamento = dtoManifestacao.getPrazoEncaminhamento();
    			Integer prazoRespostaAOuvidoria = dtoManifestacao.getPrazoRespostaAOuvidoria();
    			Integer prazoRespostaAoManifestante = dtoManifestacao.getPrazoRespostaAoManifestante();
    			int diasParaResponderManifestante = prazoEncaminhamento + prazoRespostaAoManifestante + prazoRespostaAOuvidoria;
    			
    			Date dataManifestacao = dtoManifestacao.getDataCadastro();
    			Date dataAtual = new Date();
    			int diasTranscorridos = DataHelper.getDiferencaEntreDatasEmDias(dataAtual, dataManifestacao);
    			
    			if (diasTranscorridos > ++diasParaResponderManifestante) {
    				diasEmAtraso = diasTranscorridos - diasParaResponderManifestante;
    			}
    		}
    		
    	}
		dtoManifestacao.setDiasAtraso(diasEmAtraso);
//    	return diasEmAtraso;
    }

    /**
     * Recupera o prazo de atendimento para a unidade do usuário logado
     * 
     * @param dtoManifestacao
     */
	private void recuperaPrazoAtendimento(DTOManifestacao dtoManifestacao) {
    	Date dataFinalAtendimento = null;
		TbEncaminhamento encaminhamento = dtoManifestacao.getEncaminhamentoUsuario();
    	if(encaminhamento != null) {
	    	int diasParaResponder = dtoManifestacao.getPrazoRespostaAOuvidoria();
	    	
    		Calendar c = Calendar.getInstance();
    		c.setTime(encaminhamento.getDtEnvioTramite());
    		c.add(Calendar.DAY_OF_MONTH, diasParaResponder);
    		dataFinalAtendimento = c.getTime();
    	}
    	dtoManifestacao.setPrazoAtendimento(dataFinalAtendimento);
    }
	
	


    /**
     * Recupera o nome dos operadores que atuaram na manifestação
     * @param dtoManifestacao
     */
    private void recuperaNomeOperadoresComManifestacao(DTOManifestacao dtoManifestacao) {
    	StringBuilder nomeOperadores = new StringBuilder();
    	TbUnidade unidadeInterlocutor = securityService.getUser().getIdUnidade();
    	Set<TbUsuario> operadores = new TreeSet<>();
    	
		for (TbEncaminhamento e : dtoManifestacao.getEncaminhamentos()) {
			if(e.getIdUnidadeRecebeu().equals(unidadeInterlocutor)) {
				for (TbTramite t : e.getTbTramiteCollection()) {
					if(t.getIdUsuarioReceptor() != null && FuncaoUsuarioEnum.OPERADOR.getId().equals(t.getIdUsuarioReceptor().getTpFuncao())) {
						operadores.add(t.getIdUsuarioReceptor());
					}
				}
			}
		}
		
		for (TbUsuario u : operadores) {
			if(nomeOperadores.length() == 0) {
				nomeOperadores.append(u.getNmUsuario());
			} else {
				nomeOperadores.append(", ").append(u.getNmUsuario());
			}
		}
		
		dtoManifestacao.setNomesOperadores(nomeOperadores.toString());
    }

    
    
    /**
     * Recupera o tipo de atraso da manifestação, conforme regra estabelecida
     * 
     * @param dtoManifestacao
     */
    private void recuperaTipoAtraso(DTOManifestacao dtoManifestacao) {
    	
        int diasTranscorridos = 0;
        Date dataManifestacao = dtoManifestacao.getDataCadastro();
        Date dataAtual = new Date();

        if (securityService.isOuvidor() || securityService.isAdministrador()) {

            if (!StatusManifestacaoEnum.SOLUCIONADA.getId().equals(dtoManifestacao.getIdStatusManifestacao())) {
            	// VERIFICA ATRASO - ENCAMINHAMENTO
            	diasTranscorridos = DataHelper.getDiferencaEntreDatasEmDias(dataAtual, dataManifestacao);
            	
            	Collection<TbEncaminhamento> listaEncaminhamentos = dtoManifestacao.getEncaminhamentos();
            	if (listaEncaminhamentos != null) {
            		if (dtoManifestacao.getPrazoEncaminhamento() > 0 && 
            				diasTranscorridos > dtoManifestacao.getPrazoEncaminhamento() && 
            				listaEncaminhamentos.isEmpty()) {
            			dtoManifestacao.setTipoAtrasoManifestacao(AtrasoManifestacaoEnum.ATRASO_ENCAMINHAMENTO);
            			return;
            		}
            	}

                // VERIFICA ATRASO - RESPOSTA À OUVIDORIA
            	boolean todasAreasRetornaram = Boolean.TRUE;
                if (listaEncaminhamentos != null) {
                    for (TbEncaminhamento tbEncaminhamento : listaEncaminhamentos) {
                        Date dataEncaminhamento = tbEncaminhamento.getDtEnvioTramite();
                        String statusTramite = tbEncaminhamento.getStEncaminhamento();
                        if(StatusEncaminhamentoEnum.ENCAMINHADA.getId().equals(statusTramite)) {
                        	todasAreasRetornaram = Boolean.FALSE;
                        }

                        diasTranscorridos = DataHelper.getDiferencaEntreDatasEmDias(dataAtual, dataEncaminhamento);

                        if (dtoManifestacao.getPrazoRespostaAOuvidoria() > 0 && 
                        		diasTranscorridos > dtoManifestacao.getPrazoRespostaAOuvidoria() && 
                        		StatusEncaminhamentoEnum.ENCAMINHADA.getId().equals(statusTramite)) {
                        	dtoManifestacao.setTipoAtrasoManifestacao(AtrasoManifestacaoEnum.ATRASO_RESPOSTA_OUVIDORIA);
                        	return;
                        }
                    }
                }
                
            	// VERIFICA ATRASO - RESPOSTA AO MANIFESTANTE
                if(todasAreasRetornaram) {
                	diasTranscorridos = DataHelper.getDiferencaEntreDatasEmDias(dataAtual, dataManifestacao);
                	Collection<TbComunicacaoExterna> listaComunicacao = dtoManifestacao.getComunicacaoExterna(); 
                	
                	if (ValidacaoHelper.isEmpty(listaComunicacao)) {
                		if (dtoManifestacao.getPrazoRespostaAoManifestante() > 0 && 
                				diasTranscorridos > dtoManifestacao.getPrazoRespostaAoManifestante()) {
                			dtoManifestacao.setTipoAtrasoManifestacao(AtrasoManifestacaoEnum.ATRASO_RESPOSTA_MANIFESTANTE);
                			return;
                		}
                	} else {
	        			//pega a ultima comunicacao e verifica se ela possui resposta final
                		List<TbComunicacaoExterna> comunicacoes = new ArrayList<TbComunicacaoExterna>(listaComunicacao);
	        			TbComunicacaoExterna com = comunicacoes.listIterator(comunicacoes.size() - 1).next();
	        			if (dtoManifestacao.getPrazoRespostaAoManifestante() > 0 && 
	        					diasTranscorridos > dtoManifestacao.getPrazoRespostaAoManifestante() && 
	        					!"1".equals(com.getStRespostaFinal())) {
	        				dtoManifestacao.setTipoAtrasoManifestacao(AtrasoManifestacaoEnum.ATRASO_RESPOSTA_MANIFESTANTE);
	        				return;
	        			}
                	}
                }
            }
            
            dtoManifestacao.setTipoAtrasoManifestacao(AtrasoManifestacaoEnum.SEM_ATRASO);
            return;
        } else if (securityService.isInterlocutor() || securityService.isOperador()) {
            // VERIFICA ATRASO - RESPOSTA À OUVIDORIA
            if (!StatusManifestacaoEnum.SOLUCIONADA.getId().equals(dtoManifestacao.getIdStatusManifestacao())) {

               	TbEncaminhamento tbEncaminhamento = dtoManifestacao.getEncaminhamentoUsuario();
               	if (tbEncaminhamento != null) {

                    Date dataEncaminhamento = tbEncaminhamento.getDtEnvioTramite();
                    String statusTramite = tbEncaminhamento.getStEncaminhamento();

                    diasTranscorridos = DataHelper.getDiferencaEntreDatasEmDias(dataAtual, dataEncaminhamento);

                    if (dtoManifestacao.getPrazoRespostaAOuvidoria() > 0 && 
                    		diasTranscorridos > dtoManifestacao.getPrazoRespostaAOuvidoria() && 
                    		StatusEncaminhamentoEnum.ENCAMINHADA.getId().equals(statusTramite)) {
                    	dtoManifestacao.setTipoAtrasoManifestacao(AtrasoManifestacaoEnum.ATRASO_RESPOSTA_OUVIDORIA);
                    	return;
                    }
                }
            }
        }
            
        dtoManifestacao.setTipoAtrasoManifestacao(AtrasoManifestacaoEnum.SEM_ATRASO);
    }
    
    
	/**
	 * Recupera o encaminhamento realizado a unidade do usuário logado
	 * 
	 * @param manifestacao manifestação
	 */
	private void recuperaEncaminhamentoDoUsuarioLogado(DTOManifestacao dtoManifestacao, Collection<TbEncaminhamento> listaEncaminhamentos) {
		TbUnidade unidadeUsuario = securityService.getUser().getIdUnidade();
		if (listaEncaminhamentos != null) {
			for (TbEncaminhamento encaminhamento : listaEncaminhamentos) {
				if (encaminhamento.getIdUnidadeRecebeu().equals(unidadeUsuario)) {
					dtoManifestacao.setEncaminhamentoUsuario(encaminhamento);
					return;
				}
			}
		}
	}



}
