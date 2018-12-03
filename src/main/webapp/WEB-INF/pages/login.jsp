<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style1.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>Login</title>
</head>
    <body>
        <mvc:form modelAttribute="customer" action="loginAttempt.mvc" >
        <table>
        <tr>
            <td><mvc:label path="username">Enter your user-name</mvc:label></td>
            <td><mvc:input path="username" /></td>
            <td><mvc:errors path="username" cssClass="error" /></td>
        </tr>
        <tr>
            <td><mvc:label path="password">Please enter your password</mvc:label></td>
            <td><mvc:password path="password" /></td>
            <td><mvc:errors path="password" cssClass="error" /></td>
        </tr>
            <tr>
    	        <td colspan="2">
                    <input type="submit" value="Submit" />
    	        </td>
    	    </tr>
        </table>
        </mvc:form>
    </body>

</html>