/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbPrioridade;

/**
 *
 * @author renato
 */
@Stateless
public class PrioridadeDAO extends AbstractDAO<TbPrioridade> {

    public PrioridadeDAO() {
        super(TbPrioridade.class);
    }

    @Override
    public String getNomeEntidade() {
        return "Prioridade";
    }

	public void refresh(TbPrioridade entity) {
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
