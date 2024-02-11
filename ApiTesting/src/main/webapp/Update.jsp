<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
</head>
<body>

<h1>Update User</h1>
    
<form action="UpdateUser" method="post">
    <input type="hidden" id="userId" name="userId"  value="<%= request.getAttribute("userId") %>">

    <label for="username">Username:</label>
    <input type="text" id="username" name="username" value="<%= request.getAttribute("username") %>">
    <br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="<%= request.getAttribute("email") %>">
    <br>
    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="<%= request.getAttribute("phone") %>">
    <br>
    <input type="submit" value="Update">
</form>

</body>
</html>
