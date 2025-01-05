<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User</title>
    <link rel="stylesheet" href="CSS/user-form">  <!-- Link to the CSS file -->
</head>
<body>
    <h2>Update User</h2>

    <form action="userManagement" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="${user.id}">
        
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value="${user.name}" required><br><br>
        
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value="${user.email}" required><br><br>
        
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" value="${user.password}" required><br><br>
        
        <label for="profileDetails">Profile Details:</label><br>
        <textarea id="profileDetails" name="profileDetails" required>${user.profileDetails}</textarea><br><br>
        
        <button type="submit">Update User</button>
    </form>

    <br>
    <a href="userManagement?action=list">Back to User List</a>
</body>
</html>
