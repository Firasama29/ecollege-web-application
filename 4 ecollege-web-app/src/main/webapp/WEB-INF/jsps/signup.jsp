<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="/resources/css/signup.css" rel="stylesheet">
    </head>
    <body>
        <h2 style="text-align:center;">Signup Now</h2>
        <form action="/profile" method="post">
            <div class="div2">
                <input type="text" placeholder="Enter name" name="studentName" required><br>
                <input type="email" placeholder="Enter email" name="email" required><br>
                <input type="email" placeholder="Confirm email" name="confirmEmail" required><br>
                <input type="password" placeholder="Enter password" name="password" required><br>
                <input type="password" placeholder="confirm password" name="confirmPassword" required><br>
                <input type="text" placeholder="Enter your nationality" name="nationality" required><br>
            </div><br>
            <div class="div3 date">
                <label for="enrollDate"><b>Enroll date</b></label>
                <input type="date" value="2020-10-24"><br><br>
            </div>
            <div class="div2">
                <select id="course">
                    <option value="IT ">Select a course..</option>
                    <option value=" Software Engineering ">Software Engineering</option>
                    <option value="Manufacturing Engineering ">Manufacturing Engineering</option>
                    <option value="Civil Engineering ">Civil Engineering</option>
                    <option value="IT ">IT</option>
                    <option value="Aviation ">Aviation</option>
                </select>
            </div><br>
            <div class="div2 ">
                <button type="submit">Signup</button>
            </div>
        </form>
    </body>
    </html>