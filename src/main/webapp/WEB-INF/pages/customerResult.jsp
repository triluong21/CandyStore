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
<<<<<<< HEAD
	  <h1>Confirm Customer Information</h1>
=======
	  <p><a href=home.mvc><img src="<c:url value="/resources/images/totallysweetsbannerheader.png"/>" alt="Header logo" class="head" id="top"/></a></p>
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
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
<<<<<<< HEAD
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
            <td>Zip</td>
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
         <tr>
    	        <td colspan="2">
                    <input type="submit" value="Complete Order" />
=======
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
    	        <td colspan="2">
                    <input class="bigger"  type="submit" value="Confirm" />
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
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
<<<<<<< HEAD
=======
	<p>Disclaimer:  This webpage is not an actual business.  It is purely for practice and is not to be used elseways.</p>
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
  </footer>
</section>
</body>
</html>