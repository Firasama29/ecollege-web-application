<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${contextPath}/resources/css/login.css" rel="stylesheet">
</head>
<body>
<h2 style="text-align:center">Connect with friends</h2>
<form action="/myProfile" method="get">
  <div class="div2" >
    <input type="text" placeholder="Enter username or email" name="uname" required><br>
    <input type="password" placeholder="Enter Password" name="psw" required><br>
    <button type="submit">Login</button><br>
  </div>
</form>
<div class="container" style="background-color:#f1f1f1">
  <form action="/singup" method="get">
    <input type="submit" class="signup" value="Signup"/>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </form>  
</div>
</body>
</html>
