<%--
  Created by IntelliJ IDEA.
  User: mia
  Date: 16.05.23
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>

<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param
        name="title" value="Create User" />
</jsp:include>
<div id="middle">
  <h2 style="text-align: left;">
    <b>Enter User Details</b>
  </h2>
  <c:if test="${message != null}">
    <fieldset>
      <h3>
        <span style="color: red"> ${message}</span>
      </h3>
    </fieldset>
  </c:if>
  <form action="createmarks.php?page=createmarks" method="post">
    <table>
      <tr>
        <td align="right"><b><t:field mandatory="yes" text="Student Name"></t:field></b></td>
        <td align="left"><input type="text" size="25" maxlength="50"
                                name="studentname" id="studentname" /></td>
      </tr>
      <tr>
        <td align="right"><b><t:field mandatory="yes" text="Subject"></t:field></b></td>
        <td align="left"><input type="text" size="25"
                                maxlength="50" name="subject" id="subject" /></td>
      </tr>
      <tr>
        <td align="right"><b>Marks in above subject</b></td>
        <td align="left"><input type="number" size="50" maxlength="50"
                                name="marksobtained" id="marksobtained" /></td>
      </tr>
      <td align="right">&nbsp;</td>
      <td align="left"><input type="submit" name="saveDataMarks"
                              value="Submit Marks" /></td>
      </tr>
    </table>
    <a href="listmarks.php?page=marks&&action=list">All Marks </a>
  </form>
</div>

<%@ include file="footer.jsp"%>


