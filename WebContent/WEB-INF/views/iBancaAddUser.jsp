<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
<title>Insert title here</title>
</head>
<body>
<center>iBanca (AGREGAR UN NUEVO USUARIO)</center>
<div class="row" style="margin-left: 20%;">
   <center> <div class="col-xs-3"> 
	<form class="form-group" modelAttribute="user" action="${pageContext.request.contextPath}/addNewUser" method="post">
  <div class="form-group">
    <label for="user">ingrese su nombre</label>
    <input type="text"  class="form-control" name="addUserName" id="editUsername" placeholder="insert username here">
  </div>
<div class="form-group">
    <label for="user">ingrese su contraseña</label>
    <input type="password"  class="form-control" name="addUserPass" id="editUsername" placeholder="insert username here">
  </div>
  <div class="form-group">
    <label for="user">Monto con el que se apertura la cuenta</label>
    <input type="text"  class="form-control" name="addUserBalance" id="editUsername" placeholder="insert username here">
  </div>
  <div class="form-group">
    <label for="pass">Tipo de usuario</label>
    <input type="text" class="form-control" name="addUserType" id="userType" placeholder="insert usertype here">
  </div>
   <div class="form-group">
    <label for="pass">Estado de usuario</label>
    <input type="text" class="form-control" name="addUserState" id="userState" placeholder="insert userstate here">
  </div>
  </center>
  	<input type="hidden" id="username" name="username" value="${logedUserId}">
	  <input type="hidden" id="password" name="password" value="${logedUserPass}">
  <button type="submit" class="btn btn-default">Guardar</button>
	</form>
	
	</div>

</body>
</html>