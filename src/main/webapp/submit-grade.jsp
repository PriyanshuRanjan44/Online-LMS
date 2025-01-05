<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Submission</title>
    <link rel="stylesheet" href="CSS/submit-grade.css">
</head>
<body>
    <div class="container">
        <h1>Grade Submission</h1>
        <form id="grade-form">
            <label for="submissionId">Submission ID:</label>
            <input type="text" id="submissionId" name="submissionId" value="123" readonly>
            <label for="grade">Grade:</label>
            <input type="number" id="grade" name="grade" required>
            <label for="feedback">Feedback:</label>
            <textarea id="feedback" name="feedback" required></textarea>
            <button type="submit">Submit Grade</button>
        </form>
    </div>
    <script src="JS/submit-grade.js"></script>
</body>
</html>
