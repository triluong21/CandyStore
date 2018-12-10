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
<title>Order Item</title>
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
  <mvc:label path="tempCustomer" name="tempCustomer" modelAttribute="tempCustomer" />
  <mvc:label path="orderNumber" name="orderNumber" modelAttribute="orderNumber" />
<h1>Order Item</h1>
	<mvc:form name="orderItemForm" modelAttribute="tempitem" action="writeOrder.mvc">
		<c:forEach items="${all}" var="item">
			<div class="tablelist">
				<table>
					<tr>
						<td align = "right">Quantity:</td>
					    <td align = "left"><input type="text" name="quantity"/></td>
						<td><input type="text" name="itemid" value="${item.itemid}"/></td>
						<td><input type="text" name="itemname" value="${item.itemname}"/></td>
						<td><input type="text" name="itemcolor" value="${item.itemcolor}"/></td>
						<td><input type="text" name="retail" value="${item.retail}"/></td>
					</tr>
				</table>
			</div>
		</c:forEach>
		<br />
		<input class="bigger" type="submit" value= 'Place Order' />
		<mvc:errors path="quantity" cssClass="error" />		
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