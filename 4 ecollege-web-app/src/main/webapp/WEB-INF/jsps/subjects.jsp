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
                            <div class="dropdown" class="navbar navbar-inverse">
                                <button onclick="myFunction()" class="dropbtn">Search subjects..</button>
                                <div id="myDropdown" class="dropdown-content">
                                    <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
                                    <c:forEach items="${subjects}" var="subject">
                                        <a href="subjects?id=${subject.subjectId}">${subject.subjectName}</a>
                                    </c:forEach>
                                </div>
                            </div>
                            <a class="navbar-brand" href="/logs" style="font-size: 16px;">Logs</a>
                        </div>
                    </div>
                    <a class="navbar-brand" href="/addSubject" style="font-size: 16px; float: right; margin-right: 65px; margin-top: -50px;">New subject</a>
                    <a class="navbar-brand" href="/" style="font-size: 16px; float: right; margin-top: -50px;">Logout</a>
                </nav>
                <div class="container">
                    <table class="table">
                        <thead>
                            <tr>
                            	<th></th>
                                <th>Subject Name</th>
                                <th>Faculty</th>
                                <th>Assignments</th>
                                <th>Tests</th>
                                <th></th>
                            </tr>
                        </thead>
                        <c:forEach items="${subjects}" var="subject">
                            <tr>
                            	<td>${subject.subjectId}</td>
                                <td>${subject.subjectName}</td>
                                <td>${subject.faculty}</td>
                                <td>${subject.assignments}</td>
                                <td>${subject.tests}</td>
                                <td>
                                    <a href="/deleteSubject?subjectId=${subject.subjectId}" title="delete"><img src="https://img.icons8.com/material-two-tone/15/000000/delete" /></a>
                                    <a href="updateSubject?subjectId=${subject.subjectId}"><img src="https://img.icons8.com/material-rounded/15/000000/edit.png" /></a>
                                </td>
                            </tr>
						</c:forEach>
                    </table>
                </div>
                <script src="/resources/js/subjects.js"></script>
            </body>
            </html>