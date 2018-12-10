<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style1.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>Candy Store Home</title>
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
		  <li><a href = "login.mvc">Login</a></li>
		</ul>
	  </nav>
	</section>
  </header>
  <section id="main">
    <h1>Welcome to Totally Sweets!</h1>
    <p>Here at Totally Sweets, we have the totality of all sweets!  We give it our all to fulfill all orders we receive when we receive them. 
    With our vast collection of sweets, we aim to cater to all needs of our customers.  Should you desire to contact us directly, please use the following contact methods:</p>
    <h3>Mailing address:</h3>
    <p>Totally Sweets</p>
    <p>1234 Nope Pkwy</p>
    <p>Missing, DE 11111</p>
    <h3>Phone:</h3>
    <p>(555) 111-1234</p>
    <h3>Email:</h3>
    <p>notarealemailaddress@nope.com</p>
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
