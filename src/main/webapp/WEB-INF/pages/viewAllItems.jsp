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
		  <li><a href = "viewItem.mvc">Catalog</a></li>
		</ul>
	  </nav>
	</section>
  </header>
  <section id="main">
<h1>Candy Catalog</h1>
<mvc:label path="tempCustomer" name="tempCustomer" modelAttribute="tempCustomer" />
	<mvc:form name="catalogForm" modelAttribute="item" action="viewSelectedItem.mvc">
		<c:forEach items="${all}" var="item">
			<div class="tablelist">
				<table>
					<tr>
						<td><input type="radio" name="itemid" value="${item.itemid}"/></td>
<<<<<<< HEAD
						<td><input type="text" name="itemname" value="${item.itemname}"/></td>
						<td><input type="text" name="itemcolor" value="${item.itemcolor}"/></td>
						<td><input type="text" name="retail" value="${item.retail}"/></td>
=======
						<td align = "right">Name:</td>
						<td align = "left"><input type="text" name="itemname" value="${item.itemname}"/></td>
						<td align = "right">Cost:</td>
						<td align = "left"><input type="text" name="retail" value="${item.retail}"/></td>
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
					</tr>
				</table>
			</div>
		</c:forEach>
		<br />
<<<<<<< HEAD
		<input type="submit" value= 'Select Item' />
=======
		<input class="bigger"  type="submit" value= 'Select Item' />
>>>>>>> 7193c97769f74cc962aeab0855f22d3eccf00e85
		<td><mvc:errors path="erroritemid" cssClass="error" /></td>
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
