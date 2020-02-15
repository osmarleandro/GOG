package br.com.xti.ouvidoria.controller;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;

import br.com.xti.ouvidoria.util.JSFUtils;

/**
 * @author Samuel Correia Guimarães
 */
public class MensagemFaceUtil {

    public static void info(String titulo, String mensagem) {
        PesquisaManifestacaoViewHelper.show(FacesMessage.SEVERITY_INFO, titulo, mensagem, null);
        JSFUtils.showGrowl();
    }
    
    public static void info(String titulo, String mensagem, String clientId) {
    	PesquisaManifestacaoViewHelper.show(FacesMessage.SEVERITY_INFO, titulo, mensagem, clientId);
    	JSFUtils.showGrowl();
    }

    public static void infoSemGrowl(String titulo, String mensagem) {
        PesquisaManifestacaoViewHelper.show(FacesMessage.SEVERITY_INFO, titulo, mensagem, null);
    }

    public static void alerta(String titulo, String mensagem) {
        PesquisaManifestacaoViewHelper.show(FacesMessage.SEVERITY_WARN, titulo, mensagem, null);
        JSFUtils.showGrowl();
    }
    
    public static void alerta(String titulo, String mensagem, String clientId) {
    	PesquisaManifestacaoViewHelper.show(FacesMessage.SEVERITY_WARN, titulo, mensagem, clientId);
    }

    public static void erro(String titulo, String mensagem) {
        PesquisaManifestacaoViewHelper.show(FacesMessage.SEVERITY_ERROR, titulo, mensagem, null);
        JSFUtils.showGrowl();
    }

    /**
	 * @deprecated Use {@link PesquisaManifestacaoViewHelper#fatal(String,String)} instead
	 */
	public static void fatal(String titulo, String mensagem) {
		PesquisaManifestacaoViewHelper.fatal(titulo, mensagem);
	}

    /**
	 * @deprecated Use {@link PesquisaManifestacaoViewHelper#show(Severity,String,String,String)} instead
	 */
	private static void show(Severity severity, String titulo, String mensagem, String clientId) {
		PesquisaManifestacaoViewHelper.show(severity, titulo, mensagem, clientId);
	}
}
