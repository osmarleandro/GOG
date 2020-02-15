package br.com.xti.ouvidoria.dao;

import java.util.Collection;
import java.util.HashMap;

import javax.ejb.Stateless;
import javax.validation.ConstraintViolationException;

import br.com.xti.ouvidoria.model.TbManifestacao;
import br.com.xti.ouvidoria.model.TbUnidade;

/**
 * @author renato
 */
@Stateless
public class UnidadeDAO extends AbstractDAO<TbUnidade> {
    public UnidadeDAO() {
        super(TbUnidade.class);
    }
    
      @Override
    public String getNomeEntidade() {
        return "Unidade";
    }
      
       public Collection<TbUnidade> getPorEncaminhamentoManifestacao(TbManifestacao idManifestacao) {
        Collection<TbUnidade> retorno = null;
        try {
            HashMap<String, Object> map = new HashMap<String, Object>();
            map.put("idManifestacao", idManifestacao);
            retorno = selectList("SELECT t.idUnidadeRecebeu FROM TbEncaminhamento t WHERE t.idManifestacao = :idManifestacao", map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return retorno;
    }

    public void refresh(TbUnidade entity) {
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
