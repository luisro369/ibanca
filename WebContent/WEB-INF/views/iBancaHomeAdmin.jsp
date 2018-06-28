<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body><center>
		INICIO DE SESION CON EXITO  (MODO ADMINISTRADOR)
		
<form class="form-inline"  action="${pageContext.request.contextPath}/verTodos" method="post">
  <input type="hidden" id="username" name="username" value="${logedUserId}">
	  <input type="hidden" id="password" name="password" value="${logedUserPass}">
  <button type="submit" class="btn btn-default">Ver todos</button>
</form>

<form class="form-inline"  action="${pageContext.request.contextPath}/addUser" method="post">
  <input type="hidden" id="username" name="username" value="${logedUserId}">
	  <input type="hidden" id="password" name="password" value="${logedUserPass}">
  <button type="submit" class="btn btn-default">Añadir usuario</button>
</form>
</center>

</body>
</html>