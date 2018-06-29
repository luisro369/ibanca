<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- libreria de jstl core tags, ponela arriba yo la puse aca para que no se te olvidara -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <h2>Beneficiarios</h2>

	
					
	<div>
		<table>
			<thead>
			<tr>
				<th>Id Usuario</th>
				<th>Id Beneficiario</th>
				<th>Nombre Beneficiario</th>
			</tr>
			</thead>
				<c:forEach var = "b" items = "${beneficiary}"><!-- nombre del mav.addObject -->
				<tr>
					<td>${b.beneficiary}</td>
					<td>${b.beneficiary}</td>
					<td>${b.beneficiary}</td>
				</tr>
				</c:forEach>
		</table>
	</div>

</body>
</html>