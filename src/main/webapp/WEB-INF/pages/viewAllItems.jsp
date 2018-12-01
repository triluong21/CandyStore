<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.tablelist table{
	border: none;
	font-family: arial;
	color:navy;
}
</style>
<title>Candy Catalog</title>
</head>
<body>
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
</body>
</html>