<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Parent</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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

        input[type="submit"],button {
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
    <form action="createparent.php?page=createparent" method="post" id="container">
        <h2>Create Parent</h2>
        <p>Welcome to RCA SMIS Parent Creation. Please Enter Details!!</p>
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
        <button type="button" onclick="addChildInput()" style="width: 30%;">Add Child</button>

        <input type="submit" value="Create Parent">
        <div class="fieldset">
            <img src="icons/parents.png" height="30px" width="30px" alt="">
            <a href="listparents.php?page=parents&&action=list">All Parents</a>
        </div>
    </form>
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