<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ page errorPage="failure.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<%
		String email = (String) session.getAttribute("email");
		UUID userId = (UUID) session.getAttribute("userId");

		if (email != null & userId != null) {
			out.print("<h4 style='color:green;text-align:center'>Hello user " + email + " and userId : " + userId
					+ "</h2>");
		} else {
			throw new ServletException("Invalid user access, please login first");
		}
	%>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>