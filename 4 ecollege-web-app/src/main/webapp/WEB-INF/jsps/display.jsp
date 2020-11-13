<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>View page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Ecollege System</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
    </ul>
    <form action="#">
      <input style="margin-top:12px; margin-left:12px;" type="text"  placeholder="Search By Id" name="search">
      <input type="submit" value="go"> 
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/add"><span class="glyphicon glyphicon-user"></span>add new record</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<div class="container">
  <table class="table">
	<thead>	
		<tr>
			<th></th>
			<th>Student Name</th>
			<th>Nationality</th>
			<th>Course</th>
			<th>Intake</th>
			<th>Current Year</th>
			<th>Age</th>
			<th></th>
		</tr>
	</thead>
		<c:forEach items="${students}" var="student">
			<tr>
				<td>${student.studentId}</td>
				<td>${student.studentName}</td>
				<td>${student.nationality}</td>
				<td>${student.course}</td>
				<td>${student.intake}</td>
				<td>${student.currentYear}</td>
				<td>${student.age}</td>
				<td>
					<a href="delete?id=${student.studentId}"><img src="https://img.icons8.com/material-rounded/15/000000/delete.png" /></a>
					<a href="update?id=${student.studentId}"><img src="https://img.icons8.com/material-rounded/15/000000/edit.png" /></a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
	
</body>
</html>
