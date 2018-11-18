<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Confirm</title>
</head>
<body>
<h2>Customer Registration Result</h2>
    <table>
        <tr>
            <td>First Name</td>
            <td>${c.firstname}</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>${c.lastname}</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>${c.address}</td>
        </tr>
        <tr>
            <td>City</td>
            <td>${u.city}</td>
        </tr>
        <tr>
            <td>State</td>
            <td>${c.state}</td>
        </tr>
        <tr>
            <td>Zip</td>
            <td>${c.zip}</td>
        </tr>
        <tr>
            <td>Country</td>
            <td>${c.country}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${c.email}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Customers</a>
</body>
</html>