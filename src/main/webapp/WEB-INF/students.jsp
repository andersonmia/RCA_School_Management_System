<%--
  Created by IntelliJ IDEA.
  User: mia
  Date: 16.05.23
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="cssfile.css" type="text/css" />
    <link rel="stylesheet" href="css/displaytag.css" type="text/css" />
    <link rel="stylesheet" href="css/screen.css" type="text/css" />
    <link rel="stylesheet" href="css/site.css" type="text/css" />
    <title>Student List</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        thead {
            background-color: #008dd4;
            color: white;
            font-family: 'Quicksand', sans-serif;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div id="layout">
    <div id="banner">
        <div class="bannerlogo"></div>
        <div class="text_header">RCA Management Information System</div>
    </div>
    <div>
        <%@ include file="menu.jsp"%>
    </div>
    <div id="middle">
        <c:if test="${authenticatedUser !=null}">
            <div class="options">
                <a href="createstudent.php?page=createstudent"><button>
                    <img src="icons/user_add.png" /> New Student Registration
                </button></a>
            </div>
            <hr />
            <fieldset>
                <legend> Student List </legend>
                <table>
                    <thead>
                    <tr>
                        <td>ID</td>
                        <td>Is International</td>
                        <td>Is Part Time</td>
                        <td>Is Repeating</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${students}" var="student">
                        <tr>
                            <td>${student.getID()}</td>
                            <td>${student.isInternational()}</td>
                            <td>${student.isPartTime()}</td>
                            <td>${student.isRepeating()}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </fieldset>
        </c:if>
    </div>
    <%@ include file="footer.jsp"%>
</div>
</body>
</html>

