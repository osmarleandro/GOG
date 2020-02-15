/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbEncaminhamentoPadronizado;

/**
 *
 * @author renato
 */
@Stateless
public class EncaminhamentoPadronizadoDAO extends AbstractDAO<TbEncaminhamentoPadronizado> {
    public EncaminhamentoPadronizadoDAO() {
        super(TbEncaminhamentoPadronizado.class);
    }
    
      @Override
    public String getNomeEntidade() {
        return "Encaminhameno Padronizado";
    }

    public void refresh(TbEncaminhamentoPadronizado entity) {
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
