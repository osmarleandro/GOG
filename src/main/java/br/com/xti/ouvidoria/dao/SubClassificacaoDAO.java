/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbSubClassificacao;

/**
 *
 * @author renato
 */
@Stateless
public class SubClassificacaoDAO extends AbstractDAO<TbSubClassificacao> {
    public SubClassificacaoDAO() {
        super(TbSubClassificacao.class);
    }

    @Override
    public String getNomeEntidade() {
        return "Subclassificação";
    }

    public void refresh(TbSubClassificacao entity) {
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
