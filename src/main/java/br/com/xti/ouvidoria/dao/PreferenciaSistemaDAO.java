package br.com.xti.ouvidoria.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.helper.ValidacaoHelper;
import br.com.xti.ouvidoria.model.TbPreferenciaSistema;

/**
 *
 * @author samuel.guimaraes
 */
@Stateless
public class PreferenciaSistemaDAO extends AbstractDAO<TbPreferenciaSistema> {

    public PreferenciaSistemaDAO() {
        super(TbPreferenciaSistema.class);
    }

    @Override
    public String getNomeEntidade() {
        return "Preferência Sistema";
    }
    
    public TbPreferenciaSistema getPreferenciaSistema() {
    	List<TbPreferenciaSistema> list = findAll();
    	if(ValidacaoHelper.isNotEmpty(list)) {
    		return list.get(0);
    	}
    	return null;
    }

    public void refresh(TbPreferenciaSistema entity) {
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
