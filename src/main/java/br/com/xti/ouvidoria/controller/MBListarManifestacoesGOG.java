package br.com.xti.ouvidoria.controller;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.event.ActionEvent;
import javax.faces.event.AjaxBehaviorEvent;
import javax.inject.Inject;
import javax.inject.Named;

import br.com.xti.ouvidoria.dao.FiltroPersonalizadoDAO;
import br.com.xti.ouvidoria.dao.PrioridadeDAO;
import br.com.xti.ouvidoria.dao.TipoManifestacaoDAO;
import br.com.xti.ouvidoria.dto.manifestacao.DTOManifestacao;
import br.com.xti.ouvidoria.helper.ValidacaoHelper;
import br.com.xti.ouvidoria.model.TbFiltroPersonalizado;
import br.com.xti.ouvidoria.model.TbManifestacao;
import br.com.xti.ouvidoria.model.TbPrioridade;
import br.com.xti.ouvidoria.model.TbTipoManifestacao;
import br.com.xti.ouvidoria.model.enums.FuncionalidadeEnum;
import br.com.xti.ouvidoria.negocio.ManifestacaoService;
import br.com.xti.ouvidoria.security.SecurityService;
import br.com.xti.ouvidoria.util.JSFUtils;

@SessionScoped
@SuppressWarnings("serial")
@Named("mBListarManifestacoesGOG")
public class MBListarManifestacoesGOG implements Serializable{

	
	@Inject
	private SecurityService securityService;
	/*	
	
    @EJB
	private ManifestacaoDAO manifestacaoDAO;
*/
    @EJB
	private TipoManifestacaoDAO tipoManifestacaoDAO;
    @EJB
	private PrioridadeDAO prioridadeDAO;
	@EJB
	private FiltroPersonalizadoDAO filtroPersonalizadoDAO;
	@EJB
	private ManifestacaoService manifestacaoService;
	
	
	public static final String URL_MANAGE_MANIFESTATION = "/pages/manifestacao/administrar.xhtml?num=%s&faces-redirect=true";
	
	/*	
	// Nomes das Caixas Padrão
    private static final String CAIXA_ENTRADA = "Caixa de Entrada";
    private static final String SOLICITADA_INFORMACAO = "Solicitada Informação";
    private static final String SOLUCIONADA = "Solucionadas";
    private static final String EM_ANDAMENTO = "Em Andamento";
    private static final String RETORNADAS = "Retornadas";
    private static final String DEVOLVIDAS = "Devolvidas";
    private static final String COM_OUVIDORIA = "Com a Ouvidoria";
    

    private FiltroPersonalizado filtroAtual;
    
    private String nomeFiltro = CAIXA_ENTRADA;
    private String textoBuscaManifestacao;
    private String textoBuscaEncaminhamento;
*/
	private TbFiltroPersonalizado 		filtroEscolhido;
    private PesquisaManifestacaoViewHelper 	dtoManifestacao;
    
    private DTOManifestacao				manifestacaoSelecionada;
    
    private String 						textoBuscaManifestacao;
    private String 						textoBuscaEncaminhamento;
    
    private List<TbPrioridade>			listaPrioridade;
    private List<TbTipoManifestacao>	listaTipoManifestacao;

    @PostConstruct
    public void init() {
    	if(securityService.getUser() != null) {
			carregaListaManifestacao();
    	} else {
    		Object manifestation = JSFUtils.getSessionAttribute("manifestacao");
    		if(ValidacaoHelper.isNotEmpty(manifestation) && manifestation instanceof TbManifestacao) {
    			carregaListaManifestacao();
    		}
    	}
    	
    	listaPrioridade = prioridadeDAO.findAll();
    	listaTipoManifestacao = tipoManifestacaoDAO.findAll();
    	
    }
    
    

    private void carregaListaManifestacao(){
    	if (dtoManifestacao == null){
    		dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	}
    	
//    	manifestacaoDAO.pesquisaManifestacoes(dtoManifestacao);
		
    }

