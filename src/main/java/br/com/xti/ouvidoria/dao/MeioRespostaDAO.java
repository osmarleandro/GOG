/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbMeioResposta;

/**
 *
 * @author renato
 */
@Stateless
public class MeioRespostaDAO extends AbstractDAO<TbMeioResposta> {

    public MeioRespostaDAO() {
        super(TbMeioResposta.class);
    }

    @Override
    public String getNomeEntidade() {
        return "Meio de Resposta";
    }

    public void refresh(TbMeioResposta entity) {
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
