<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${ecolleges}" var="ecollege">
			<form action="updateData" method="post">
				<pre>
					id: <input type="text" name="id" value="${ecollege.id}" readonly/>
					Name: <input type="text" name="name" value="${ecollege.name}" />
					Email: <input type="email" name="email" value="${ecollege.email}" /> 
					Confirm Email: <input type="email" name="confirmE" value="${ecollege.confirmEmail}" />
					Password: <input type="password" name="password" value="${ecollege.password}" />
					Confirm Password: <input type="password" name="confirmP" value="${ecollege.confirmPassword}" />
					Gender:
						<input type="text" name="gender" value="${ecollege.gender}" />
						<input type="submit" value="save" />
				</pre>
			</form>	
	</c:forEach>
</body>
</html>