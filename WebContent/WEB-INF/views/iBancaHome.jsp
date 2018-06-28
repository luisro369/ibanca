<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Todo lo relacionado al date picker -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    var variable = $( "#datepicker" ).datepicker();
  } );
  </script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="submit" class="Button"  value="Regresar" onclick="location.href='${pageContext.request.contextPath}/index'"/>
	<h1>Bienvenido usuario: </h1> <td>${user.userName}</td>
	<h2>Aca puedes ver tus registros de transacciones</h2>
	
	<p>Date: <input type="text" id="datepicker" value = "${dp}"></p>

	
	<c:choose>
		<c:when test = "${dp == t.fechaDelegate }">
			<h1>son iguales perrro</h1>
		</c:when>
		<c:otherwise>
			<h1>Lo sentimos, no hay registro de esa fecha porfavor ingrese otra</h1>
		</c:otherwise>
	</c:choose>
	
					
	<div>
		<table>
			<thead>
			<tr>
				<th>Id transaccion</th>
				<th>Tipo de transaccion</th>
				<th>Fecha de transaccion</th>
				<th>Cantidad de transaccion</th>
				<th>Concepto de transaccion</th>
				<th>Usuario a transferir</th>
				<th>Id de usuario a transferir</th>
			</tr>
			</thead>
				<c:forEach var = "t" items = "${transaction}">
				<tr>
					<td>${t.transId}</td>
					<td>${t.transType}</td>
					<td>${t.fechaDelegate}</td>
					<td>${t.transAmount}</td>
					<td>${t.transConcept}</td>
					<td>${t.transUser}</td>
					<td>${t.transAccount}</td>
				</tr>
				</c:forEach>
		</table>
	</div>
	
</body>
</html>




