package com.nomina.model;

import com.nomina.entities.Liquidacion;
import com.nomina.entities.Proceso;
import com.nomina.util.Conexion;
import com.nomina.util.GenericDao;

public class ProcesoDao extends Conexion<Proceso> implements GenericDao<Proceso>{

	public ProcesoDao() {
		// TODO Auto-generated constructor stub
		super(Proceso.class);
	}

}
