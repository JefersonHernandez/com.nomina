<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos Empleado</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color: whitesmoke;">
	<jsp:useBean id="nDao" class="com.nomina.model.EmpleadoDao"
		scope="request"></jsp:useBean>
	<div class="container" style="padding: 0px; background-color: #F2F2F2;">
		<%@include file="html/cabecera.html"%>
		<%@include file="html/menu.html"%>
		
		<table class="table mb-5 table-hover">
			<thead class='bg-light'>
				<tr class="table-info">
					<th scope='col'
						class='border-0 text-primary text-center text-uppercase'>Cedula</th>
					<th scope='col'
						class='border-0 text-primary text-center text-uppercase'>Nombre</th>
					<th scope='col'
						class='border-0 text-primary text-center text-uppercase'>Fecha
						Nacimiento</th>
					<th scope='col'
						class='border-0 text-primary text-center text-uppercase'>Fecha
						Ingreso</th>
					<th scope='col'
						class='border-0 text-primary text-center text-uppercase'>Fecha
						Retiro</th>
				</tr>
			</thead>
			<tbody>
			
					<tr>
						<td class="text-center font-weight-light"><c:out
								value="${empleado.cedula}" /></td>
						<td class="text-center font-weight-light"><c:out
								value="${empleado.nombre}" /></td>
						<td class="text-center font-weight-light"><c:out
								value="${empleado.fechanacimiento}" /></td>
						<td class="text-center font-weight-light"><c:out
								value="${empleado.fechaingreso}" /></td>
						<td class="text-center font-weight-light"><c:out
								value="${empleado.fecharetiro}" /></td>

					</tr>
				
			</tbody>
		</table>

		<%@include file="html/footer.html"%>

	</div>

</body>
</html>