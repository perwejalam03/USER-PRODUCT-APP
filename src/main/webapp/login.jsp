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
    background-color: #f2f2f2;
    
  }
  form {
    margin: 50px auto;
    padding: 20px;
    max-width: 400px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0px 0px 10px #ccc;
  }
  label {
    display: block;
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  input[type="tel"],
  input[type="password"] {
    display: block;
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-size: 16px;
    margin-bottom: 20px;
    box-sizing: border-box;
  }
  input[type="submit"] {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  input[type="submit"]:hover {
    background-color: #3e8e41;
  }
  h2 {
    margin-top: 20px;
    text-align: center;
  }
  a {
    color: #4CAF50;
    text-decoration: none;
    font-weight: bold;
  }
  a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body id="main">
	<%
	String message = (String) request.getAttribute("msg");
	if (message != null) {
	%>
	<h2>
		<%=message%>
	</h2>
	<%
	}
	%>
	<form action="login" method="post" id="form">
		<h1>Login Form</h1>
		Phone Number <input type="tel" name="ph"
			placeholder="Enter Your Phone Number"><br> Password <input
			type="password" name="ps" placeholder="Enter Your Password"><br>
		<input type="submit" value="Login" id="btn">
		<h2>
		<a href="register.jsp">Click here to Create an account</a>
		</h2>
	</form>
	
</body>
</html>