<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Assignment</title>
    <link rel="stylesheet" href="CSS/submit-assignment.css">
</head>
<body>
    <div class="container">
        <h1>Submit Assignment</h1>
        <form id="submit-form">
            <label for="assignment">Assignment:</label>
            <select id="assignment" name="assignment" required>
                <option value="1">Math Homework</option>
                <option value="2">Science Project</option>
            </select>
            <label for="file">Upload File:</label>
            <input type="file" id="file" name="file" required>
            <button type="submit">Submit</button>
        </form>
    </div>
    <script src="JS/submit-assignment.js"></script>
</body>
</html>
