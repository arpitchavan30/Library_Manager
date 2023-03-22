<%@page import="javax.websocket.SendResult"%>
<%@page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User LogOut</title>
</head>
<body>

	<%
		session.invalidate();
		response.sendRedirect("Login.html");
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
	%>

</body>
</html>