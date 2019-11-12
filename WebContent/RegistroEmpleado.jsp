<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: arial;
}

.contenedor-reg {
	margin: 0 auto;
	padding: 2em 0;
	width: 700px;
}

.title-reg {
	display: block;
	text-align: center;
	width: 100%;
}

.form-reg {
	display: block;
	padding-top: 1.5em;
	width: 100%;
}

.cmp-contenedor {
	display: block;
	padding: .3em 0;
	width: 100%;
}

.txt-reg {
	display: inline-block;
	width: 29%;
}

.cmp-reg {
	border-radius: 3px;
	border: 1px solid #424242;
	display: inline-block;
	height: 30px;
	padding-left: .5em;
	width: 69%;
}

.cmp-reg:focus {
	outline: none;
}

.contenedor-btns {
	display: block;
	padding-top: 1.5em;
	text-align: center;
	width: 100%;
}

.btn-registrar {
	background-color: #CC99CC;
	cursor: pointer;
	border: 0;
	border-radius: 3px;
	color: white;
	font-size: 16px;
	height: 30px;
	width: 120px;
}

.btn-registrar:hover {
	background-color: #CC3366;
}

.btn-volver {
	background-color: #CC3333;
	cursor: pointer;
	border: 0;
	border-radius: 3px;
	color: white;
	font-size: 16px;
	height: 30px;
	width: 100px;
}

.btn-volver:hover {
	background-color: #CC3300;
}
</style>

<meta charset="ISO-8859-1">
<title>Registro Empleado</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="padding: 0px; background-color: #F2F2F2;">
		<%@include file="html/cabecera.html"%>
		<%@include file="html/menu.html"%>

		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6 text-center">
				<form class="form-horizontal" method="POST"
					action="EmpleadoController">
					<fieldset>



						<div class="contenedor-reg">
							<h2 class="title-reg">
								Registro de Empleados
								</h1>
								<div class="form-reg">
									<div class="cmp-contenedor">
										<p class="txt-reg">Código:</p>
										<input class="cmp-reg" id="" type="text" name="codigo">
									</div>
									<div class="cmp-contenedor">
										<p class="txt-reg">Cedula:</p>
										<input class="cmp-reg" id="" type="text" name="cedula">
									</div>
									<div class="cmp-contenedor">
										<p class="txt-reg">Nombre:</p>
										<input class="cmp-reg" id="" type="text" name="nombre">
									</div>
									<div class="cmp-contenedor">
										<p class="txt-reg">Fecha nacimiento:</p>
										<input class="cmp-reg" id="" type="date" name="fnacimiento">
									</div>
									<div class="cmp-contenedor">
										<p class="txt-reg">Fecha ingreso:</p>
										<input class="cmp-reg" id="" type="date" name="fingreso">
									</div>
									<div class="cmp-contenedor">
										<p class="txt-reg">Fecha retiro:</p>
										<input class="cmp-reg" id="" type="date" name="fretiro">
									</div>
								</div>
								<div class="contenedor-btns">
									<button type="input" class="btn-registrar">Registrar</button>
									<button class="btn-volver">Volver</button>
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