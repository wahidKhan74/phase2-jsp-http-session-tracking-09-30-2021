<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="failure.jsp"  session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email == null || email.equals("") || password == null || password.equals("")) {
			throw new RuntimeException("Login Failure due to invalid user input !");
		} else {
			if (email.equals("admin@gmail.com") && password.equals("admin@123")) {
				int expireTime = 60*60;
				
				// use implicit object session
				session.setAttribute("email", email);
				session.setAttribute("userId", UUID.randomUUID());
				
				out.print("<h4 style='color:green;text-align:center'>Successfully Logged In !<h2>");
			} else {
				throw new RuntimeException("Login Failed due to Invalid Credentials !");
			}
		}
	%>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>