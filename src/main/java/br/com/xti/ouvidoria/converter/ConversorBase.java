package br.com.xti.ouvidoria.converter;

import br.com.xti.ouvidoria.dao.UfDAO;
import br.com.xti.ouvidoria.model.TbUF;

import java.io.Serializable;

import javax.ejb.EJB;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;

/**
 * @author renato
 */
@SuppressWarnings("serial")
public abstract class ConversorBase implements Converter, Serializable {

    @EJB
    protected UfDAO dao;

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        TbUF estado = null;
        if(value == null || value.isEmpty()) {
            return estado;
        }

        try {
            estado = dao.find(Integer.parseInt(value));
        } catch (NumberFormatException e) { }
        return estado;
    }
}
