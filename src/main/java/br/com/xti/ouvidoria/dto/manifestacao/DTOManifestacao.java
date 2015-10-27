package br.com.xti.ouvidoria.dto.manifestacao;

import java.util.Collection;
import java.util.Date;

import org.jsoup.Jsoup;

import br.com.xti.ouvidoria.model.TbComunicacaoExterna;
import br.com.xti.ouvidoria.model.TbEncaminhamento;
import br.com.xti.ouvidoria.model.enums.AtrasoManifestacaoEnum;
import br.com.xti.ouvidoria.model.enums.StatusManifestacaoEnum;



public class DTOManifestacao {
	private Integer 				nrManifestacao;
	private Integer 				idManifestacao;

	private Date 					dtCadastro;
	private Date 					dtUltimaAtualizacao;
	
	private String 					nomeManifestante;
	
	private Integer 				idTipoManifestacao;
	private String 					nomeTipoManifestacao;
	
	private Integer 				prazoEncaminhamento;
	private Integer 				prazoRespostaAOuvidoria;
	private Integer 				prazoRespostaAoManifestante;

	
	private Integer 				ddPrioridade;
	private String					nomePrioridade;
	
	private String 					idStatusManifestacao;
	
	private String 					nomesUnidades;
	
	private int						diasAtraso;
	
	private AtrasoManifestacaoEnum 	tipoAtrasoManifestacao;

	private boolean 				sigilo;
	
	private String					nomePessoa;
	
	private String 					nomesOperadores;
	
	private Date					prazoAtendimento;
	
	private boolean 				oculta;
	
	private String 					dsTextoManifestacao;
	private String 					motivoOcultacao;
	
	
	private Collection<TbEncaminhamento>		encaminhamentos;
	private Collection<TbComunicacaoExterna>	comunicacaoExterna; 
	// O encaminhamento do usuário logado
	private TbEncaminhamento 					encaminhamentoUsuario;
	
	
    public String getDsTextoManifestacaoFormatado() {
    	// Remove os caracteres problemáticos (travam a tela do sistema)
    	return Jsoup.parse(dsTextoManifestacao).html();
    }

    public String verificaAtrasoStyleClass() {
    	AtrasoManifestacaoEnum tipoAtraso = getTipoAtrasoManifestacao();
    	String styleClass = tipoAtraso != null ? tipoAtraso.getStyleClass() : "";

		return styleClass;
    }

	
	/**
	 * @return the nrManifestacao
	 */
	public Integer getNrManifestacao() {
		return nrManifestacao;
	}

	/**
	 * @param nrManifestacao the nrManifestacao to set
	 */
	public void setNrManifestacao(Integer nrManifestacao) {
		this.nrManifestacao = nrManifestacao;
	}

	/**
	 * @return the idManifestacao
	 */
	public Integer getIdManifestacao() {
		return idManifestacao;
	}

	/**
	 * @param idManifestacao the idManifestacao to set
	 */
	public void setIdManifestacao(Integer idManifestacao) {
		this.idManifestacao = idManifestacao;
	}

	/**
	 * @return the dtCadastro
	 */
	public Date getDtCadastro() {
		return dtCadastro;
	}

	/**
	 * @param dtCadastro the dtCadastro to set
	 */
	public void setDtCadastro(Date dtCadastro) {
		this.dtCadastro = dtCadastro;
	}

	/**
	 * @return the dtUltimaAtualizacao
	 */
	public Date getDtUltimaAtualizacao() {
		return dtUltimaAtualizacao;
	}

	/**
	 * @param dtUltimaAtualizacao the dtUltimaAtualizacao to set
	 */
	public void setDtUltimaAtualizacao(Date dtUltimaAtualizacao) {
		this.dtUltimaAtualizacao = dtUltimaAtualizacao;
	}

	/**
	 * @return the nomeManifestante
	 */
	public String getNomeManifestante() {
		return nomeManifestante;
	}

	/**
	 * @param nomeManifestante the nomeManifestante to set
	 */
	public void setNomeManifestante(String nomeManifestante) {
		this.nomeManifestante = nomeManifestante;
	}

	/**
	 * @return the idTipoManifestacao
	 */
	public Integer getIdTipoManifestacao() {
		return idTipoManifestacao;
	}

