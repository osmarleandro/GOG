/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbTipoManifestacao;

/**
 *
 * @author renato
 */
@Stateless
public class TipoManifestacaoDAO extends AbstractDAO<TbTipoManifestacao> {
    public TipoManifestacaoDAO() {
        super(TbTipoManifestacao.class);
    }
    
    
    @Override
    public String getNomeEntidade() {
        return "Tipo de Manifestação";
    }


	public void refresh(TbTipoManifestacao entity) {
	    try {
	        getEntityManager().flush();
	        getEntityManager().refresh(entity);
	    } catch (ConstraintViolationException ex) {
	        ex.printStackTrace();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}
