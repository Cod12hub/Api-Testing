<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.entitys.User" %>
<%@ page import="java.util.List" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <h1>Filtered Users</h1>
    <form>
        Username: <input type="text" id="username" name="username" >
        <input type="submit" value="Filter Data">
    </form>
    <a href="Home.jsp"><button>Back</button></a>
    
    <form action="FentchUsername" method="get">
     <table border="1">
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Phone</th>
                        
            
        </tr>
        <% List<User> users = (List<User>) request.getAttribute("users"); %>
        <% if (users != null) { %>
            <% for (User user : users) { %>
                <tr>
                    <td><%= user.getUsername() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getPhone() %></td>
                    
                    
                </tr>
            <% } %>
        <% } %>
    </table>
    <a href="Home.jsp"><button>Back</button></a>
    
</body>
</html>