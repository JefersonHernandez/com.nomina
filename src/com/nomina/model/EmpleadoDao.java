package com.nomina.model;

import com.nomina.entities.Concepto;
import com.nomina.entities.Empleado;
import com.nomina.util.Conexion;
import com.nomina.util.GenericDao;

public class EmpleadoDao extends Conexion<Empleado> implements GenericDao<Empleado>{

	public EmpleadoDao() {
		// TODO Auto-generated constructor stub
		super(Empleado.class);
	}

}
