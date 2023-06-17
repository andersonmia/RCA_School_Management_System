<%-- Created by IntelliJ IDEA. User: mia Date: 13.06.23 Time: 20:55 To change this template use File | Settings | File
    Templates. --%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="cssfile.css" type="text/css"/>
    <title>Instructor Registrations</title>
    <style type="text/css">
        * {
            font-family: Work Sans, serif;
            color: #99154b;
        }

        span {
            color: white;
        }

        #button {
            border: 1px solid #d61f69;
            border-radius: 5px;
            background-color: #d61f69;
            color: white;
            padding: 10px 15px;
        }

        #button:hover {
            background-color: white;
            color: #99154b;
        }

        h2 {
            margin-bottom: 1rem;
            margin-top: 1rem;
        }

        #header {
            display: flex;
            flex-direction: column;
            margin-bottom: 2rem;
            justify-content: center;
            align-items: center;
        }

        #profile {
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 2rem;
        }

        .span {
            border: 1px solid #d61f69;
            padding: 10px;
            border-radius: 5px;
        }

        #bts {
            border-radius: 50%;
            border: 1px solid #d61f69;
        }

        #logout:hover {
            background-color: #d61f69;
            color: white;
        }

        .beforeTable {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: white;
            padding: 1rem;
            border-bottom-right-radius: 12px;
            border-bottom-left-radius: 12px;
            border-bottom: 2px solid #99154b;
            border-left: 2px solid #99154b;
            border-right: 2px solid #99154b;
            width: 100%;

        }

        .table {
            width: 100%;
        }

        .td {
            border: 1px solid #d61f69;
            text-align: left;
            padding: 8px;
        }

        .thead > tr > td {
            background-color: #99154b;
            color: white;
            border: 1px solid #d61f69;
            padding: 8px;
            border-collapse: collapse;
        }

        fieldset {
            background-color: white;
        }

        #id {
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        .beforeOptions {
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
            border-top: 2px #99154b solid;
            border-right: 2px #99154b solid;
            border-left: 2px solid #99154b;
            padding: 15px;
            height: 4vw;
        }

        .fullname {
            display: flex;
            align-items: center;
            gap: 10px;
        }
    </style>
</head>

<body>
<div>
    <div id="header">
        <div class="bannerlogo"></div>

        <h2>RCA Management Information System</h2>
    </div>
    <c:if test="${authenticatedUser !=null}">
        <b>
            <div id="profile">
                <div class="fullname">
                    <img src="icons/bts.png" id="bts" width="50px" height="50px"/>
                    <span style="color: #99154b">${authenticatedUser.fullName}</span>
                </div>
                <a href="login.php?logout=logout" class="span" id="logout">Logout</a>
                <a href="listuser.php?page=profile&&id=${authenticatedUser.id}" id="button">Profile</a>
            </div>
        </b>
    </c:if>
    <c:if test="${authenticatedUser ==null}">
        <div class="menu" align="left">
            <a href="login.php?"><span>Login</span></a>
        </div>
    </c:if>
</div>
<div>
    <%@ include file="menu.jsp" %>
</div>
<div id="middle">
    <c:if test="${authenticatedUser !=null}">
        <div class="beforeOptions" style="margin-top: -20%">
            <div class="options">
                <a href="createinstructor.php?page=createinstructor" class="ba"
                   style="padding: 15px;display: flex;align-items: center;"
                   style="padding: 12px">
                    <img src="icons/teacher.png" height="30px" width="30px"/> Create New
                    Instructor
                </a>
            </div>
            <div class="search">
                <form action="listuser.php" method="get">
                    <table>
                        <tr>
                            <td>Enter User ID</td>
                            <td><input type="text" name="id" id="id"/></td>
                            <td><input type='submit' name="userregistrationsearch" value='search'/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="beforeTable">
            <table>
                <tr>
                    <td align="left">
                        <input type="text" size="15" maxlength="50" readonly="readonly" name="savedBy"
                               id="savedBy" hidden="hidden" value="${authenticatedUser.id}"/>
                    </td>

                    <td>
                        <select name="userRole" id="userRole">
                            <option selected="selected" value="NONE">
                                Select Role
                            </option>
                            <c:forEach items="${userRoles}" var="usrRole" varStatus="usrRolestatus">
                                <option value="${usrRole}">
                                    <c:out value="${usrRole.getRoleDescription()}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                    <td align="right">
                        <input type="submit" name="saveDataUserStatus" value="Save Status"/>
                    </td>
                </tr>
            </table>

            <table class="table">
                <thead class="thead">
                <tr>
                    <td>FirstName</td>
                    <td>LastName</td>
                    <td>DateOfBirth</td>
                    <td>PhoneNumber</td>
                    <td>Email</td>
                    <td>Remuneration Date</td>
                    <td>Salary</td>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${instructors}" var="inst" varStatus="instStatus">
                    <tr>
                        <td class="td">${inst.getFirstName()}</td>
                        <td class="td">${inst.getLastName()}</td>
                        <td class="td">${inst.getDateOfBirth()}</td>
                        <td class="td">${inst.getPhoneNumber()}</td>
                        <td class="td">${inst.getEmail()}</td>
                        <td class="td">${inst.getRemunerationDate()}</td>
                        <td class="td">${inst.getSalary()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>