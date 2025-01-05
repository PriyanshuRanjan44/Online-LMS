<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create User</title>
    <link rel="stylesheet" href="CSS/user-form">  <!-- Link to the CSS file -->
</head>
<body>
    <h2>Create New User</h2>
    <form action="userManagement" method="post">
        <input type="hidden" name="action" value="add">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="profileDetails">Profile Details:</label><br>
        <textarea id="profileDetails" name="profileDetails" required></textarea><br><br>
        
        <button type="submit">Create User</button>
    </form>

    <br>
    <a href="userManagement?action=list">Back to User List</a>
</body>
</html>
