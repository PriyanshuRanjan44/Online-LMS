<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - User Management</title>
</head>
<body>
    <h1>User Management</h1>
    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- This section should be populated with a list of users dynamically -->
            <tr>
                <td>user1</td>
                <td>user1@example.com</td>
                <td>Student</td>
                <td>
                    <a href="/editRole?userId=1">Change Role</a>
                    <a href="/deleteUser?userId=1">Delete</a>
                </td>
            </tr>
            <!-- Repeat for other users -->
        </tbody>
    </table>
</body>
</html>
