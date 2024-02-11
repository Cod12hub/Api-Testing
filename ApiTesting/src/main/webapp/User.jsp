<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
    function validateForm() {
        var username = document.forms["userForm"]["username"].value;
        var email = document.forms["userForm"]["email"].value;
        var phone = document.forms["userForm"]["phone"].value;

        // Email validation
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert("Invalid email format");
            return false;
        }

        // Phone number validation
        var phonePattern = /^\d{10}$/;
        if (!phonePattern.test(phone)) {
            alert("Phone number must be 10 digits");
            return false;
        }

        // You can add additional validation if needed
        
        return true; // Form submitted
    }
    </script>
<title>User Page</title>
</head>
<body>

 <h1>List of Users</h1>
   <h1>Insert Data</h1>
<form name="userForm" action="Users" method="post" onsubmit="return validateForm()">
        Username: <input type="text" name="username"><br>
        Email: <input type="text" name="email"><br>
        Phone: <input type="text" name="phone"><br>
        <input type="submit" value="Submit">
    </form>
<a href="Home.jsp"><button>Back</button></a>
</body>
</html>