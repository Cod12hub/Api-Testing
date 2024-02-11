<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.entitys.Client" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Clients</title>
</head>
<body>

<h1>Search Clients</h1>

<form action="SerachClientUser" method="post">
    <label for="userId">User ID:</label>
    <input type="text" id="userId" name="userId">
    <button type="submit" name="action" value="searchByUser">Search by User</button>
</form>

<form action="SerachClientUser" method="post">
    <label for="companyName">Company Name:</label>
    <input type="text" id="companyName" name="companyName">
    <button type="submit" name="action" value="searchByName">Search by Name</button>
</form>

<% List<Client> clients = (List<Client>) request.getAttribute("clients");
   if (clients != null && !clients.isEmpty()) { %>
    <h2>Search Results:</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>User ID</th>
            <th>Company ID</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        <% for (Client client : clients) { %>
            <tr>
                <td><%= client.getId() %></td>
                <td><%= client.getName() %></td>
                <td><%= client.getUserId() %></td>
                <td><%= client.getCompanyId() %></td>
                <td><%= client.getEmail() %></td>
                <td><%= client.getPhone() %></td>
            </tr>
        <% } %>
    </table>
<% } else { %>
    <p>No results found.</p>
<% } %>

</body>
</html>
