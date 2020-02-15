/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbAreaEntrada;

/**
 * 
 * @author renato
 */
@Stateless
public class AreaEntradaDAO extends AbstractDAO<TbAreaEntrada> {
	public AreaEntradaDAO() {
		super(TbAreaEntrada.class);
	}
	
	@Override
	public String getNomeEntidade() {
		return "Área de Entrada";
	}

    public void refresh(TbAreaEntrada entity) {
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
