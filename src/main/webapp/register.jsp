<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  font-family: 'Montserrat', sans-serif;
  background-color: #f5f5f5;
}

form {
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

input[type="text"], input[type="tel"], input[type="email"], input[type="number"], input[type="password"] {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-bottom: 10px;
  font-size: 16px;
}

input[type="radio"] {
  margin-right: 10px;
}

label {
  font-size: 18px;
  font-weight: bold;
  display: block;
  margin-bottom: 10px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: #fff;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

input[type="submit"]:hover {
  background-color: #45a049;
}

h1 {
  margin-top: 20px;
  font-size: 36px;
  text-align: center;
  color: #4CAF50;
  text-shadow: 2px 2px 4px #000000;
}

h2 {
  margin-top: 20px;
  font-size: 24px;
  text-align: center;
  color: #4CAF50;
  text-shadow: 2px 2px 4px #000000;
}

a {
  color: #4CAF50;
}

@media only screen and (max-width: 768px) {
  form {
    width: 90%;
    margin: 0 auto;
  }
}
</style>
</head>
<body>
<form action="reg" method="post">
<h1>Register User</h1>
Name<input type="text" name="nm"><br>
Phone<input type="tel" name="ph"><br>
Email<input type="email" name="em"><br>
Age<input type="number" name="age"><br>
Gender<input type="radio" name="gender" value="Male">Male
<input type="radio" name="gender" value="Female">Female<br>
Password<input type="password" name="ps">
<h2><input type="submit" value="Register"></h2>
</form>
</body>
</html>