	/**
	 * @param idTipoManifestacao the idTipoManifestacao to set
	 */
	public void setIdTipoManifestacao(Integer idTipoManifestacao) {
		this.idTipoManifestacao = idTipoManifestacao;
	}

	/**
	 * @return the nomeTipoManifestacao
	 */
	public String getNomeTipoManifestacao() {
		return nomeTipoManifestacao;
	}

	/**
	 * @param nomeTipoManifestacao the nomeTipoManifestacao to set
	 */
	public void setNomeTipoManifestacao(String nomeTipoManifestacao) {
		this.nomeTipoManifestacao = nomeTipoManifestacao;
	}

	/**
	 * @return the ddPrioridade
	 */
	public Integer getDdPrioridade() {
		return ddPrioridade;
	}

	/**
	 * @param ddPrioridade the ddPrioridade to set
	 */
	public void setDdPrioridade(Integer ddPrioridade) {
		this.ddPrioridade = ddPrioridade;
	}

	/**
	 * @return the nomePrioridade
	 */
	public String getNomePrioridade() {
		return nomePrioridade;
	}

	/**
	 * @param nomePrioridade the nomePrioridade to set
	 */
	public void setNomePrioridade(String nomePrioridade) {
		this.nomePrioridade = nomePrioridade;
	}

	/**
	 * @return the statusManifestacao
	 */
	public String getStatusManifestacao() {
		if (idStatusManifestacao == null)
			return null;
		
        switch (idStatusManifestacao) {
	        case "1": return StatusManifestacaoEnum.NOVA.getDescricao();
	        case "2": return StatusManifestacaoEnum.EM_ANALISE.getDescricao();
	        case "3": return StatusManifestacaoEnum.EM_ANDAMENTO.getDescricao();
	        case "4": return StatusManifestacaoEnum.SOLUCIONADA.getDescricao();
	        case "6": return StatusManifestacaoEnum.INATIVADA.getDescricao();
	        case "7": return StatusManifestacaoEnum.SOLICITADA_INFORMACAO.getDescricao();
	        case "8": return StatusManifestacaoEnum.SOLICITACAO_RESPONDIDA.getDescricao();
	        case "9": return StatusManifestacaoEnum.EM_MONITORAMENTO.getDescricao();
	        default: 
	        	return null;
        }
    }


	/**
	 * @return the nomesUnidades
	 */
	public String getNomesUnidades() {
		return nomesUnidades;
	}

	/**
	 * @param nomesUnidades the nomesUnidades to set
	 */
	public void setNomesUnidades(String nomesUnidades) {
		this.nomesUnidades = nomesUnidades;
	}

	/**
	 * @return the diasAtraso
	 */
	public int getDiasAtraso() {
		return diasAtraso;
	}

	/**
	 * @param diasAtraso the diasAtraso to set
	 */
	public void setDiasAtraso(int diasAtraso) {
		this.diasAtraso = diasAtraso;
	}

	/**
	 * @return the tipoAtrasoManifestacao
	 */
	public AtrasoManifestacaoEnum getTipoAtrasoManifestacao() {
		return tipoAtrasoManifestacao;
	}

	/**
	 * @param tipoAtrasoManifestacao the tipoAtrasoManifestacao to set
	 */
	public void setTipoAtrasoManifestacao(
			AtrasoManifestacaoEnum tipoAtrasoManifestacao) {
		this.tipoAtrasoManifestacao = tipoAtrasoManifestacao;
	}

	/**
	 * @return the sigilo
	 */
	public boolean isSigilo() {
		return sigilo;
	}

	/**
	 * @param sigilo the sigilo to set
	 */
	public void setSigilo(boolean sigilo) {
		this.sigilo = sigilo;
	}

	/**
	 * @return the nomePessoa
	 */
	public String getNomePessoa() {
		return nomePessoa;
	}

	/**
	 * @param nomePessoa the nomePessoa to set
	 */
	public void setNomePessoa(String nomePessoa) {
		this.nomePessoa = nomePessoa;
	}

	/**
	 * @return the nomesOperadores
	 */
	public String getNomesOperadores() {
		return nomesOperadores;
	}

	/**
	 * @param nomesOperadores the nomesOperadores to set
	 */
	public void setNomesOperadores(String nomesOperadores) {
		this.nomesOperadores = nomesOperadores;
	}

