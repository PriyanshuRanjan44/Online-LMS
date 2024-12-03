<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            margin-bottom: 20px;
        }
        .dashboard-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .user-info {
            margin-top: 30px;
        }
        .role-content {
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="dashboard-header">
            <h1>User Dashboard</h1>
            <p>Welcome to your dashboard. Here you can view and manage your profile.</p>
        </div>

        <!-- User Profile Info -->
        <div class="card user-info">
            <div class="card-header">
                <h5>Profile Information</h5>
            </div>
            <div class="card-body">
                <p><strong>Username:</strong> <span id="profileUsername">JohnDoe</span></p>
                <p><strong>Email:</strong> <span id="profileEmail">johndoe@example.com</span></p>
                <button class="btn btn-warning" data-toggle="modal" data-target="#editProfileModal">Edit Profile</button>
            </div>
        </div>

        <!-- Role-specific Content -->
        <div class="card role-content">
            <div class="card-header">
                <h5>Role-based Content</h5>
            </div>
            <div class="card-body" id="roleContent">
                <!-- Content will be injected here based on the user's role -->
            </div>
        </div>
    </div>

    <!-- Edit Profile Modal -->
    <div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editProfileModalLabel">Edit Profile</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editProfileForm">
                        <div class="form-group">
                            <label for="editUsername">Username</label>
                            <input type="text" class="form-control" id="editUsername" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="editEmail">Email</label>
                            <input type="email" class="form-control" id="editEmail" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="editPassword">Password</label>
                            <input type="password" class="form-control" id="editPassword" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary">Update Profile</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
        // Simulate fetching user data and role (In a real app, this will be dynamic)
        const user = {
            username: 'JohnDoe',
            email: 'johndoe@example.com',
            role: 'student'  // This could be 'admin', 'teacher', or 'student'
        };

        // Render user data on dashboard
        document.getElementById('profileUsername').textContent = user.username;
        document.getElementById('profileEmail').textContent = user.email;

        // Render role-specific content
        const roleContent = document.getElementById('roleContent');
        
        if (user.role === 'admin') {
            roleContent.innerHTML = `<p>As an Admin, you have full access to manage users and view system-wide statistics.</p>`;
        } else if (user.role === 'teacher') {
            roleContent.innerHTML = `<p>As a Teacher, you can manage courses and students.</p>`;
        } else if (user.role === 'student') {
            roleContent.innerHTML = `<p>As a Student, you can view your enrolled courses and track progress.</p>`;
        }

        // Handle profile update in the modal form
        document.getElementById('editProfileForm').addEventListener('submit', function (event) {
            event.preventDefault();
            
            const updatedUsername = document.getElementById('editUsername').value;
            const updatedEmail = document.getElementById('editEmail').value;
            const updatedPassword = document.getElementById('editPassword').value;

            // Simulate updating user data (In a real application, this would send data to the server)
            user.username = updatedUsername;
            user.email = updatedEmail;

            if (updatedPassword) {
                // Optionally, update password (make sure to hash it on the server)
            }

            // Update dashboard with new data
            document.getElementById('profileUsername').textContent = user.username;
            document.getElementById('profileEmail').textContent = user.email;

            // Close the modal
            $('#editProfileModal').modal('hide');
        });
    </script>
</body>
</html>
