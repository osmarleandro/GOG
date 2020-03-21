/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbMunicipio;

/**
 *
 * @author renato
 */
@Stateless
public class MunicipioDAO extends AbstractDAO<TbMunicipio> {
    public MunicipioDAO() {
        super(TbMunicipio.class);
    }

    @Override
    public String getNomeEntidade() {
        return "Município";
    }

	public void refresh(TbMunicipio entity) {
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
