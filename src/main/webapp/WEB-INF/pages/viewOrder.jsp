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
<title>Candy Order</title>
</head>
<body>
<section id="container">
  <header>
	<section id="title">
<<<<<<< HEAD
	  <h1>Candy Store</h1>
=======
	  <p><a href=home.mvc><img src="<c:url value="/resources/images/totallysweetsbannerheader.png"/>" alt="Header logo" class="head" id="top"/></a></p>
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
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
<h1>Current Order</h1>
<mvc:form name="orderItemForm" modelAttribute="orderitem" action="delete.mvc">
		<c:forEach items="${all}" var="orderitem">
			<div class="tablelist">
				<table>
				<tr>
					<td><input type="radio" name="orderitemid" value="${orderitem.orderitemid}"/></td>
<<<<<<< HEAD
					<td>Item ID: </td>
					<td>${orderitem.itemid}</td>
					<td>Item: </td>
					<td>${orderitem.itemname}</td>
					<td>Quantity: </td>
					<td>${orderitem.quantity}</td>
					<td>Total cost: </td>
					<td>${orderitem.totalcost}</td>
=======
					<td align = "right">Item ID: </td>
					<td align = "left">${orderitem.itemid}</td>
					<td align = "right">Item: </td>
					<td align = "left">${orderitem.itemname}</td>
					<td align = "right">Quantity: </td>
					<td align = "left">${orderitem.quantity}</td>
					<td align = "right">Total cost: </td>
					<td align = "left">${orderitem.totalcost}</td>
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
				</tr>
				</table>
			</div>
		</c:forEach>
				<br />
<<<<<<< HEAD
		<input type="submit" value= 'Delete Item' />
		<mvc:errors path="orderitemid" cssClass="error" />			
	</mvc:form>
		<a href = "viewItemCont.mvc">Add another item.</a>
		<a href = "form.mvc">Submit Total Order.</a>
=======
		<input class="bigger"  type="submit" value= 'Delete Item' />
		<mvc:errors path="orderitemid" cssClass="error" />			
		</mvc:form>
		<a class = "btn" href = "viewItemCont.mvc">Add another item.</a>
		<a class = "btn" href = "form.mvc">Submit Total Order.</a>
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
		<br />
  </section>
  <footer>
	<nav>
	  <ul>
	    <li><a href = "home.mvc">Home</a></li>
		<li><a href = "viewItemCont.mvc">Catalog</a></li>
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
