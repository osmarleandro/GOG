package br.com.xti.ouvidoria.controller;

import java.util.List;

import org.primefaces.model.LazyDataModel;

public abstract class PesquisaEntidadeViewHelper<T> extends LazyDataModel<T>{
	
	private Integer primeiroRegistro = 0;
	private Integer quantidadeRegistros = 10;
	private String ordenacaoCampo;
	private String ordenacaoForma;
	private boolean reiniciarPaginacao;

	private List<T> resultado;
	private T filtroPesquisa;
	
	/**
	 * Informa a classe carregada na lista de resultados do DTO
	 */
	public abstract Class getClassResultado();
	
    
	/**
	 * @return the quantidadeRegistros
	 */
	public Integer getQuantidadeRegistros() {
		return quantidadeRegistros;
	}
	/**
	 * @param quantidadeRegistros the quantidadeRegistros to set
	 */
	public void setQuantidadeRegistros(Integer quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}
	/**
	 * @return the resultado
	 */
	public List<T> getResultado() {
		return resultado;
	}
	/**
	 * @param resultado the resultado to set
	 */
	public void setResultado(List<T> resultado) {
		this.resultado = resultado;
	}


	/**
	 * @return the primeiroRegistro
	 */
	public Integer getPrimeiroRegistro() {
		return primeiroRegistro;
	}


	/**
	 * @param primeiroRegistro the primeiroRegistro to set
	 */
	public void setPrimeiroRegistro(Integer primeiroRegistro) {
		this.primeiroRegistro = primeiroRegistro;
	}


	/**
	 * @return the ordenacaoCampo
	 */
	public String getOrdenacaoCampo() {
		return ordenacaoCampo;
	}


	/**
	 * @param ordenacaoCampo the ordenacaoCampo to set
	 */
	public void setOrdenacaoCampo(String ordenacaoCampo) {
		this.ordenacaoCampo = ordenacaoCampo;
	}


	/**
	 * @return the ordenacaoForma
	 */
	public String getOrdenacaoForma() {
		return ordenacaoForma;
	}


	/**
	 * @param ordenacaoForma the ordenacaoForma to set
	 */
	public void setOrdenacaoForma(String ordenacaoForma) {
		this.ordenacaoForma = ordenacaoForma;
	}


	/**
	 * @return the filtroPesquisa
	 */
	public T getFiltroPesquisa() {
		return filtroPesquisa;
	}


	/**
	 * @param filtroPesquisa the filtroPesquisa to set
	 */
	public void setFiltroPesquisa(T filtroPesquisa) {
		this.filtroPesquisa = filtroPesquisa;
	}


	/**
	 * @return the reiniciarPaginacao
	 */
	public boolean isReiniciarPaginacao() {
		return reiniciarPaginacao;
	}


	/**
	 * @param reiniciarPaginacao the reiniciarPaginacao to set
	 */
	public void setReiniciarPaginacao(boolean reiniciarPaginacao) {
		this.reiniciarPaginacao = reiniciarPaginacao;
	}
	
	
}
