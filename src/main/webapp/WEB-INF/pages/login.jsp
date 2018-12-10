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
<title>Login</title>
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
		</ul>
	  </nav>
	</section>
  </header>
  <section id="main">
        <mvc:form modelAttribute="customer" action="loginAttempt.mvc" >
        <table>
        <tr>
            <td align = "right"><mvc:label path="username">Enter your user-name</mvc:label></td>
            <td align = "left"><mvc:input path="username" /></td>
            <td align = "left"><mvc:errors path="username" cssClass="error" /></td>
        </tr>
        <tr>
            <td align = "right"><mvc:label path="password">Please enter your password</mvc:label></td>
            <td align = "left"><mvc:password path="password" /></td>
            <td align = "left"><mvc:errors path="password" cssClass="error" /></td>
        </tr>
            <tr>
    	        <td colspan="2">
                    <input type="submit" value="Submit" />
    	        </td>
    	    </tr>
        </table>
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