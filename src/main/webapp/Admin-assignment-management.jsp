<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.user.model.Assignment" %>
<!DOCTYPE html>
<html>
<head>
    <title>Assignment Management</title>
    <link rel="stylesheet" href="CSS/Admin-assignment-management.css">
</head>
<body>
    <h1>Assignment Management</h1>

    <!-- Create Assignment Form -->
    <form action="createAssignment" method="post">
        <h2>Create Assignment</h2>
        <label for="courseId">Course ID:</label>
        <input type="number" id="courseId" name="courseId" required><br>
        <label for="assignment">Assignment:</label>
        <textarea id="assignment" name="assignment" required></textarea><br>
        <label for="lastDate">Last Date:</label>
        <input type="date" id="lastDate" name="lastDate" required><br>
        <button type="submit">Create Assignment</button>
    </form>

    <hr>

    <!-- Show All Assignments -->
    <h2>All Assignments</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Assignment ID</th>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Assignment</th>
                <th>Created Date</th>
                <th>Last Date</th>
                <th>Action</th> <!-- New column for Action button -->
            </tr>
        </thead>
        <tbody>
            <%-- Assignments dynamically populated by Servlet --%>
            <%
                List<Assignment> assignments = (List<Assignment>) request.getAttribute("assignments");
                if (assignments != null) {
                    for (Assignment assignment : assignments) {
            %>
            <tr>
                <td><%= assignment.getAssignmentId() %></td>
                <td><%= assignment.getCourseId() %></td>
                <td><%= assignment.getCourseName() %></td>
                <td><%= assignment.getAssignment() %></td>
                <td><%= assignment.getCreatedDate() %></td>
                <td><%= assignment.getLastDate() %></td>
                <td>
                    <!-- View button that triggers the action -->
                    <a href="viewAssignments?id=<%= assignment.getAssignmentId() %>">
                        <button type="button">View Assignment</button>
                    </a>
                </td>
            </tr>
            <%      }
                } else {
            %>
            <tr>
                <td colspan="7">No assignments found.</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
