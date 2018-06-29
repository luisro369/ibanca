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
<body>
<div  style="margin-top: 10%;"><center>


	<script type="text/javascript">
		alert("hola");
	</script>

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
	  
	  <button type="submit" class="btn btn-default">login</button>
	</form>
	
	
	
</center>
</div>
</body>
</html>