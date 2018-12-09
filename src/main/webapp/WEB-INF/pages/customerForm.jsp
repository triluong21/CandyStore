<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style1.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>Customer Entrance Handling</title>
</head>
<body>
  <section id="container">
    <header>
	  <section id="title">
	    <h1>Candy Store</h1>
	  </section>
	  <section id="navbar">
	    <nav>
		  <ul>
			<li><a href = "home.mvc">Home</a></li>
		    <li><a href = "viewItem.mvc">Catalog</a></li>
		  </ul>
		</nav>
	  </section>
	</header>
	<section id="main">
    <h2>Customer Registration Form</h2>
    <mvc:form modelAttribute="customer" action="result.mvc">
    	<table>
    	    <tr>
    	        <td><mvc:label path="firstname">First Name</mvc:label></td>
    	        <td><mvc:input path="firstname" /></td>
    	        <td><mvc:errors path="firstname" cssClass="error" /></td>
    	    </tr>
    	    <tr>
    	        <td><mvc:label path="lastname">Last Name</mvc:label></td>
    	        <td><mvc:input path="lastname" /></td>
    	        <td><mvc:errors path="lastname" cssClass="error" /></td>
    	    </tr>
    	    <tr>
    	        <td><mvc:label path="address">Address</mvc:label></td>
    	        <td><mvc:input path="address" /></td>
    	        <td><mvc:errors path="address" cssClass="error" /></td>
    	    </tr>
       	    <tr>
    	        <td><mvc:label path="city">City</mvc:label></td>
    	        <td><mvc:input path="city" /></td>
    	        <td><mvc:errors path="city" cssClass="error" /></td>
    	    </tr>
    		<tr>
                <td><mvc:label path="state">State</mvc:label></td>
                <td><mvc:input path="state" /></td>
                <td><mvc:errors path="state" cssClass="error" /></td>
            </tr>
            <tr>
    	        <td><mvc:label path="zip">Zip</mvc:label></td>
    	        <td><mvc:input path="zip" /></td>
    	        <td><mvc:errors path="zip" cssClass="error" /></td>
    	    </tr>
            <tr>
                <td><mvc:label path="country">Country</mvc:label></td>
                <td><mvc:select path="country" items="${countries}" /></td>
            </tr>
            <tr>
                <td><mvc:label path="email">Email</mvc:label></td>
                <td><mvc:input path="email" /></td>
                <td><mvc:errors path="email" cssClass="error" /></td>
            </tr>
            <tr>
                <td><mvc:label path="username">Username</mvc:label></td>
                <td><mvc:input path="username" /></td>
                <td><mvc:errors path="username" cssClass="error" /></td>
            </tr>
            <tr>
                <td><mvc:label path="password">Password</mvc:label></td>
                <td><mvc:input path="password" /></td>
                <td><mvc:errors path="password" cssClass="error" /></td>
            </tr>
            <tr>
    	        <td colspan="2">
                    <input type="submit" value="Submit" />
    	        </td>
    	    </tr>
    	</table>
    </mvc:form>
  </section>
	<footer>
	    <nav>
		  <ul>
			<li><a href = "home.mvc">Home</a></li>
		    <li><a href = "viewItem.mvc">Catalog</a></li>
		  </ul>
		</nav>
	</footer>
</section>
</body>
</html>
