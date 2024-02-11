<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style>
    /* Style for the container holding the buttons */
    .button-container {
        display: flex;
        flex-wrap: wrap; /* Allow wrapping to create a new row if needed */
        justify-content: center; /* Center the items horizontally */
        gap: 10px; /* Add some spacing between the buttons */
    }
    
    /* Style for each button */
    .button-container form {
        padding: 10px 20px; /* Add padding to the buttons */
        font-size: 16px;
    }
    
    {
    padding: 10px 20px; /* Add padding to the buttons */
        font-size: 16px;
    
    
    }
    body
    {
    
    background-color:black;
    
    }
    h1{
    color:white;}
</style>
</head>
<body>
<h1>API Building For Company Record</h1>
<div class="button-container">
    <!-- Buttons -->
    <form action="Users" method="post">
        <input type="submit" value="Add User">
    </form>
    
    <form action="Fentch" method="get">
        <input type="submit" value="View User">
    </form>
    
    <form action="FentchUsername" method="get">
        <input type="submit" value="Filter By UserName">
    </form>
    
    <form action="AddClient" method="post">
        <input type="submit" value="Add Client">
    </form>
    
    <form action="UpdateClient" method="post">
        <input type="submit" value="Update Client">
    </form>
    
    <form action="FenchClients" method="get">
        <input type="submit" value="View Client Data">
    </form>
    
    <form action="SerachClientUser" method="get">
        <input type="submit" value="Search Client user">
    </form>
    
    <button onclick="window.location.href = 'Update.jsp';">Update</button>
    <button onclick="window.location.href = 'Addclient.jsp';">Add Client</button>
    <button onclick="window.location.href = 'UpdateClient.jsp';">Update Client</button>
    <button onclick="window.location.href = 'FenctchClient.jsp';">Fentch Client</button>
    <button onclick="window.location.href = 'SearchClientUser.jsp';"> Client User</button>
    <button onclick="window.location.href = 'revenue.jsp';"> </button>
</div>

</body>
</html>
