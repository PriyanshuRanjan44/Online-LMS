<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change User Role</title>
</head>
<body>
    <h1>Change User Role</h1>
    <form action="/updateUserRole" method="POST">
        <div>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="{currentUsername}" readonly>
        </div>
        <div>
            <label for="role">New Role:</label>
            <select id="role" name="role" required>
                <option value="admin">Admin</option>
                <option value="teacher">Teacher</option>
                <option value="student">Student</option>
            </select>
        </div>
        <div>
            <button type="submit">Update Role</button>
        </div>
    </form>
</body>
</html>
