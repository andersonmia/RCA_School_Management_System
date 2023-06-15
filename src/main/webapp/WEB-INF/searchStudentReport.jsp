<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        h2 {
            text-align: center;
            color: #333333;
            margin-top: 0;
        }

        p {
            text-align: center;
            color: #666666;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #008dd4;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        a {
            color: #008dd4;
            text-decoration: none;
        }

        .message {
            text-align: center;
            margin-top: 20px;
        }

        .message a {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Student Report</h2>
    <p>
        <a href="studentReport.php?page=report">Download Student Report (PDF)</a>
    </p>
    <div>
        <c:if test="${authenticatedUser != null}">
            <p>
                Welcome, ${authenticatedUser.username}!
            </p>
            <!-- Place your content here for authenticated users -->
            <form action="studentReport.php?page=search" method="post">
                <label for="studentName">Enter Student Name:</label>
                <input type="text" id="studentName" name="studentName">
                <br>
                <input type="submit" value="Search">
            </form>
        </c:if>
        <c:if test="${authenticatedUser == null}">
            <div class="message">
                <p>
                    You are not logged in.
                    <a href="login.php">Login</a>
                </p>
            </div>
            <!-- Place your content here for non-authenticated users -->
        </c:if>
    </div>
</div>
</body>
</html>
