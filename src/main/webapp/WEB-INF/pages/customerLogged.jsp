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
<title>Customer History</title>
</head>
<body>
    <table>
        <tr>
            <td>First Name</td>
            <td>${user.firstname}</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>${user.lastname}</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>${user.address}</td>
        </tr>
        <tr>
            <td>City</td>
            <td>${user.city}</td>
        </tr>
        <tr>
            <td>State</td>
            <td>${user.state}</td>
        </tr>
        <tr>
            <td>Zip</td>
            <td>${user.zip}</td>
        </tr>
        <tr>
            <td>Country</td>
            <td>${user.country}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${user.email}</td>
        </tr>
        <tr>
            <td>Username</td>
            <td>${user.username}</td>
        </tr>
        </table>
        
</body>
</html>