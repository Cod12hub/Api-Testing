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

  <h1>User Data</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Update</th>
        </tr>
      <% 
            List<User> users = (List<User>) request.getAttribute("users");
            if(users != null) {
                for(User user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getUsername() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getPhone() %></td>
            <td><a href="<%= "UpdateClient.jsp" %>">Update</a></td>
              <td><a href="DeleteUser?id=<%= user.getId() %>">Delete</a></td>
            
        </tr>
        <% 
                }
            }
        %>
    </table>
    <a href="Home.jsp"><button>Back</button></a>
    
</body>
</html>