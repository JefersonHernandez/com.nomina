package com.nomina.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nomina.entities.Empleado;
import com.nomina.model.EmpleadoDao;

/**
 * Servlet implementation class EmpleadoController
 */
@WebServlet("/EmpleadoController")
public class EmpleadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpleadoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Empleado empleado = new Empleado();
		empleado.setCodigo(request.getParameter("codigo"));
		
		EmpleadoDao empleadoDao = new EmpleadoDao();
		
		Empleado aux = empleadoDao.find(empleado.getCodigo());
		
		
		request.setAttribute("empleado", aux);
		RequestDispatcher r = getServletContext().getRequestDispatcher("/DatosEmpleado.jsp");
		r.forward(request, response);
		//HttpSession session = request.getSession(true);
	//	session.setAttribute("codigo_empleado", aux.getCodigo());
		//request.getRequestDispatcher("/DatosEmpleado.jsp").forward(request, response);
		//doGet(request, response);
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		Date f = null;
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		//f = sd.parse(request.getParameter("fechanacimiento"));
		Empleado empleado = new Empleado();
		empleado.setCodigo(request.getParameter("codigo"));
		empleado.setCedula(request.getParameter("cedula"));
		empleado.setNombre(request.getParameter("nombre"));
		try {
			empleado.setFechaingreso(sd.parse(request.getParameter("fingreso")));
			empleado.setFecharetiro(sd.parse(request.getParameter("fretiro")));
			empleado.setFechanacimiento(sd.parse(request.getParameter("fnacimiento")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		EmpleadoDao empleadoDao = new EmpleadoDao();
		
		empleadoDao.insert(empleado);
		response.sendRedirect(request.getContextPath()+"/index.jsp");
		
		
	}

}
