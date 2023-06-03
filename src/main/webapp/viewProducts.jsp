<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
  border-collapse: collapse;
  width: 100%;
  margin: auto;
  font-family: Arial, sans-serif;
}

th, td {
  text-align: left;
  padding: 8px;
  border-bottom: 1px solid #ddd;
}
th:hover{
background-color: aqua;
}

td:hover{
font-weight: bolder;
}
td a {
  color: #0000ff;
  text-decoration: none;
}

td a:hover {
  text-decoration: underline;
  font-weight: bolder;
}
#eicon{
color: green;
}
#dicon{
color: red;
}
</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		List<Product> products = (List<Product>) request.getAttribute("products");
	%>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Desription</th>
			<th>Brand</th>
			<th>Category</th>
			<th>Image</th>
			<th>Price</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
		for (Product p : products) {
		%>
		<tr>
			<td><%=p.getId()%></td>
			<td><%=p.getName()%></td>
			<td><%=p.getDescription()%></td>
			<td><%=p.getBrand()%></td>
			<td><%=p.getCategory()%></td>
			<td><%=p.getImage()%></td>
			<td><%=p.getPrice()%></td>
			<td><a href="find?pid=<%=p.getId()%>"><i class="fa-regular fa-pen-to-square" id="eicon"></i></a></td>
			<td><a href="deleteproduct?pid=<%=p.getId()%>"><i class="fa-solid fa-trash" id="dicon"></i></a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>