	/**
	 * @return the prazoAtendimento
	 */
	public Date getPrazoAtendimento() {
		return prazoAtendimento;
	}

	/**
	 * @param prazoAtendimento the prazoAtendimento to set
	 */
	public void setPrazoAtendimento(Date prazoAtendimento) {
		this.prazoAtendimento = prazoAtendimento;
	}

	/**
	 * @return the oculta
	 */
	public boolean isOculta() {
		return oculta;
	}

	/**
	 * @param oculta the oculta to set
	 */
	public void setOculta(boolean oculta) {
		this.oculta = oculta;
	}


	/**
	 * @return the dsTextoManifestacao
	 */
	public String getDsTextoManifestacao() {
		return dsTextoManifestacao;
	}


	/**
	 * @param dsTextoManifestacao the dsTextoManifestacao to set
	 */
	public void setDsTextoManifestacao(String dsTextoManifestacao) {
		this.dsTextoManifestacao = dsTextoManifestacao;
	}


	/**
	 * @return the motivoOcultacao
	 */
	public String getMotivoOcultacao() {
		return motivoOcultacao;
	}


	/**
	 * @param motivoOcultacao the motivoOcultacao to set
	 */
	public void setMotivoOcultacao(String motivoOcultacao) {
		this.motivoOcultacao = motivoOcultacao;
	}


	/**
	 * @return the idStatusManifestacao
	 */
	public String getIdStatusManifestacao() {
		return idStatusManifestacao;
	}


	/**
	 * @param idStatusManifestacao the idStatusManifestacao to set
	 */
	public void setIdStatusManifestacao(String idStatusManifestacao) {
		this.idStatusManifestacao = idStatusManifestacao;
	}

	/**
	 * @return the prazoEncaminhamento
	 */
	public Integer getPrazoEncaminhamento() {
		return prazoEncaminhamento;
	}

	/**
	 * @param prazoEncaminhamento the prazoEncaminhamento to set
	 */
	public void setPrazoEncaminhamento(Integer prazoEncaminhamento) {
		this.prazoEncaminhamento = prazoEncaminhamento;
	}

	/**
	 * @return the prazoRespostaAOuvidoria
	 */
	public Integer getPrazoRespostaAOuvidoria() {
		return prazoRespostaAOuvidoria;
	}

	/**
	 * @param prazoRespostaAOuvidoria the prazoRespostaAOuvidoria to set
	 */
	public void setPrazoRespostaAOuvidoria(Integer prazoRespostaAOuvidoria) {
		this.prazoRespostaAOuvidoria = prazoRespostaAOuvidoria;
	}

	/**
	 * @return the prazoRespostaAoManifestante
	 */
	public Integer getPrazoRespostaAoManifestante() {
		return prazoRespostaAoManifestante;
	}

	/**
	 * @param prazoRespostaAoManifestante the prazoRespostaAoManifestante to set
	 */
	public void setPrazoRespostaAoManifestante(Integer prazoRespostaAoManifestante) {
		this.prazoRespostaAoManifestante = prazoRespostaAoManifestante;
	}

	/**
	 * @return the encaminhamentos
	 */
	public Collection<TbEncaminhamento> getEncaminhamentos() {
		return encaminhamentos;
	}

	/**
	 * @param encaminhamentos the encaminhamentos to set
	 */
	public void setEncaminhamentos(Collection<TbEncaminhamento> encaminhamentos) {
		this.encaminhamentos = encaminhamentos;
	}

	/**
	 * @return the comunicacaoExterna
	 */
	public Collection<TbComunicacaoExterna> getComunicacaoExterna() {
		return comunicacaoExterna;
	}

	/**
	 * @param comunicacaoExterna the comunicacaoExterna to set
	 */
	public void setComunicacaoExterna(
			Collection<TbComunicacaoExterna> comunicacaoExterna) {
		this.comunicacaoExterna = comunicacaoExterna;
	}

	/**
	 * @return the encaminhamentoUsuario
	 */
	public TbEncaminhamento getEncaminhamentoUsuario() {
		return encaminhamentoUsuario;
	}

	/**
	 * @param encaminhamentoUsuario the encaminhamentoUsuario to set
	 */
	public void setEncaminhamentoUsuario(TbEncaminhamento encaminhamentoUsuario) {
		this.encaminhamentoUsuario = encaminhamentoUsuario;
	}
	
	

}
