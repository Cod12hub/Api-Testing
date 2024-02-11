<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.entitys.Company" %>

<%
    // Define connection parameters (replace with your database credentials)
    String url = "jdbc:mysql://localhost:3306/projdata";
    String username = "root";
    String password = "admin";

    // Initialize variables
    List<Company> companies = new ArrayList<>();
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish a connection to the database
        connection = DriverManager.getConnection(url, username, password);

        // Prepare and execute the SQL query
        String sql = "SELECT c.id, c.name, c.revenue, c.industry " +
                     "FROM companies c " +
                     "JOIN ( " +
                     "    SELECT industry, MAX(revenue) AS max_revenue " +
                     "    FROM companies " +
                     "    GROUP BY industry " +
                     ") max_rev_per_industry " +
                     "ON c.industry = max_rev_per_industry.industry " +
                     "AND c.revenue = max_rev_per_industry.max_revenue";
        statement = connection.prepareStatement(sql);
        resultSet = statement.executeQuery();

        // Process the query results
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            double revenue = resultSet.getDouble("revenue");
            String industry = resultSet.getString("industry");

            // Create a Company object and add it to the list
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        // Close the resources
        if (resultSet != null) {
            try { resultSet.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
        if (statement != null) {
            try { statement.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
        if (connection != null) {
            try { connection.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Companies with Max Revenue by Industry</title>
</head>
<body>
    <h1>Companies with Max Revenue by Industry</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Revenue</th>
                <th>Industry</th>
            </tr>
        </thead>
        <tbody>
            <% for (Company company : companies) { %>
                <tr>
                    <td><%= company.getId() %></td>
                    <td><%= company.getName() %></td>
                    <td><%= company.getRevenue() %></td>
                    <td><%= company.getIndustry() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
