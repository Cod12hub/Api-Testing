<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Client</title>
</head>
<body>
    <h1>Update Client</h1>
    <form action="UpdateClient" method="post">
        <label for="clientId">Client ID:</label>
        <input type="text" id="clientId" name="clientId">
        <br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">
        <br>
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="userId">
        <br>
        <label for="companyId">Company ID:</label>
        <input type="text" id="companyId" name="companyId">
        <br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email">
        <br>
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone">
        <br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
