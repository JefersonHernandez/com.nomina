package com.nomina.model;

import com.nomina.entities.Liquidacion;
import com.nomina.util.Conexion;
import com.nomina.util.GenericDao;

public class LiquidacionDao  extends Conexion<Liquidacion> implements GenericDao<Liquidacion>{

	public LiquidacionDao(){
		super(Liquidacion.class);
		// TODO Auto-generated constructor stub
	}

}
