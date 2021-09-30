<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Failure Response jsp page</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<h3 style='color: red; text-align: center'>Login Failure</h3>
	<%
		//implicit exception
		// exception.printStackTrace(response.getWriter());
	%>
	<p style='color: red; text-align: center'>
		<%=exception.getMessage()%>
	</p>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>