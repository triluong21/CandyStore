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
<title>Candy Catalog</title>
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
		  <li><a href = "viewItemCont.mvc">Catalog</a></li>
		</ul>
	  </nav>
	</section>
  </header>
  <section id="main">
<h1>Order</h1>
<mvc:label path="tempCustomer" name="tempCustomer" modelAttribute="tempCustomer" />
<mvc:form name="orderItemForm" modelAttribute="tempitem" action="viewItemCont.mvc">
		<c:forEach items="${all}" var="orderitem">
			<div class="tablelist">
				<table>
				<tr>
					<td>Item ID: </td>
					<td>${orderitem.itemid}</td>
					<td>Item: </td>
					<td>${orderitem.itemname}</td>
					<td>Quantity: </td>
					<td>${orderitem.quantity}</td>
					<td>Total cost: </td>
					<td>${orderitem.totalcost}</td>
				</tr>
				</table>
			</div>
		</c:forEach>
				<br />
		<input type="submit" value= 'Add another item' />		
	</mvc:form>
		<a href = "form.mvc">Submit Total Order.</a>
		<br />
  </section>
  <footer>
	<nav>
	  <ul>
	    <li><a href = "home.mvc">Home</a></li>
		<li><a href = "viewItemCont.mvc">Catalog</a></li>
	  </ul>
	</nav>
  </footer>
</section>
</body>
</html>