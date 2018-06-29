<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div  style="margin-top: 10%;"><center>


	

	 <h1>Bienvenido a eBanca</h1>
	 <form class="form-inline"  action="${pageContext.request.contextPath}/home" method="post">
	  <div class="form-group">
	    <label for="user">User</label>
	    <input type="text" class="form-control" name="username" id="username" placeholder="insert username here">
	  </div>
	
	  <div class="form-group">
	    <label for="pass">Password</label>
	    <input type="password" class="form-control" name="password" id="password" placeholder="insert password here">
	  </div>
	  
	  <button type="submit" class="btn btn-default" onclick="validate();">login</button>
	</form>
	
	<!--  
	<c:set var="usr" value = "${u.userId}"/>
	<c:set var = "usr2" value = "${searchParameters.searchBy == 'username'}" />
	<c:forEach var = "u" items = "${usuarios}">
		<c:choose>
			<c:when test = "${usr == usr2 }">
				<c:set var = "cont" value = "true" />
			</c:when>
			<c:otherwise>
				<c:set var = "cont" value = "false" />
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:choose>
		<c:when test = "${cont == 'true' }">
		
		</c:when>
		<c:otherwise>
			<c:out value="no perro">no perro 2</c:out>
		</c:otherwise>
	</c:choose>
	
	-->
	
	<script type="text/javascript">
		function validate(){
			var cont = 0;
			var usr = document.getElementById("username").value;
			var pass = document.getElementById("password").value;
			for(i = 0; i < 10 ;i++){
				if((usr == "${usuarios.get(i).userId}") && (pass == "${usuarios.get(i).userPass}")){
					cont = 0;
				}
				else{cont = 1;}
			}//for
			if(cont == 0){
				alert("bienvenido");	
			}
			else{
				alert("usuario o contraseña incorrectos");
			}
			
		}
	</script>
	
	
	
</center>
</div>
</body>
</html>