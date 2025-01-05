<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create User</title>
    <link rel="stylesheet" href="CSS/create-user.css">
    <script src="JS/create-user.js" defer></script>
</head>
<body>
    <div class="container">
        <header class="header">
            <h1>Create New User</h1>
        </header>

        <form method="post" action="CreateUserServlet" id="create-user-form">
            <div class="form-group">
                <label for="userName">Name:</label>
                <input type="text" name="userName" id="userName" placeholder="Enter Name" required>
            </div>
            <div class="form-group">
                <label for="userEmail">Email:</label>
                <input type="email" name="userEmail" id="userEmail" placeholder="Enter Email" required>
            </div>
            <button type="submit" class="submit-btn">Create User</button>
        </form>
    </div>
</body>
</html>
