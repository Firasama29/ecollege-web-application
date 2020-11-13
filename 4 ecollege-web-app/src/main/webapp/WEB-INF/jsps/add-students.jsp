<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Add new record</title>
</head>
<body>
			<form class="form-inline" action="/add" method="post" >
				<div class="form-group">
				      <label for="studentName">Name:</label><br>
				      <input type="text" class="form-control" id="studentName" placeholder="Enter name" name="studentName">
		    	</div><br><br>
			    <div class="form-group">
				      <label for="email">Email:</label><br>
				      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
			    </div><br><br>
			    <div class="form-group">
				      <label for="confirmEmail">Confirm Email:</label><br>
				      <input type="email" class="form-control" id="confirmEmail" placeholder="Confirm email" name="confirmEmail">
			    </div><br><br>
			    <div class="form-group">
				      <label for="password">Password:</label><br>
				      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
			    </div><br><br>
			    <div class="form-group">
				      <label for="confirmPassword">Confirm Password:</label><br>
				      <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm password" name="confirmPassword">
			    </div><br><br>
			    <div class="form-group">
				      <label for="nationality">Nationality:</label><br>
				      <input type="text" class="form-control" id="nationality" placeholder="nationality" name="nationality">
			    </div><br><br>
			    <div class="form-group">
				      <label for="intake">Intake:</label><br>
				      <input type="date" class="form-control" id="enrollDate" name="enrollDate">
			    </div><br><br>
			    <div class="form-group">
				      <label for="currentYear">Current Year:</label><br>
				      <input type="text" class="form-control" id="currentYear" name="currentYear">
			    </div><br><br>
			    <div class="form-group">
				      <label for="graduationYear">Graduation Year:</label><br>
				      <input type="text" class="form-control" id="graduationYear" name="graduationYear">
			    </div><br><br>
			    <div class="form-group">
				      <label for="age">Age:</label><br>
				      <input type="number" class="form-control" id="age" placeholder="your age" name="age">
			    </div><br><br>
		   	    	  <button type="submit" class="btn btn-default">Submit</button>
			</form>
			<br>
			<a href="/students">view all students</a><br>
</body>
</html>