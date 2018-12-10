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
	  <p><a href=home.mvc><img src="<c:url value="/resources/images/totallysweetsbannerheader.png"/>" alt="Header logo" class="head" id="top"/></a></p>
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
<h1>Candy Catalog</h1>
<mvc:label path="tempCustomer" name="tempCustomer" modelAttribute="tempCustomer" />
	<mvc:form name="orderItemForm" modelAttribute="orderitem" action="delete.mvc">
		<c:forEach items="${all}" var="orderitem">
			<div class="tablelist">
				<table>
				<tr>
				    <td><input type="radio" name="orderitemid" value="${orderitem.orderitemid}"/></td>
					<td align = "right">Item: </td>
					<td align = "left">${orderitem.itemname}</td>
					<td align = "right">Quantity: </td>
					<td align = "left">${orderitem.quantity}</td>
					<td align = "right">Total cost: </td>
					<td align = "left">${orderitem.totalcost}</td>
				</tr>
				</table>
			</div>
		</c:forEach>
				<br />
		<input type="submit" value= 'Delete this Item' />		
	</mvc:form>
  </section>
  <footer>
	<nav>
	  <ul>
	    <li><a href = "home.mvc">Home</a></li>
		<li><a href = "viewItemCont.mvc">Catalog</a></li>
	  </ul>
	</nav>
	<p>Disclaimer:  This webpage is not an actual business.  It is purely for practice and is not to be used elseways.</p>
  </footer>
</section>
</body>
</html>
