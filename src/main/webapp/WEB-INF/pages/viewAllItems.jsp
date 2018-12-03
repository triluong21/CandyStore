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
		  <li><a href = "viewItem.mvc">Catalog</a></li>
		</ul>
	  </nav>
	</section>
  </header>
  <section id="main">
<h1>Candy Catalog</h1>
	<mvc:form name="catalogForm" modelAttribute="item" action="viewSelectedItem.mvc">
		<c:forEach items="${all}" var="item">
			<div class="tablelist">
				<table>
					<tr>
						<td><input type="radio" name="itemid" value="${item.itemid}"/></td>
						<td><input type="text" name="iname" value="${item.itemname}"/></td>
						<td><input type="text" name="icolor" value="${item.itemcolor}"/></td>
						<td><input type="text" name="iretail" value="${item.retail}"/></td>
					</tr>
				</table>
			</div>
		</c:forEach>
		<br />
		<input type="submit" value= 'Select Item' />
		<td><mvc:errors path="id" cssClass="error" /></td>
	</mvc:form>
	<a href="form.mvc">Add a new customer</a>
  </section>
  <footer>
	<nav>
	  <ul>
	    <li><a href = "home.mvc">Home</a></li>
		<li><a href = "viewItem.mvc">Catalog</a></li>
	  </ul>
	</nav>
  </footer>
</section>
</body>
</html>