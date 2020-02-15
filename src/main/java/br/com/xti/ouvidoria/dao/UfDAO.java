/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbUF;

/**
 *
 * @author renato
 */
@Stateless
public class UfDAO extends AbstractDAO<TbUF> {
    public UfDAO() {
        super(TbUF.class);
    }

    @Override
    public String getNomeEntidade() {
        return "UF";
    }

    public void refresh(TbUF entity) {
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
