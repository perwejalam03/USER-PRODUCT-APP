<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
		font-family: Arial, sans-serif;
	}
	h2 {
		font-size: 18px;
		margin-top: 10px;
		margin-bottom: 5px;
	}
</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	%>
	<h2>
		ID:<%=user.getId()%>
	</h2>
	<h2>
		Name:<%=user.getName()%>
	</h2>
	<h2>
		Age:<%=user.getAge()%>
	</h2>
	<h2>
		Phone:<%=user.getPhone()%>
	</h2>
	<h2>
		Email:<%=user.getEmail()%>
	</h2>
	<h2>
		Gender:<%=user.getGender()%>
	</h2>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>