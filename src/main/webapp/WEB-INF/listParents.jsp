<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="cssfile.css" type="text/css"/>
    <link rel="stylesheet" href="css/displaytag.css" type="text/css"/>
    <link rel="stylesheet" href="css/screen.css" type="text/css"/>
    <link rel="stylesheet" href="css/site.css" type="text/css"/>
    <title>Parent Registrations</title>
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

        .child {
            margin-bottom: 10px;
            margin-top: 10px;
        }

        thead {
            background-color: #008dd4;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div id="layout">
    <div id="banner">
        <div>RCA Management Information System</div>
        <div class="right" style="text-align: right;">
            <c:if test="${authenticatedUser != null}">
                <b>
                    <a href="listuser.php?page=profile&&id=${authenticatedUser.id}">
                        <button>Profile</button>
                    </a> |
                    <img src="icons/user.png"/>
                    <span style="color: #ffffff; ">${authenticatedUser.userRole}: ${authenticatedUser.username}</span> |
                    <a href="login.ap?page=logout"><font color="#ffffff">Logout</font></a>
                </b>
            </c:if>
            <c:if test="${authenticatedUser == null}">
                <div class="menu" align="left">| <a href="login.php?">Login</a> |</div>
            </c:if>
        </div>
    </div>
    <div>
        <%@ include file="menu.jsp" %>
    </div>
    <div id="middle">
        <c:if test="${authenticatedUser != null}">
            <div class="options">
                <a href="createparent.php?page=createparent">
                    <button><img src="icons/programmer.png"/> Create New Parent</button>
                </a>
            </div>
            <hr/>

            <table style="border: 0;">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Email</td>
                    <td>Date of Birth</td>
                    <td>Phone Number</td>
                    <td>Children</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${parents}" var="parent" varStatus="parentStatus">
                    <tr>
                        <td>${parent.getId()}</td>
                        <td>${parent.getFirstName()}</td>
                        <td>${parent.getLastName()}</td>
                        <td>${parent.getEmail()}</td>
                        <td>${parent.getDateOfBirth()}</td>
                        <td>${parent.getPhoneNumber()}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty parent.children}">
                                    <table>
                                        <c:forEach items="${parent.children}" var="child">
                                            <tr>
                                                <td class="child">${child.lastName} ${child.firstName}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </c:when>
                                <c:otherwise>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
