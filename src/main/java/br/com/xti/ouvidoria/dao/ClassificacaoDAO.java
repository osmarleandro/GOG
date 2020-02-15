package br.com.xti.ouvidoria.dao;

import java.util.HashMap;
import java.util.List;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbClassificacao;
import br.com.xti.ouvidoria.model.TbUnidade;

/**
 *
 * @author renato
 */
@Stateless
public class ClassificacaoDAO extends AbstractDAO<TbClassificacao> {

    public ClassificacaoDAO() {
        super(TbClassificacao.class);
    }

    @Override
    public String getNomeEntidade() {
        return "Classificação";
    }

    public List<TbClassificacao> findByUnidade(TbUnidade tbUnidade) throws Exception {
    	HashMap<String, TbUnidade> map = new HashMap<String, TbUnidade>();
        map.put("idUnidade", tbUnidade);
        List<TbClassificacao> res = getList("findByUnidade", map);
        
        return res;
    }

    public void refresh(TbClassificacao entity) {
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
