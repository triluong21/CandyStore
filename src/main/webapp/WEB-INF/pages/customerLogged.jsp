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
	  <h1>Candy Store</h1>
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
            <td>${user.firstname}</td>
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
		<table>
        <c:forEach items="${all}" var="orderitem">
			<div class="tablelist">
				<tr>
					<td>Item ID</td>
					<td>${orderitem.itemid}</td>
					<td>Item</td>
					<td>${orderitem.itemname}</td>
					<td>Quantity</td>
					<td>${orderitem.quantity}</td>
					<td>Total cost:</td>
					<td>${orderitem.totalcost}</td>
				</tr>
			</div>
		</c:forEach>
		</table>
        <table>
        <tr>
        <td>Order Total Cost:</td>
        <td>${ordercost.ordercost}</td>
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
  </footer>
</section>
</body>
</html>