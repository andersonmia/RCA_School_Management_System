<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="cssfile.css" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
    <style type="text/css">

        * {
            font-family: Work Sans, serif;
            color: #99154B;
        }

        span {
            color: white;
        }

        #button {
            border: 1px solid #D61F69;
            border-radius: 5px;
            background-color: #D61F69;
            color: white;
            padding: 10px 15px;
        }

        #button:hover {
            background-color: white;
            color: #99154B;
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
            border: 1px solid #D61F69;
            padding: 10px;
            border-radius: 5px;
        }

        #bts {
            border-radius: 50%;
            border: 1px solid #D61F69;
        }

        #logout:hover {
            background-color: #D61F69;
            color: white;
        }

    </style>

    <title>${param.title}</title>
</head>
<body>
<div>
    <div>
        <div id="header">
            <div class="bannerlogo"></div>

            <h2>RCA Management Information System</h2>
        </div>
        <c:if test="${authenticatedUser !=null}">
            <b>
                <div id="profile">
                    <div style="display: flex;align-items: center;gap: 10px">
                        <img src="icons/bts.png" id="bts" width="50px" height="50px"/>
                        <span style="color: #99154B">${authenticatedUser.fullName}</span>
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

</div>
</body>
</html>

<%@ include file="menu.jsp" %>