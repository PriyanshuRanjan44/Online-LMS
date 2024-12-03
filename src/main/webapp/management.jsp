<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        .form-container {
            padding: 20px;
            border-radius: 8px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h1 class="text-center mb-4">Edit Profile</h1>
            <form id="profileForm" action="/updateProfile" method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                    <div id="usernameError" class="error"></div>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                    <div id="emailError" class="error"></div>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input type="password" class="form-control" id="newPassword" name="newPassword">
                    <div id="newPasswordError" class="error"></div>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm New Password</label>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword">
                    <div id="confirmPasswordError" class="error"></div>
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn btn-primary">Update Profile</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        document.getElementById("profileForm").addEventListener("submit", function(event) {
            let formIsValid = true;

            // Clear previous errors
            document.getElementById("usernameError").innerText = "";
            document.getElementById("emailError").innerText = "";
            document.getElementById("newPasswordError").innerText = "";
            document.getElementById("confirmPasswordError").innerText = "";

            // Validate username
            let username = document.getElementById("username").value;
            if (!username.trim()) {
                document.getElementById("usernameError").innerText = "Username is required.";
                formIsValid = false;
            }

            // Validate email
            let email = document.getElementById("email").value;
            const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!email.match(emailRegex)) {
                document.getElementById("emailError").innerText = "Please enter a valid email address.";
                formIsValid = false;
            }

            // Password validation if new password is entered
            let newPassword = document.getElementById("newPassword").value;
            if (newPassword && newPassword.length < 6) {
                document.getElementById("newPasswordError").innerText = "Password must be at least 6 characters.";
                formIsValid = false;
            }

            // Confirm Password validation
            let confirmPassword = document.getElementById("confirmPassword").value;
            if (newPassword && newPassword !== confirmPassword) {
                document.getElementById("confirmPasswordError").innerText = "Passwords do not match.";
                formIsValid = false;
            }

            // Prevent form submission if validation fails
            if (!formIsValid) {
                event.preventDefault();
            }
        });
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
