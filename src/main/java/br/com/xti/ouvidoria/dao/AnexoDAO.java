/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbAnexo;

/**
 *
 * @author renato
 */
@Stateless
public class AnexoDAO extends AbstractDAO<TbAnexo> {
    public AnexoDAO() {
        super(TbAnexo.class);
    }
    
      @Override
    public String getNomeEntidade() {
        return "Anexo";
    }

    public void refresh(TbAnexo entity) {
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
