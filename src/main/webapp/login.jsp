<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="login.css" type="text/css">
</head>
<body>
<div class="login">
  <form id="login" action="log" method="post">
     <label>
     <b>Username</b>
     </label>
     <input type="text" id="textbox" name="uname" placeholder="enter the username"/>
     <br><br>
     <label>
     <b>Password</b></label>
     <input type="password" id="textbox" name="pass" placeholder="enter the password"/>
     <br><br>
     <input type="submit" id="sub" value="Log in"/>
     <br><br>
     <a href="register.jsp" >New user? Register here</a>
  
  </form>

</div>

</body>
</html>