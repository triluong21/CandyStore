<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
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
<h2>Customer Registration Result</h2>
    <table>
        <tr>
            <td>First Name</td>
            <td>${c.firstname}</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>${c.lastname}</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>${c.address}</td>
        </tr>
        <tr>
            <td>City</td>
            <td>${c.city}</td>
        </tr>
        <tr>
            <td>State</td>
            <td>${c.state}</td>
        </tr>
        <tr>
            <td>Zip</td>
            <td>${c.zip}</td>
        </tr>
        <tr>
            <td>Country</td>
            <td>${c.country}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${c.email}</td>
        </tr>
        <tr>
            <td>Username</td>
            <td>${c.username}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Customers</a>
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