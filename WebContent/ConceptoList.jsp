<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conceptos</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<jsp:useBean id="nDao" class="com.nomina.model.ConceptoDao"
		scope="request"></jsp:useBean>
<div class="container" style="padding: 0px;background-color: #F2F2F2;">
<%@include file="html/cabecera.html" %>
<%@include file="html/menu.html" %>


<table class="table mb-5 table-hover">
		<thead class='bg-light'>
			<tr class="table-info">
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Codigo Concepto</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Descripcion Concepto</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Tipo Concepto</th>
			
			</tr>
		</thead>
		<tbody>
			<c:forEach var="n" items="${nDao.list()}">
				<tr>
					<td class="text-center font-weight-light"><c:out value="${n.codconcepto}" /></td>
					<td class="text-center font-weight-light"><c:out value="${n.descripcion}" /></td>
					<td class="text-center font-weight-light"><c:out value="${n.tipoconcepto.descripcion}" /></td>
					
				</tr>
			</c:forEach>
		</tbody>
		</table>
<%@include file="html/footer.html" %>
</div>

</body>
</html>