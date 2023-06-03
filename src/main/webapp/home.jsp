<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .navbar {
            background-color:black;
            display: flex;
            justify-content: space-between;
        }
        
        .navbar a {
            color: white;
            align-items:center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }
        
        .navbar a:hover {
            background-color: #ddd;
            color: blue;
        }
    </style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	%>
	<h2>
		Welcome Mr.<%=user.getName()%>
	</h2>
	<div class="navbar">
	<h2>
		<a href="editUser.jsp">Edit Your Profile</a>
	</h2>
	<h2>
		<a href="viewUser.jsp">View Your Profile</a>
	</h2>
	<h2>
		<a href="delete">Delete Your Profile</a>
	</h2>
	<h2>
		<a href="logout">Logout</a>
	</h2>
	<h2>
		<a href="addProduct.jsp">Add product</a>
	</h2>
	<h2>
		<a href="viewproducts"> View products </a>
	</h2>
	</div>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>