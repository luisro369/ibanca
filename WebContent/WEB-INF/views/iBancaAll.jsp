<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Inicial</title>
<link rel="stylesheet" href="resources/css/formas.css">
<script type="text/javascript" src="resources/jquery-1.12.3.js"></script>
<script type="text/javascript" src="resources/sweetalert/sweetalert.min.js"></script>
<style>
table{
	border-collapse: collapse
}
</style>
</head>
<body class="grad1">
<center>
 <form class="form-inline"  action="${pageContext.request.contextPath}/home" method="post">
	<input type="submit" class="myButton"  value="Regresar" /><br><br>
	 <input type="hidden" id="username" name="username" value="${logedUserId}">
	  <input type="hidden" id="password" name="password" value="${logedUserPass }">
  </form>
  <div style=" margin-left: 10%;margin-right: 10%;">
  <center>
  	<table class="table">
	<thead class="thead-dark">
		<tr>
			<th>id de Usuario</th>
			<th>nombre de usuario</th>
			<th>saldo de usuario</th>
			<th>tipo de usuario</th>
			<th>Estado</th>
		</tr>
		</thead>
		<c:forEach var="u" items="${users}">
			<tr>
				<td>${u.userId}</td>
				<td>${u.userName}</td>
				<td>${u.userBalance}</td>
				<td>${u.userType}</td>
				<td>${u.userState}</td>
				<td>
 <form class="form-inline"  action="${pageContext.request.contextPath}/editarUsuario" method="post">
	<input type="submit" class="myButton"  value="Editar" /><br><br>
	 <input type="hidden" id="username" name="username" value="${logedUserId}">
	  <input type="hidden" id="password" name="password" value="${logedUserPass }">
  </form>
<form class="form-inline"  action="${pageContext.request.contextPath}/eliminarUsuario" method="post">
	<input type="submit" class="myButton"  value="Elimar" /><br><br>
	 <input type="hidden" id="username" name="username" value="${logedUserId}">
	  <input type="hidden" id="password" name="password" value="${logedUserPass }">
  </form>				
  </td>							
			</tr>
		</c:forEach>
	</table>
	</center>
	</div>
</center>
</body>
</html>