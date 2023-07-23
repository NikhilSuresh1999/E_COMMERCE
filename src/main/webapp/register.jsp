<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Regestration</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>

<body>

   <h2 style="color:red">Register here</h2>
   <br>
   <div class="register">
      <form action="r" method="post">
      <label><b> User Name</b></label><br>
      <input type="text" name="uname" id="textbox" placeholder="enter the name"/>
      <br><br>
      <label><b>Email</b></label><br>
      <input type="text" name="mail" id="textbox" placeholder="enter the email"/>
      <br><br>
      <label><b>Password</b></label><br>
      <input type="password" name="password" id="textbox" placeholder="enter the password"/>
      <br><br>
      <label><b>Gender</b></label><br>
      Male<input type="radio" name="gender" value="male"/><br>
      Female<input type ="radio" name="gender" value="female"/><br>
      Others<input type ="radio" name="gender" value="others"/>
      <br><br>
      <label><b>Address</b></label><br>
     <textarea rows="2" cols="20" id="textbox" name="address" class="form-address"></textarea>
     <br><br>
     
      <input type="submit" value="register" id="sub"/><br>
      <br>
      <a href="login.jsp">Already Registered? Sign up instead!!..</a>
      
      
      </form>
   
   </div>

</body>
</html>