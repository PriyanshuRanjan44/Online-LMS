<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.user.model.UserManagement" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
    <link rel="stylesheet" href="CSS/user-management.css">
</head>
<body>
    <div class="container">
        <header class="header">
            <h1>User List</h1>
        </header>

        <div class="user-list">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Profile Details</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Object usersObj = request.getAttribute("users");
                        List<UserManagement> users = null;

                        if (usersObj instanceof List<?>) {
                            users = (List<UserManagement>) usersObj;
                        }

                        if (users != null && !users.isEmpty()) { 
                            for (UserManagement user : users) { 
                    %>
                        <tr>
                            <td><%= user.getId() %></td>
                            <td><%= user.getName() %></td>
                            <td><%= user.getEmail() %></td>
                            <td><%= user.getProfileDetails() %></td>
                        </tr>
                    <%
                            }
                        } else { 
                    %>
                        <tr>
                            <td colspan="4" class="no-data">No users available</td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
