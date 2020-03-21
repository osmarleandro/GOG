/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbGrauInstrucao;

/**
 *
 * @author renato
 */
@Stateless
public class GrauInstrucaoDAO extends AbstractDAO<TbGrauInstrucao> {
    public GrauInstrucaoDAO() {
        super(TbGrauInstrucao.class);
    }
    
      @Override
    public String getNomeEntidade() {
        return "Grau de Instrução";
    }

	public void refresh(TbGrauInstrucao entity) {
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
