package br.com.xti.ouvidoria.controller;

import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;

import org.apache.commons.lang.StringUtils;
import org.primefaces.component.datatable.DataTable;
import org.primefaces.model.SortOrder;

import br.com.xti.ouvidoria.dto.manifestacao.DTOManifestacao;
import br.com.xti.ouvidoria.model.TbFiltroPersonalizado;
import br.com.xti.ouvidoria.negocio.ManifestacaoService;


public class PesquisaManifestacaoViewHelper extends PesquisaEntidadeViewHelper<DTOManifestacao> {
	private ManifestacaoService manifestacaoService;
	
	private String cenarioPesquisa;
	private String nomeFiltroPersonalizado;
	private TbFiltroPersonalizado filtroEscolhido;

	
	public static final String CENARIO_PESQUISA_TODOS 					= "Todos";
	public static final String CENARIO_PESQUISA_CAIXA_ENTRADA 			= "Caixa de Entrada";
	public static final String CENARIO_PESQUISA_EM_ANDAMENTO			= "Em Andamento";
	public static final String CENARIO_PESQUISA_RETORNADAS			 	= "Retornadas";
	public static final String CENARIO_PESQUISA_SOLUCIONADAS	 		= "Solucionadas";
	public static final String CENARIO_PESQUISA_EM_MONITORAMENTO		= "Em Monitoramento";
	public static final String CENARIO_PESQUISA_DEVOLVIDAS		 		= "Devolvidas";
	public static final String CENARIO_PESQUISA_SOLICITADA_INFORMACAO	= "Solicitada Informação";
	public static final String CENARIO_PESQUISA_COM_OUVIDORIA	 		= "Com a Ouvidoria";
	public static final String CENARIO_PESQUISA_FILTRO_PERSONALIZADO	= "Filtro Personalizado";
	
	public PesquisaManifestacaoViewHelper(ManifestacaoService manifestacaoService){
		cenarioPesquisa = CENARIO_PESQUISA_CAIXA_ENTRADA;
		this.manifestacaoService = manifestacaoService;
		super.setFiltroPesquisa(new DTOManifestacao());
	}
	
	private void DTOPesquisaManifestacao() {
		// TODO Auto-generated method stub

	}
	
	
	private boolean verificaCenarioPesquisa(String cenario){
		return cenarioPesquisa != null ? 
				cenarioPesquisa.equals(cenario) : false;
	}
	
	public boolean isCenarioPesquisaTodos(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_TODOS);
	}
	public boolean isCenarioPesquisaCaixaEntrada(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_CAIXA_ENTRADA);
	}
	public boolean isCenarioPesquisaEmAndamento(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_EM_ANDAMENTO);
	}
	public boolean isCenarioPesquisaRetornadas(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_RETORNADAS);
	}
	public boolean isCenarioPesquisaSolucionadas(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_SOLUCIONADAS);
	}
	public boolean isCenarioPesquisaEmMonitoramento(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_EM_MONITORAMENTO);
	}
	public boolean isCenarioPesquisaDevolvidas(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_DEVOLVIDAS);
	}
	public boolean isCenarioPesquisaSolicitadaInformacao(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_SOLICITADA_INFORMACAO);
	}
	public boolean isCenarioPesquisaComOuvidoria(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_COM_OUVIDORIA);
	}
	public boolean isCenarioPesquisaFiltroPersonalizado(){
		return verificaCenarioPesquisa(CENARIO_PESQUISA_FILTRO_PERSONALIZADO);
	}


	@Override
	public Class getClassResultado() {
		return DTOManifestacao.class;
	}
	
	
	
	@Override
	public List<DTOManifestacao> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, String> filters) {
		// Configura a paginação da tabela de resultados
		if (isReiniciarPaginacao()){
			this.setPrimeiroRegistro(0);
			DataTable dataTable = (DataTable) FacesContext.getCurrentInstance().getViewRoot().findComponent("formListarManifestacoes:tabelaManifestacoes");
			if (dataTable != null)
				dataTable.setFirst(0);
			setReiniciarPaginacao(false);
		}
		else{
			this.setPrimeiroRegistro(first);
		}
		this.setQuantidadeRegistros(pageSize);
		
		// Configura dados da ordenação das colunas na tabela de resultados 
		this.setOrdenacaoCampo(sortField);
		if (sortOrder != null){
			if (sortOrder.equals(SortOrder.ASCENDING))
				this.setOrdenacaoForma("ASC");
			else if (sortOrder.equals(SortOrder.DESCENDING))
				this.setOrdenacaoForma("DESC");
			else  
				this.setOrdenacaoForma(" ");
		}
		
		// Realiza a pesquisa de Manifestações
		manifestacaoService.pesquisaManifestacoes(this);
    	
    	return this.getResultado();
	}
 
	@Override
    public Object getRowKey(DTOManifestacao dtoManifestacao) {
        return dtoManifestacao.getIdManifestacao();
    }
 
    @Override
    public DTOManifestacao getRowData(String dtoManifestacaoId) {
        Integer id = Integer.valueOf(dtoManifestacaoId);
 
        for (DTOManifestacao dtoManifestacao : getResultado()) {
            if(id.equals(dtoManifestacao.getIdManifestacao())){
                return dtoManifestacao;
            }
        }
 
        return null;
    }

	/**
	 * @return the cenarioPesquisa
	 */
	public String getCenarioPesquisa() {
		return cenarioPesquisa;
	}

	/**
	 * @return O nome do Cenário de Pesquisa
	 */
	public String getNomeCenarioPesquisa() {
		if (cenarioPesquisa != null ){
			if (isCenarioPesquisaFiltroPersonalizado())
				return cenarioPesquisa + " - " + nomeFiltroPersonalizado;
			else
				return cenarioPesquisa;
		}
			
		return null;
	}

	/**
	 * @param cenarioPesquisa the cenarioPesquisa to set
	 */
	public void setCenarioPesquisa(String cenarioPesquisa) {
		this.cenarioPesquisa = cenarioPesquisa;
	}

	/**
	 * @return the nomeFiltroPersonalizado
	 */
	public String getNomeFiltroPersonalizado() {
		return nomeFiltroPersonalizado;
	}

	/**
	 * @param nomeFiltroPersonalizado the nomeFiltroPersonalizado to set
	 */
	public void setNomeFiltroPersonalizado(String nomeFiltroPersonalizado) {
		this.nomeFiltroPersonalizado = nomeFiltroPersonalizado;
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


	
}
