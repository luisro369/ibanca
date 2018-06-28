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
<center>iBanca (EDICION DE USUARIOS YA EXISTENTES)</center>
<div class="row" style="margin-left: 20%;">
    <div class="col-xs-6"><table class="table">
	<thead class="thead-dark">
		<tr>
		<th><center>Informacion actual del usuario</center></th>	
		
		</tr>
		</thead>
		<tr>
			<th>Id:</th>
			<td>${users.userId}</td>
		</tr>
		<tr>
			<th>Nombre:</th>
			<td>${users.userName}</td>
		</tr>
		<tr>
			<th>Saldo:</th>
		<td>${users.userBalance}</td>
		</tr>
		<tr>
			<th>Tipo:</th>
				<td>${users.userType}</td>
		</tr>
		<tr>
			<th>Estado:</th>
				<td>${users.userState}</td>
		</tr>
			
	</table>
	</div>
    <div class="col-xs-3"> <center>
	<form class="form-group" modelAttribute="user" action="${pageContext.request.contextPath}/updateUser" method="post">
  <div class="form-group">
    <label for="user">Nombre</label>
    <input type="text"  class="form-control" name="editUsername" id="editUsername" placeholder="insert username here">
  </div>

  <div class="form-group">
    <label for="pass">Tipo de usuario</label>
    <input type="text" class="form-control" name="userType" id="userType" placeholder="insert usertype here">
  </div>
  
   <div class="form-group">
    <label for="pass">Estado de usuario</label>
    <input type="text" class="form-control" name="userState" id="userState" placeholder="insert userstate here">
  </div>
  </center>
  	 <input type="hidden" id="userId" name="userId" value="${users.userId}">
  	<input type="hidden" id="username" name="username" value="${logedUserId}">
	  <input type="hidden" id="password" name="password" value="${logedUserPass}">
  <button type="submit" class="btn btn-default">Guardar</button>
	</form>
	
	</div>
</div>

</body>
</html>