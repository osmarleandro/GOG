/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbFiltroSpam;

/**
 *
 * @author renato
 */
@Stateless
public class FiltroSpamDAO extends AbstractDAO<TbFiltroSpam> {
    public FiltroSpamDAO() {
        super(TbFiltroSpam.class);
    }
    
      @Override
    public String getNomeEntidade() {
        return "Filtro Spam";
    }

	public void refresh(TbFiltroSpam entity) {
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
