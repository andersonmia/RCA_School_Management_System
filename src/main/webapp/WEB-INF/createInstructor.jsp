<%--
  Created by IntelliJ IDEA.
  User: mia
  Date: 13.06.23
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Create Instructor</title>
    <link rel="stylesheet" href="../cssfile.css"/>
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet"/>
    <style type="text/css">
        * {
            font-family: Work Sans, serif;
            color: #99154b;
        }


        body {
            background-color: #fce8f3;
            color: #99154b;
        }

        #container {
            margin-left: auto;
            margin-right: auto;

            min-width: 400px;
            max-width: 30vw;
            background-color: #ffffff;
            padding: 50px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        #fieldset {
            display: flex;
            gap: 10px;
            align-items: center;
            justify-content: center;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            width: 50%;
        }

        h2 {
            text-align: center;
            margin-top: 10px;
        }

        p,
        a {
            text-align: center;
            text-decoration: none;
            color: #99154b;
        }

        input[type="text"],
        input[type="password"],
        input[type="date"],
        input[type="number"],
        input[type="email"] {
            width: 98%;
            padding: 10px;
            margin-bottom: 20px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #d61f69;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
            margin-top: 10px;
            margin-bottom: 30px;
        }

        option {
            color: #333333;
        }

        form > div {
            width: 100%;
        }

        form > div > select {
            width: 100%;
            padding: 30px;
            margin-bottom: 20px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        .fieldset {
            display: flex;
            gap: 10px;
            align-items: center;
            justify-content: center;
            margin-left: auto;

            margin-right: auto;

            text-align: center;
            width: 50%;
        }

        .fieldset {
            display: flex;
            gap: 10px;
            align-items: center;
            justify-content: center;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            width: 50%;
        }
    </style>
</head>
<body>
<form action="createinstructor.php?page=createinstructor" method="post" id="container">
    <h2>Create Instructor</h2>
    <p>Welcome to RCA SMIS Instructor Creation Please Enter Details!!</p>
    <c:if test="${error != null}">
        <div class="fieldset">
            <h3>
                <span style="color: red"> ${error}</span>
            </h3>
            <img src="icons/fail.png" width="30px" height="30px">
        </div>
    </c:if>
    <c:if test="${success != null}">
        <div class="fieldset">
            <h3>
                <span style="color: green"> ${success}</span>
            </h3>
            <img src="icons/success.png" width="30px" height="30px">
        </div>
    </c:if>

    <input type="text" placeholder="First Name" required name="firstName">
    <input type="text" placeholder="Last Name" required name="lastName">
    <input type="number" placeholder="Phone Number" required name="phoneNumber">
    <input type="number" placeholder="Salary" required name="salary">
    <input type="email" placeholder="email" required name="email">
    <label>
        Date Of Birth<br>
        <input type="date" placeholder="Date Of Birth" required name="dateOfBirth">
    </label>
    <label>
        Remuneration Date<br>
        <input type="date" placeholder="Remuneration Date" required name="remunerationDate">
    </label>
    <input type="submit" value="Create Instructor">
    <div id="fieldset">
        <img src="icons/teachers.png" width="30px" height="30px">
        <a href="listinstructors.php?page=instructors&&action=list">All Instructors</a>
    </div>
</form>

</body>
</html>