<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Client</title>
</head>
<body>



    <h1>Create Client</h1>
    
    <form action="AddClient" method="post">
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
        <input type="submit" value="Submit">
    </form>
    <a href="Home.jsp"><button>Back</button></a>
    
</body>
</html>