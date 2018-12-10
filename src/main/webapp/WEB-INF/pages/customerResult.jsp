<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style1.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<meta charset="UTF-8">
<title>Customer Confirm</title>
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
<h2>Confirm Customer Information</h2>
<mvc:form name="customerinfo" modelAttribute="customer" action="final.mvc" >
    <table>
        <tr>
            <td align = "right">First Name</td>
            <td align = "left">${customer.firstname}</td>
        </tr>
        <tr>
            <td align = "right">Last Name</td>
            <td align = "left">${customer.lastname}</td>
        </tr>
        <tr>
            <td align = "right">Address</td>
            <td align = "left">${customer.address}</td>
        </tr>
        <tr>
            <td align = "right">City</td>
            <td align = "left">${customer.city}</td>
        </tr>
        <tr>
            <td align = "right">State</td>
            <td align = "left">${customer.state}</td>
        </tr>
        <tr>
            <td align = "right">Zip</td>
            <td align = "left">${customer.zip}</td>
        </tr>
        <tr>
            <td align = "right">Country</td>
            <td align = "left">${customer.country}</td>
        </tr>
        <tr>
            <td align = "right">Email</td>
            <td align = "left">${customer.email}</td>
        </tr>
        <tr>
            <td align = "right">Username</td>
            <td align = "left">${customer.username}</td>
        </tr>
         <tr>
    	        <td colspan="2" align = "center">
                    <input type="submit" value="Complete Order" />
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