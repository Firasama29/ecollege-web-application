<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page isELIgnored="false"%>
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <title>View page</title>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                <link rel="stylesheet" href="/resources/css/subjects.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            </head>
            <body>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="/myProfile" style="font-size: 16px;">Home</a>
                            <a class="navbar-brand" href="/logs" style="font-size: 16px;">Logs</a>
                        </div>
                    </div>
                    <a class="navbar-brand" href="/subjects" style="font-size: 16px; float: right; margin-right: 65px; margin-top: -50px;">View subjects</a>
                    <a class="navbar-brand" href="/" style="font-size: 16px; float: right; margin-top: -50px;">Logout</a>
                </nav>
                <h2>Add a new subject</h2>
                <div class="container">
                	<form method="post" action="/addSubject" >
	                    <table class="table">
	                        <thead>
	                            <tr>
	                                <th>Subject Name</th>
	                                <th>Faculty</th>
	                                <th>Assignments</th>
	                                <th>Tests</th>
	                                <th></th>
	                            </tr>
	                        </thead>
	                            <tr>
	                                <td><input type="text" name="subjectName" required></td>
	                                <td><input type="text" name="faculty" required></td>
	                                <td><input type="text" name="assignments" required></td>
	                                <td><input type="text" name="tests" required></td>
	                                <td>
	                                    <button>submit</button>
	                                </td>
	                            </tr>
	                    </table>
	                </form>    
                </div>
            </body>
            </html>