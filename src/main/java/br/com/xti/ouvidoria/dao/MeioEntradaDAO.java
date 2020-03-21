/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbMeioEntrada;

/**
 *
 * @author renato
 */
@Stateless
public class MeioEntradaDAO extends AbstractDAO<TbMeioEntrada> {
    public MeioEntradaDAO() {
        super(TbMeioEntrada.class);
    }
    
     @Override
    public String getNomeEntidade() {
        return "Meio de Entrada";
    }

	public void refresh(TbMeioEntrada entity) {
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