    /**
     * Pesquisa manifestações utilizando os parâmetros de pesquisa, utilizando os atributos configurados em dtoManifestacao.filtroPesquisa
     * 
     * @param actionEvent
     */
    public void pesquisarManifestacoes(ActionEvent actionEvent){
    	
    	// Limpar os filtros de pesquisa
    	/*
    	DTOManifestacao filtroPesquisa = dtoManifestacao.getFiltroPesquisa();
    	dtoManifestacao = new DTOPesquisaManifestacao(manifestacaoService);
    	dtoManifestacao.setFiltroPesquisa(filtroPesquisa);
    	
    	dtoManifestacao.setCenarioPesquisa(DTOPesquisaManifestacao.CENARIO_PESQUISA_TODOS);
    	*/
    	dtoManifestacao.setReiniciarPaginacao(true);
    	
    }

    public void ocultarManifestacao() {
        try {
        	manifestacaoService.ocultar(manifestacaoSelecionada);
            MensagemFaceUtil.info("Manifestação foi ocultada", "");
            JSFUtils.closeDialog("dlgOcultarManifestacao");
        } catch (Exception e) {
            e.printStackTrace();
            MensagemFaceUtil.erro("Ocorreu um erro ao ocultar manifestação", "");
        }
    }

    public void desocultarManifestacao() {
        try {
        	manifestacaoService.desocultar(manifestacaoSelecionada);
            MensagemFaceUtil.info("Manifestação está visível novamente", "");
            JSFUtils.closeDialog("dlgDesocultarManifestacao");
        } catch (Exception e) {
            e.printStackTrace();
            MensagemFaceUtil.erro("Ocorreu um erro ao desocultar manifestação", "");
        }

    }


    public String getManifestacaoUrl(DTOManifestacao dtoManifestacao) {
    	return String.format(URL_MANAGE_MANIFESTATION, dtoManifestacao.getNumeroManifestacao());
    }
    

    /**
     * Recarrega as manifestações que estavam abertas anteriormente
     */
    public void recarregarManifestacoes() {
    }

    public void getSolicitadaInformacao(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_SOLICITADA_INFORMACAO);
    	dtoManifestacao.setReiniciarPaginacao(true);
    	
//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }
    
    public void getCaixaEntrada(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_CAIXA_ENTRADA);
    	dtoManifestacao.setReiniciarPaginacao(true);
    	
//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }


    public void getEmAndamento(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_EM_ANDAMENTO);
    	dtoManifestacao.setReiniciarPaginacao(true);
    	
//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }

    public void getEmMonitoramento(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_EM_MONITORAMENTO);
    	dtoManifestacao.setReiniciarPaginacao(true);
    	
//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }
    
    public void getRetornadas(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_RETORNADAS);
    	dtoManifestacao.setReiniciarPaginacao(true);
    	
//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }

    
    public void getSolucionadas(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_SOLUCIONADAS);
    	dtoManifestacao.setReiniciarPaginacao(true);

//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }
    
    public void getDevolvidas(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_DEVOLVIDAS);
    	dtoManifestacao.setReiniciarPaginacao(true);

//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }
 
    
    
    public void getComAOuvidoria(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_COM_OUVIDORIA);
    	dtoManifestacao.setReiniciarPaginacao(true);

//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }
    
