<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User</title>
    <link rel="stylesheet" href="CSS/user-form">  <!-- Link to the CSS file -->
</head>
<body>
    <div class="delete-container">
        <h2>Delete User</h2>

        <p>Are you sure you want to delete the following user?</p>
        <p><strong>Name:</strong> ${user.name}</p>
        <p><strong>Email:</strong> ${user.email}</p>

        <form action="userManagement" method="post">
            <input type="hidden" name="action" value="delete">
            <input type="hidden" name="id" value="${user.id}">
            <button type="submit">Yes, delete user</button>
        </form>

        <br>
        <a href="userManagement?action=list">Cancel</a>
    </div>
</body>
</html>
