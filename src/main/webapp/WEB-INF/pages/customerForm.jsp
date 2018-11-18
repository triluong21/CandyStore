<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Entrance Handling</title>
</head>
<body>
<h2>Customer Registration Form</h2>
<mvc:form modelAttribute="customer" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="lastname">Last Name</mvc:label></td>
	        <td><mvc:input path="lastname" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="firstname">First Name</mvc:label></td>
	        <td><mvc:input path="firstname" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="address">Address</mvc:label></td>
	        <td><mvc:input path="address" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="city">City</mvc:label></td>
	        <td><mvc:input path="city" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="state">State</mvc:label></td>
            <td><mvc:input path="state" /></td>
        </tr>
        <tr>
	        <td><mvc:label path="zip">Zip</mvc:label></td>
	        <td><mvc:input path="zip" /></td>
	    </tr>
        <tr>
            <td><mvc:label path="country">Country</mvc:label></td>
            <td><mvc:select path="country" items="${countries}" /></td>
        </tr>
        <tr>
            <td><mvc:label path="email">Email</mvc:label></td>
            <td><mvc:input path="email" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Customers</a>
</body>
</html>