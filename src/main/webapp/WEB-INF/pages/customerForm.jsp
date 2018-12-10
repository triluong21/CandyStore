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
	  <p><a href=home.mvc><img src="<c:url value="/resources/images/totallysweetsbannerheader.png"/>" alt="Header logo" class="head" id="top"/></a></p>
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
    	        <td align = "right"><mvc:label path="firstname">First Name</mvc:label></td>
    	        <td align = "left"><mvc:input path="firstname" /></td>
    	        <td align = "left"><mvc:errors path="firstname" cssClass="error" /></td>
    	    </tr>
    	    <tr>
    	        <td align = "right"><mvc:label path="lastname">Last Name</mvc:label></td>
    	        <td align = "left"><mvc:input path="lastname" /></td>
    	        <td align = "left"><mvc:errors path="lastname" cssClass="error" /></td>
    	    </tr>
    	    <tr>
    	        <td align = "right"><mvc:label path="address">Address</mvc:label></td>
    	        <td align = "left"><mvc:input path="address" /></td>
    	        <td align = "left"><mvc:errors path="address" cssClass="error" /></td>
    	    </tr>
       	    <tr>
    	        <td align = "right"><mvc:label path="city">City</mvc:label></td>
    	        <td align = "left"><mvc:input path="city" /></td>
    	        <td align = "left"><mvc:errors path="city" cssClass="error" /></td>
    	    </tr>
    		<tr>
                <td align = "right"><mvc:label path="state">State</mvc:label></td>
                <td align = "left"><mvc:input path="state" /></td>
                <td align = "left"><mvc:errors path="state" cssClass="error" /></td>
            </tr>
            <tr>
    	        <td align = "right"><mvc:label path="zip">Zip</mvc:label></td>
    	        <td align = "left"><mvc:input path="zip" /></td>
    	        <td align = "left"><mvc:errors path="zip" cssClass="error" /></td>
    	    </tr>
            <tr>
                <td align = "right"><mvc:label path="country">Country</mvc:label></td>
                <td align = "left"><mvc:select path="country" items="${countries}" /></td>
                <td></td>
            </tr>
            <tr>
                <td align = "right"><mvc:label path="email">Email</mvc:label></td>
                <td align = "left"><mvc:input path="email" /></td>
                <td align = "left"><mvc:errors path="email" cssClass="error" /></td>
            </tr>
            <tr>
                <td align = "right"><mvc:label path="username">Username</mvc:label></td>
                <td align = "left"><mvc:input path="username" /></td>
                <td align = "left"><mvc:errors path="username" cssClass="error" /></td>
            </tr>
            <tr>
                <td align = "right"><mvc:label path="password">Password</mvc:label></td>
                <td align = "left"><mvc:input path="password" /></td>
                <td align = "left"><mvc:errors path="password" cssClass="error" /></td>
            </tr>
            <tr>
    	        <td colspan="3" align = "center">
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
	<p>Disclaimer:  This webpage is not an actual business.  It is purely for practice and is not to be used elseways.</p>
	</footer>
</section>
</body>
</html>
