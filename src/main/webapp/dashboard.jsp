<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
</head>
<body>
    <h1>Welcome, {username}</h1>
    
    <!-- Role-based content -->
    <div>
        <h2>Dashboard</h2>
        <p>Welcome to your dashboard, {role}.</p>
        <div id="studentContent" style="display: none;">
            <h3>Your Courses</h3>
            <!-- Display courses here -->
        </div>
        <div id="teacherContent" style="display: none;">
            <h3>Your Courses and Assignments</h3>
            <!-- Display teaching-related content -->
        </div>
        <div id="adminContent" style="display: none;">
            <h3>Admin Controls</h3>
            <p><a href="/userManagement">Manage Users</a></p>
            <!-- Admin actions here -->
        </div>
    </div>

    <script>
        // Role-based content display
        var role = "{role}"; // Dynamically injected based on user session
        if(role === "student") {
            document.getElementById("studentContent").style.display = "block";
        } else if(role === "teacher") {
            document.getElementById("teacherContent").style.display = "block";
        } else if(role === "admin") {
            document.getElementById("adminContent").style.display = "block";
        }
    </script>
</body>
</html>
