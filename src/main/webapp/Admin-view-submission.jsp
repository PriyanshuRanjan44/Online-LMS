<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>



<!DOCTYPE html>
<html>
<head>
    <title>Assignment Submissions</title>
    <style>
        /* Your existing CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        td a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }
        td a:hover {
            text-decoration: underline;
        }
        .container {
            text-align: center;
            margin-top: 20px;
        }
        .filter-form {
            width: 80%;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .filter-form input[type="text"], .filter-form input[type="number"], .filter-form button {
            padding: 10px;
            margin: 5px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .filter-form button {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            border: none;
        }
        .filter-form button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Assignment Submissions</h1>

    <div class="container">
        <form class="filter-form" method="post" action="ViewSubmissionServlet">
            <label for="course_id">Course ID:</label>
            <input type="number" id="course_id" name="course_id" required>
            <label for="assignment_id">Assignment ID:</label>
            <input type="number" id="assignment_id" name="assignment_id" required>
            <button type="submit">Filter Submissions</button>
        </form>
    </div>

    <table>
        <thead>
            <tr>
                <th>User ID</th>
                <th>Assignment ID</th>
                <th>Course ID</th>
                <th>Assignment</th>
                <th>Assignment Link</th>
                <th>Created Date</th>
                <th>Last Date</th>
                <th>Submitted Date</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<com.user.model.SubmissionAssignment> submissions = 
                    (List<com.user.model.SubmissionAssignment>) request.getAttribute("submissions");
                if (submissions != null && !submissions.isEmpty()) {
                    for (com.user.model.SubmissionAssignment submission : submissions) {
            %>
                <tr>
                    <td><%= submission.getUserId() %></td>
                    <td><%= submission.getAssignmentId() %></td>
                    <td><%= submission.getCourseId() %></td>
                    <td><%= submission.getAssignment() %></td>
                    <td><a href="<%= submission.getAssignmentLink() %>" target="_blank">View</a></td>
                    <td><%= submission.getCreatedDate() %></td>
                    <td><%= submission.getLastDate() %></td>
                    <td><%= submission.getSubmittedDate() %></td>
                </tr>
            <% 
                    }
                } else { 
            %>
                <tr>
                    <td colspan="8">No submissions found.</td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
