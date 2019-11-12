package com.nomina.model;

import com.nomina.entities.Tipoconcepto;
import com.nomina.util.Conexion;
import com.nomina.util.GenericDao;

public class TipoConceptoDao extends Conexion<Tipoconcepto> implements GenericDao<Tipoconcepto>{

	public TipoConceptoDao() {
		// TODO Auto-generated constructor stub
		super(Tipoconcepto.class);
	}

}
