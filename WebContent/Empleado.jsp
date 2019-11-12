<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Empleados</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: arial;
}

.contenedor-buscar {
	display: flex;
	align-items: center;
	margin: 0 auto;
	height: 200px;
	width: 600px;
}

.txtBuscar {
	display: inline-block;
	margin-right: 1.5em;
	font-size: 17px;
}

.cmp-buscar {
	display: inline-block;
	margin-right: 1.5em;
	border: 1px solid #424242;
	border-radius: 5px;
	height: 40px;
	padding-left: .9em;
	font-size: 16px;
	width: 300px;
}

.cmp-buscar:focus {
	outline: none;
}

.btn-buscar {
	cursor: pointer;
	display: inline-block;
	margin-right: 1.5em;
	border: 0;
	background-color: blue;
	width: 120px;
	border-radius: 5px;
	color: white;
	font-weight: bold;
	height: 40px;
}

.btn-buscar:hover {
	background-color: purple;
}
</style>
</head>
<body>
	<div class="container" style="padding: 0px; background-color: #F2F2F2;">
		<jsp:useBean id="nDao" class="com.nomina.model.EmpleadoDao"
			scope="request"></jsp:useBean>
		<%@include file="html/cabecera.html"%>
		<%@include file="html/menu.html"%>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6 text-center">
				<form class="form-horizontal" method="GET"
					action="EmpleadoController">
					<fieldset>



						<div class="form-group">

							<div class="contenedor-buscar">
								<p class="txtBuscar">Código:</p>
								<input class="cmp-buscar" type="text" name="codigo" id="codigo">
								<button class="btn-buscar" type="submit">Buscar</button>
							</div>

						</div>


					</fieldset>

				</form>
			</div>

		</div>

		<%@include file="html/footer.html"%>

	</div>
</body>
</html>