<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 500px;
            margin-top: 100px;
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
            <h1 class="text-center mb-4">User Login</h1>
            <form id="loginForm" action="/login" method="POST">
                <div class="form-group">
                    <label for="username">Username or Email</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                    <div id="usernameError" class="error"></div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                    <div id="passwordError" class="error"></div>
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            let formIsValid = true;

            // Clear previous errors
            document.getElementById("usernameError").innerText = "";
            document.getElementById("passwordError").innerText = "";

            // Username/email validation
            let username = document.getElementById("username").value;
            if (!username.trim()) {
                document.getElementById("usernameError").innerText = "Username or email is required.";
                formIsValid = false;
            }

            // Password validation
            let password = document.getElementById("password").value;
            if (!password.trim()) {
                document.getElementById("passwordError").innerText = "Password is required.";
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
