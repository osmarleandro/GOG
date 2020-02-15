/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbFaixaEtaria;

/**
 *
 * @author renato
 */
@Stateless
public class FaixaEtariaDAO extends AbstractDAO<TbFaixaEtaria> {
    public FaixaEtariaDAO() {
        super(TbFaixaEtaria.class);
    }
    
      @Override
    public String getNomeEntidade() {
        return "Faixa Etária";
    }

    public void refresh(TbFaixaEtaria entity) {
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
