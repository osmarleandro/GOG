package br.com.xti.ouvidoria.dao;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbComentarioQuestionario;


/**
*
* @author Emanuel Melo
*/

@Stateless
public class ComentarioQuestionarioDAO extends AbstractDAO<TbComentarioQuestionario>{
	public ComentarioQuestionarioDAO() {
        super(TbComentarioQuestionario.class);
    }
    
     @Override
    public String getNomeEntidade() {
        return "Comentario Questionario";
    }

    public void refresh(TbComentarioQuestionario entity) {
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

