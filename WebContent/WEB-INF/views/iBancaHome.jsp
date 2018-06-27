<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	ENTRASTE PERROOOO!!!!!!!!!!!!!
	<!--  
	<h1>Bienvenido usuario: </h1> <h1>${user.getUserName}</h1>
	<h2>Aca puedes ver tus registros de transacciones</h2>
	<div>
		<table>
			<thead>
			<tr>
				<th>Id transaccion</th>
				<th>Tipo de transaccion</th>
				<th>Fecha de transaccion</th>
				<th>Cantidad de transaccion</th>
				<th>Concepto de transaccion</th>
				<th>Usuario de transaccion</th>
				<th>Cuenta de transaccion</th>
			</tr>
			</thead>
			
			<c:forEach var="c" items = "${transaction}">
				<tr>
					<td>${c.transId}</td>
					<td>${c.user}</td>
					<td>${c.transType}</td>
				</tr>
			</c:forEach>
			
		
		</table>
	</div>
	
	-->
</body>
</html>