    public void getCaixaTodos(ActionEvent actionEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_TODOS);
    	dtoManifestacao.setReiniciarPaginacao(true);

//    	manifestacaoService.pesquisaManifestacoes(dtoManifestacao);
    }

    public void getFiltroPersonalizado(AjaxBehaviorEvent ajaxBehaviorEvent) {
    	// Limpar os filtros de pesquisa
    	dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setCenarioPesquisa(PesquisaManifestacaoViewHelper.CENARIO_PESQUISA_FILTRO_PERSONALIZADO);
    	dtoManifestacao.setReiniciarPaginacao(true);

    	filtroEscolhido = filtroPersonalizadoDAO.find(filtroEscolhido.getIdFiltroPersonalizado());
    	dtoManifestacao.setNomeFiltroPersonalizado(filtroEscolhido.getNmFiltroPersonalizado());
    	dtoManifestacao.setFiltroEscolhido(filtroEscolhido);

    }

    public void filtraOcultas() {
    	if (dtoManifestacao == null)
    		dtoManifestacao = new PesquisaManifestacaoViewHelper(manifestacaoService);
    	dtoManifestacao.setReiniciarPaginacao(true);

    	if (dtoManifestacao.isCenarioPesquisaFiltroPersonalizado()){
        	filtroEscolhido = filtroPersonalizadoDAO.find(filtroEscolhido.getIdFiltroPersonalizado());
        	dtoManifestacao.setNomeFiltroPersonalizado(filtroEscolhido.getNmFiltroPersonalizado());
        	dtoManifestacao.setFiltroEscolhido(filtroEscolhido);
    	}

    	//Configura a pesquisa de manifestações ocultas
    	dtoManifestacao.getFiltroPesquisa().setOculta(true);

    }

    
    public void buscarManifestacao() {
    	if (!textoBuscaManifestacao.isEmpty()) {
    		// TODO Realizar a busca de manifestações a partir do texto informado
    	} else {
    	}
    }
    
    public void buscarEncaminhamento() {
        if (!textoBuscaEncaminhamento.isEmpty()) {
    		// TODO Realizar a busca de manifestações a partir do texto informado para os encaminhamentos
        }else {
        	
        }
    }


    public boolean showSecretData(DTOManifestacao manifestacao) {
    	boolean showSecretData = Boolean.FALSE;
    	if(securityService.hasRole(FuncionalidadeEnum.VISUALIZAR_DADOS_SIGILOSOS.toString())) {
    		showSecretData = Boolean.TRUE;
    	} else {
	        if (manifestacao.isSigilo()) {
	            showSecretData = securityService.isOuvidor() || securityService.isAdministrador();
	        }
    	}
        return showSecretData;
    }

    
    


	/**
	 * @return the textoBuscaManifestacao
	 */
	public String getTextoBuscaManifestacao() {
		return textoBuscaManifestacao;
	}



	/**
	 * @param textoBuscaManifestacao the textoBuscaManifestacao to set
	 */
	public void setTextoBuscaManifestacao(String textoBuscaManifestacao) {
		this.textoBuscaManifestacao = textoBuscaManifestacao;
	}



	/**
	 * @return the textoBuscaEncaminhamento
	 */
	public String getTextoBuscaEncaminhamento() {
		return textoBuscaEncaminhamento;
	}



	/**
	 * @param textoBuscaEncaminhamento the textoBuscaEncaminhamento to set
	 */
	public void setTextoBuscaEncaminhamento(String textoBuscaEncaminhamento) {
		this.textoBuscaEncaminhamento = textoBuscaEncaminhamento;
	}



	/**
	 * @return the manifestacaoSelecionada
	 */
	public DTOManifestacao getManifestacaoSelecionada() {
		return manifestacaoSelecionada;
	}



	/**
	 * @param manifestacaoSelecionada the manifestacaoSelecionada to set
	 */
	public void setManifestacaoSelecionada(DTOManifestacao manifestacaoSelecionada) {
		this.manifestacaoSelecionada = manifestacaoSelecionada;
	}

	/**
	 * @return the dtoManifestacao
	 */
	public PesquisaManifestacaoViewHelper getDtoManifestacao() {
		return dtoManifestacao;
	}

	/**
	 * @param dtoManifestacao the dtoManifestacao to set
	 */
	public void setDtoManifestacao(PesquisaManifestacaoViewHelper dtoManifestacao) {
		this.dtoManifestacao = dtoManifestacao;
	}



	/**
	 * @return the filtroEscolhido
	 */
	public TbFiltroPersonalizado getFiltroEscolhido() {
		return filtroEscolhido;
	}



	/**
	 * @param filtroEscolhido the filtroEscolhido to set
	 */
	public void setFiltroEscolhido(TbFiltroPersonalizado filtroEscolhido) {
		this.filtroEscolhido = filtroEscolhido;
	}



	/**
	 * @return the listaPrioridade
	 */
	public List<TbPrioridade> getListaPrioridade() {
		return listaPrioridade;
	}



	/**
	 * @param listaPrioridade the listaPrioridade to set
	 */
	public void setListaPrioridade(List<TbPrioridade> listaPrioridade) {
		this.listaPrioridade = listaPrioridade;
	}



	/**
	 * @return the listaTipoManifestacao
	 */
	public List<TbTipoManifestacao> getListaTipoManifestacao() {
		return listaTipoManifestacao;
	}



	/**
	 * @param listaTipoManifestacao the listaTipoManifestacao to set
	 */
	public void setListaTipoManifestacao(
			List<TbTipoManifestacao> listaTipoManifestacao) {
		this.listaTipoManifestacao = listaTipoManifestacao;
	}

	
}