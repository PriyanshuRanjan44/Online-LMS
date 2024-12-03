<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - User Management</title>
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
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4">Admin - User Management</h1>

        <!-- Button to Open Modal for Adding User -->
        <button type="button" class="btn btn-primary mb-4" data-toggle="modal" data-target="#addUserModal">
            Add New User
        </button>

        <!-- User List Table -->
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">User List</h5>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="userTableBody">
                        <!-- User rows will be injected here dynamically using JavaScript -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Modal for Adding User -->
    <div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="addUserForm">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="newUsername" name="username" required>
                            <div id="usernameError" class="error"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="newEmail" name="email" required>
                            <div id="emailError" class="error"></div>
                        </div>
                        <div class="form-group">
                            <label for="role">Role</label>
                            <select class="form-control" id="newRole" name="role" required>
                                <option value="admin">Admin</option>
                                <option value="teacher">Teacher</option>
                                <option value="student">Student</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="addUserButton">Add User</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit User Modal (for updating user details) -->
    <div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editUserForm">
                        <div class="form-group">
                            <label for="editUsername">Username</label>
                            <input type="text" class="form-control" id="editUsername" name="username" required>
                            <div id="editUsernameError" class="error"></div>
                        </div>
                        <div class="form-group">
                            <label for="editEmail">Email</label>
                            <input type="email" class="form-control" id="editEmail" name="email" required>
                            <div id="editEmailError" class="error"></div>
                        </div>
                        <div class="form-group">
                            <label for="editRole">Role</label>
                            <select class="form-control" id="editRole" name="role" required>
                                <option value="admin">Admin</option>
                                <option value="teacher">Teacher</option>
                                <option value="student">Student</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="updateUserButton">Update User</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        const users = [
            { id: 1, username: "admin", email: "admin@example.com", role: "admin" },
            { id: 2, username: "teacher1", email: "teacher1@example.com", role: "teacher" },
            { id: 3, username: "student1", email: "student1@example.com", role: "student" },
        ];

        // Function to render the user table
        function renderUserTable() {
            const userTableBody = document.getElementById("userTableBody");
            userTableBody.innerHTML = '';
            users.forEach(user => {
                const row = document.createElement("tr");
                row.innerHTML = `
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>${user.role}</td>
                    <td>
                        <button class="btn btn-warning btn-sm" onclick="editUser(${user.id})">Edit</button>
                        <button class="btn btn-danger btn-sm" onclick="deleteUser(${user.id})">Delete</button>
                    </td>
                `;
                userTableBody.appendChild(row);
            });
        }

        // Function to handle adding a new user
        document.getElementById("addUserButton").addEventListener("click", function () {
            const username = document.getElementById("newUsername").value;
            const email = document.getElementById("newEmail").value;
            const role = document.getElementById("newRole").value;

            // Simple validation
            if (!username || !email || !role) {
                alert("All fields are required.");
                return;
            }

            // Add new user to the users array
            const newUser = {
                id: users.length + 1,
                username: username,
                email: email,
                role: role
            };
            users.push(newUser);
            renderUserTable();
            $('#addUserModal').modal('hide');
        });

        // Function to handle editing a user
        function editUser(userId) {
            const user = users.find(u => u.id === userId);
            document.getElementById("editUsername").value = user.username;
            document.getElementById("editEmail").value = user.email;
            document.getElementById("editRole").value = user.role;

            // Show the edit user modal
            $('#editUserModal').modal('show');

            // Update the user on click of "Update User"
            document.getElementById("updateUserButton").onclick = function () {
                user.username = document.getElementById("editUsername").value;
                user.email = document.getElementById("editEmail").value;
                user.role = document.getElementById("editRole").value;
                renderUserTable();
                $('#editUserModal').modal('hide');
            };
        }

        // Function to handle deleting a user
        function deleteUser(userId) {
            const userIndex = users.findIndex(u => u.id === userId);
            if (userIndex > -1) {
                users.splice(userIndex, 1);
                renderUserTable();
            }
        }

        // Initial render of the user table
        renderUserTable();
    </script>
</body>
</html>
