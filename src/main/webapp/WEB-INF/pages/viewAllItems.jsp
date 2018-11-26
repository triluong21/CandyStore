<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Candy Catalog</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Item Name</td>
				<td>${item.itemname}</td>
			</tr>
			<tr>
				<td>Item Color</td>
				<td>${item.itemcolor}</td>
			</tr>
			<tr>
				<td>Cost</td>
				<td>${item.cost}</td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td>${item.quantity}</td>
			</tr>
			<tr>
				<td>Retail</td>
				<td>${item.retail}</td>
			</tr>
		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new customer</a>
</body>
</html>