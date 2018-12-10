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
<section id="container">
  <header>
	<section id="title">
	  <p><a href=home.mvc><img src="<c:url value="/resources/images/totallysweetsbannerheader.png"/>" alt="Header logo" class="head" id="top"/></a></p>
	</section>
	<section id="navbar">
	  <nav>
		<ul>
		  <li><a href = "home.mvc">Home</a></li>
		  <li><a href = "viewItem.mvc">Begin a New Order</a></li>
		</ul>
	  </nav>
	</section>
  </header>
  <section id="main">
    <table>
        <tr>
            <td align = "right">Customer name</td>
            <td align = "left">${user.firstname} ${user.lastname}</td>
        </tr>
        <tr>
            <td align = "right">Address</td>
            <td align = "left">${user.address}</td>
        </tr>
        <tr>
            <td align = "right">City</td>
            <td align = "left">${user.city}</td>
        </tr>
        <tr>
            <td align = "right">State</p></td>
            <td align = "left">${user.state}</td>
        </tr>
        <tr>
            <td align = "right">Zip</td>
            <td align = "left">${user.zip}</td>
        </tr>
        <tr>
            <td align = "right">Country</td>
            <td align = "left">${user.country}</td>
        </tr>
        <tr>
            <td align = "right">Email</td>
            <td align = "left">${user.email}</td>
        </tr>
        <tr>
            <td align = "right">Username</td>
            <td align = "left">${user.username}</td>
        </tr>
        </table>
		<div class="tablelist">
		<table>
        <c:forEach items="${all}" var="orderitem">
				<tr>
					<td align = "right">Item</td>
					<td align = "left">${orderitem.itemname}</td>
					<td align = "right">Quantity</td>
					<td align = "left">${orderitem.quantity}</td>
					<td align = "right">Total cost:</td>
					<td align = "left">${orderitem.totalcost}</td>
				</tr>
		</c:forEach>
		</table>
		</div>
        <table>
        	<tr>
        		<td align = "right">Order Total Cost:</td>
        		<td align = "left">${ordercost.ordercost}</td>
        	</tr>
        </table>
  </section>
  <footer>
	<nav>
	  <ul>
	    <li><a href = "home.mvc">Home</a></li>
		<li><a href = "viewItem.mvc">Begin a New Order</a></li>
	  </ul>
	</nav>
	<p>Disclaimer:  This webpage is not an actual business.  It is purely for practice and is not to be used elseways.</p>
  </footer>
</section>
</body>
</html>