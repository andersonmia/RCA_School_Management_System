<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Parent</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="../cssfile.css" />

    <style type="text/css">
* {
                        font-family: Work Sans, serif;
                        color: #99154b;
                    }
img{
box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}>
        body {
            background-color: #f2f2f2;
        }

        .container {
            margin: 10% auto 50px;
            width: 400px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            position: relative;
            justify-content: center;
            display: flex;
            flex-direction: column;
        }

        .container img {
            position: absolute;
            top: -75px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: #ffffff;
            padding: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        h2 {
            text-align: center;
            color: #333333;
            margin-top: 10px;
        }

        p, a {
            text-align: center;
            text-decoration: none;
        }
        input[type="text"], input[type="password"] , input[type="date"] , input[type="number"], input[type="email"] {
            width: 93%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #29375A;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        select {
            width: 98%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        option {
            color: #333333;
        }

    </style>
</head>
<body>
<div class="container">
    <img src="https://media.licdn.com/dms/image/C560BAQEl6a9tUkSKfg/company-logo_200_200/0/1558604414993?e=2147483647&amp;v=beta&amp;t=liCSw94UkEjwbMZZh8N23ZMYixEAMmZNq2IftvsF97Y"
         alt="LinkedIn Logo">
    <h2>Create Parent</h2>
    <p>Welcome to RCA SMIS Parent Creation. Please Enter Details!!</p>
    <c:if test="${error != null}">
        <p>
            <span style="color: red"> ${error}</span>
        </p>
    </c:if>
    <c:if test="${success != null}">
        <p>
            <span style="color: green"> ${success}</span>
        </p>
    </c:if>
    <form action="createparent.php?page=createparent" method="post">
        <input type="text" placeholder="First Name" required name="firstName">
        <input type="text" placeholder="Last Name" required name="lastName">
        <input type="email" placeholder="Email" required name="email">
        <input type="number" placeholder="Phone Number" required name="phoneNumber">
        <label>
            Date Of Birth<br>
            <input type="date" placeholder="Date Of Birth" required name="dateOfBirth">
        </label>

        <!-- Child Input Fields -->
        <h3>Children</h3>
        <div id="child-input-container">
            <input type="text" placeholder="Child Name" required name="childName">
        </div>
        <button type="button" onclick="addChildInput()">Add Child</button>

        <input type="submit" value="Create Parent">
    </form>
    <p>
        <a href="listparents.php?page=parents&&action=list">All Parents</a>
    </p>
</div>

<script>
    let childCount = 2;

    function addChildInput() {
        let childInputContainer = document.getElementById('child-input-container');
        let childNameInput = document.createElement('input');
        childNameInput.type = 'text';
        childNameInput.placeholder = 'Child Name';
        childNameInput.required = true;
        childNameInput.name = 'childName';

        childInputContainer.appendChild(childNameInput);
        childCount++;
    }
</script>
</body>
</html>
