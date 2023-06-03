<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
form {
  width: 500px;
  margin: 0 auto;
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

input[type="text"] {
  display: block;
  margin-bottom: 10px;
  padding: 10px;
  width: 100%;
  border-radius: 5px;
  border: none;
  box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  cursor: pointer;
  font-size: 16px;
  margin-top: 10px;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

label {
  display: block;
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 5px;
}
</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		Product p = (Product) request.getAttribute("product");
	%>
	<form action="editproduct" method="post">
		<input type="hidden" value="<%=p.getId()%>" name="id"> Name<input
			type="text" name="nm" value="<%=p.getName()%>"><br>

		Description<input type="text" name="desc"
			value="<%=p.getDescription()%>"><br> Brand<input
			type="text" name="br" value="<%=p.getBrand()%>"><br>

		category<input type="text" name="cat" value="<%=p.getCategory()%>"><br>

		Image<input type="text" name='im' value="<%=p.getImage()%>"><br>

		Price<input type="text" name="price" value="<%=p.getPrice()%>"><br>

		<input type="submit" value="Update">
	</form>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>
