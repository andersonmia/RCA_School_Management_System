<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Report</title>
  <style type="text/css">
* {
                        font-family: Work Sans, serif;
                        color: #99154b;
                    }
img{
box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}>
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

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #dddddd;
    }

    th {
      background-color: #008dd4;
      color: white;
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
  <div>
    <c:if test="${authenticatedUser != null}">
      <p>
        Welcome, ${authenticatedUser.username}!
      </p>
      <c:if test="${studentReport != null}">
        <table>
          <tr>
            <th>Student ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Course</th>
            <th>Mark</th>
          </tr>
          <c:forEach items="${studentReport}" var="report">
            <tr>
              <td>${report.student.id}</td>
              <td>${report.student.firstName}</td>
              <td>${report.student.lastName}</td>
              <td>${report.course}</td>
              <td>${report.mark}</td>
            </tr>
          </c:forEach>
        </table>
      </c:if>
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
