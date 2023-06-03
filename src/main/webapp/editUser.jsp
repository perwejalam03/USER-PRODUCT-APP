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
            background-color: #f2f2f2;
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px #ccc;
            width: 400px;
            margin: 20px auto;
        }
        h2 {
            text-align: center;
        }
        input[type=text], input[type=tel], input[type=email], input[type=password], input[type=number] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=radio] {
            margin: 8px 5px;
        }
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<%
	User user=(User)session.getAttribute("user");
	if(user!=null){
	%>
	<form action="edit" method="post">
	<h2>Edit User</h2>
		<input type="hidden" name="id" value="<%=user.getId()%>">
		Name<input type="text" name="nm" value="<%=user.getName()%>"><br>
		Phone<input type="tel" name="ph" value="<%=user.getPhone()%>"><br>
		Email<input type="email" name="em" value="<%=user.getEmail()%>"><br> 
		Age<input type="number" name="age" value="<%=user.getAge()%>"><br> 
		Gender<input type="radio" name="gender" value="Male">
		Male <input type="radio" name="gender" value="Female">Female<br> 
		Password<input type="password" name="ps" value="<%=user.getPassword()%>"><br>
		<input type="submit" value="Update">
	</form>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>