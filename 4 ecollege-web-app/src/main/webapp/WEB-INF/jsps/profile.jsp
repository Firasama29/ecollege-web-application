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
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="/add"><span></span>View my subjects</a></li>
                            <li><a href="update?id=${student.studentId}"><span class="glyphicon glyphicon-edit"></span> Edit my profile</a></li>
                            <li><a href="delete?id=${student.studentId}"><span></span> Delete my profile</a></li>
                            <li><a href="/"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                        </ul>
                    </div>
                </nav>
                <div class="container">
                    <table class="table">
                    	<c:forEach items="${profiles}" var="profile">
                        <thead>
                            <tr>
                                <th>My student-id</th>
                                <th>${profile.studentId}</th>
                            </tr>
                            <tr>
                                <th>Name</th>
                                <th>${profile.studentName}</th>
                            </tr>
                            <tr>
                                <th>Nationality</th>
                                <th>${profile.nationality}</th>
                            </tr>
                            <tr>
                                <th>Course</th>
                                <th>${profile.course}</th>
                            </tr>
                            <tr>
                                <th>Intake</th>
                                <th>${profile.intake}</th>
                            </tr>
						</c:forEach>
                    </table>
                </div>

            </body>

            </html>