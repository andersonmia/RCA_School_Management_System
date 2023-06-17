<%--
  Created by IntelliJ IDEA.
  User: mia
  Date: 16.05.23
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Course</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet"/>
    <link rel="stylesheet" href="../cssfile.css"/>

    <style type="text/css">
        * {
            font-family: Work Sans, serif;
            color: #99154b;
        }

        * {
            font-family: Work Sans, serif;
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

        body {
            background-color: #fce8f3;
            color: #99154b;
        }

        #container {
            /*margin-top: 5vh;*/
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 2%;
            min-width: 400px;
            max-width: 30vw;
            background-color: #ffffff;
            padding: 50px;
            /*padding: 30px;*/
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: center;
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
    </style>
</head>
<body>
    <form action="createcourse.php?page=createcourse" method="post" id="container">
        <h2>Create Course</h2>
        <p>Welcome to RCA SMIS Course Creation Please Enter Details!!</p>
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
    
        <input type="text" placeholder="Course Name" required name="name">
        <input type="text" placeholder="Course Code" required name="code">
        <input type="number" placeholder="Min Students" required name="min">
        <input type="number" placeholder="Max Students" required name="max">
        <label>
            Start Date<br>
            <input type="date" placeholder="Start Date" required name="start">
        </label>
        <label>
            End Date<br>
            <input type="date" placeholder="End Date" required name="end">
        </label>
        <input type="submit" value="Create Course">
        <div class="fieldset">
            <img src="icons/course.png" height="30px" width="30px" alt="">
            <a href="listcourses.php?page=courses&&action=list">All Courses</a>
        </div>
    </form>
    </body>
    </html>
    