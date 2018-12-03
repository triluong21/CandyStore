<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Customers</title>
</head>
<body>
	<c:forEach items="${all}" var="customer">
		<table>
			<tr>
				<td>First Name</td>
				<td>${customer.firstname}</td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td>${customer.lastname}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${customer.address}</td>
			</tr>
			<tr>
				<td>City</td>
				<td>${customer.city}</td>
			</tr>
			<tr>
				<td>State</td>
				<td>${customer.state}</td>
			</tr>
			<tr>
				<td>Zip Code</td>
				<td>${customer.zip}</td>
			</tr>
			<tr>
				<td>Country</td>
				<td>${customer.country}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${customer.email}</td>
			</tr>
			<tr>
            	<td>Username</td>
            	<td>${customer.username}</td>
        	</tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new customer</a>
</body>
</html>