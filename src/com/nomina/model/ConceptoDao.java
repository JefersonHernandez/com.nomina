package com.nomina.model;

import java.util.List;

import com.nomina.util.GenericDao;
import com.nomina.util.Conexion;
import com.nomina.entities.Concepto;
public class ConceptoDao extends Conexion<Concepto> implements GenericDao<Concepto> {

	public ConceptoDao() {
		super(Concepto.class);
		// TODO Auto-generated constructor stub
	}



}
