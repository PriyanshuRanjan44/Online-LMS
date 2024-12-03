<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
</head>
<body>
    <h1>Edit Profile</h1>
    <form action="/updateProfile" method="POST">
        <div>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="{currentUsername}" required>
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="{currentEmail}" required>
        </div>
        <div>
            <label for="password">New Password:</label>
            <input type="password" id="password" name="password">
        </div>
        <div>
            <button type="submit">Update Profile</button>
        </div>
    </form>
</body>
</html>
