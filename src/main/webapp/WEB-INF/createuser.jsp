<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
    prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
     prefix="fn" %> <%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
	 <jsp:include page="headeradmin.jsp">
       <jsp:param name="title" value="Create User"/>
     </jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Create User</title>
  <link rel="stylesheet" href="../cssfile.css" />
  <link
          href="https://fonts.googleapis.com/css?family=Work+Sans"
          rel="stylesheet"
  />

  <style>
    * {
      font-family: Work Sans, serif;
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
    input[type="email"]
  {
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
    .fieldset{
      display: flex;
      gap: 10px;
      align-items: center;
      justify-content: center;
      margin: auto;
    }
    form>div{
      width: 100%;
    }
    form>div>select{
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
  </style>
</head>

<body>
<form action="createuser.php?page=createuser" method="post" id="container">
  <h2>Enter User Details</h2>
  <c:if test="${message != null}">
    <div class="fieldset">
      <h3>
        <span style="color: green"> ${message}</span>
      </h3>
      <img src="icons/success.png" width="30px" height="30px">

    </div>
  </c:if>
<div>
  <label for="username">Username</label
  ><input
        type="text"
        size="25"
        maxlength="50"
        name="username"
        id="username"
        placeholder="Enter username"
        required
/>
</div>
  <div>
    <label for="password">Password</label
    ><input
          type="password"
          size="25"
          maxlength="50"
          name="password"
          id="password"
          placeholder="Enter password"
          required
  />
  </div>
  <div>
    <label for="userfullname">Full name</label
    ><input
          type="text"
          size="50"
          maxlength="50"
          name="userfullname"
          id="userfullname"
          placeholder="Enter full name"
          required
  />
  </div>
  <div>
    <label for="email">Email</label
    ><input
          type="text"
          size="50"
          maxlength="50"
          name="email"
          id="email"
          required
          placeholder="Enter email"
  />
  </div>
<div>
  <label for="userRole">Role</label
  ><select name="userRole" id="userRole" style="width: 98%">
  <option value="">Select Role</option>
  <c:forEach
          items="${userRoles}"
          var="userrole"
          varStatus="userrolestatus"
  >
    <option value="${userrole}">
      <c:out value="${userrole.getRoleDescription()}" />
    </option>
  </c:forEach>
</select>
</div>
  <input type="submit" name="saveDataUser" value="Create User" />
  <div class="fieldset">
    <img src="icons/arrow-left.png" height="30px" width="30px">
    <a href="login.php">Back to Login?</a>

  </div>
</form>
<%@ include file="footer.jsp" %>
</body>
</html>
