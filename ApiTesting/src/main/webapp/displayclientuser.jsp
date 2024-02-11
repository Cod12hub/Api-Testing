<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.entitys.Client" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Clients</title>
</head>
<body>
    <h1>List of Clients</h1>
    
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>User ID</th>
            <th>Company ID</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        <% List<Client> clients = (List<Client>) request.getAttribute("clients");
        if (clients != null) {
            for (Client client : clients) { %>
                <tr>
                    <td><%= client.getId() %></td>
                    <td><%= client.getName() %></td>
                    <td><%= client.getUserId() %></td>
                    <td><%= client.getCompanyId() %></td>
                    <td><%= client.getEmail() %></td>
                    <td><%= client.getPhone() %></td>
                </tr>
            <% }
        } %>
    </table>
    <a href="Home.jsp"><button>Back</button></a>
    
</body>
</html>
