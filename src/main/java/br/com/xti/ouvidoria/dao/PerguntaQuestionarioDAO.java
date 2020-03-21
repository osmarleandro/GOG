/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbPerguntaQuestionario;

/**
 *
 * @author Emanuel Melo
 */
@Stateless
public class PerguntaQuestionarioDAO extends AbstractDAO<TbPerguntaQuestionario>{
    
    public PerguntaQuestionarioDAO(){
        super(TbPerguntaQuestionario.class);
    }
    
    @Override
    public String getNomeEntidade() {
        return "Pergunta Questionario";
    }

	public void refresh(TbPerguntaQuestionario entity) {
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

