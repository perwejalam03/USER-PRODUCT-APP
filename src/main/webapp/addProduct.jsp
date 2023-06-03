<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<form action="addProduct" method="post">
Name<input type="text" name="nm"><br>
Description<input type="text" name="desc"><br>
Brand<input type="text" name="br"><br>
category<input type="text" name="cat"><br>
Image<input type="text" name='im'><br>
Price<input type="text" name="price"><br>
<input type="submit" value="Add">

</form>
</body>
</html>