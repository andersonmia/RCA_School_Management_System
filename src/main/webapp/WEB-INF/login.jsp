<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
<link rel="stylesheet" href="../cssfile.css" />
<style type="text/css">
* {
                        font-family: Work Sans, serif;
                        color: #99154b;
                    }
img{
box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}>
    *{
        font-family: Work Sans, serif;
    }
    body {
        background-color: #FCE8F3;
        color: #99154B;

    }

    .container {
        margin: 10% auto 50px;
        width: 400px;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        position: relative;
        justify-content: center;
        display: flex;
        flex-direction: column;
    }

    h2 {
        text-align: center;
        color: #333333;
          margin-top: 10px;
    }

    p, a {
        text-align: center;
          text-decoration: none;
        color: #99154B ;
    }

    input[type="text"], input[type="password"], input[type="date"], input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        margin-top: 10px;
        border: none;
        border-radius: 5px;
        background-color: #f2f2f2;
        color: #333333;
        font-size: 16px;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }

    input:focus {
        outline-color: #D61F69;!important
        outline-width: 2px;

    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: #D61F69;
        color: #ffffff;
        font-size: 16px;
        cursor: pointer;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        margin-top: 10px;
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
<div class="container">
    <form action="login.php" method="post">
        <label for="username">Username: </label><br><input type="text" name="username" id="username"
                                                       placeholder="Enter username"/>
        <label for="username">Password: </label><br><input type="password" name="password" id="password"
                                                       placeholder="Enter password"/>
        <input type="submit" value="Login"/>
    </form>
    <c:if test="${authenticatedUser ==null}">
        <div class="fieldset" style="display: flex;margin-right: auto;margin-left: auto;align-items: center;gap: 8px;margin-top: 20px">
            <img src="icons/programmer.png" alt="" width="30px" height="30px" style="border-radius: 50%">
            <a href="createuser.php?page=createuser">New User Registration</a>
        </div>

    </c:if>
</div>
