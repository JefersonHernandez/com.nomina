package com.nomina.model;

import com.nomina.entities.Proceso;
import com.nomina.entities.Tercero;
import com.nomina.util.Conexion;
import com.nomina.util.GenericDao;

public class TerceroDao extends Conexion<Tercero> implements GenericDao<Tercero>{

	public TerceroDao() {
		super(Tercero.class);
		// TODO Auto-generated constructor stub
	}

}
