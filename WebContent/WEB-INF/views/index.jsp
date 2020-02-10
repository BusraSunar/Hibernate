<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CUSTOMER MANAGER</title>
</head>
<body>
	<div align="center">
    <h2>Customer Manager</h2>
    <form method="get" action="search">
        <input type="text" name="keyword" />  &nbsp; 
        <input type="submit" value="Search" />
    </form>
    <br>
    <form action="new">
    	<button type="submit" >New Customer</button>
   	</form>
   	<br>
   	<hr>
   	<br>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>E-mail</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listCustomer}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td>
            	<form action="edit/${customer.id}" method="post">
    				<button type="submit" >Edit</button>
   				</form>
   				&nbsp;&nbsp;&nbsp;
   				<form action="delete/${customer.id}" method="post">
    				<button type="submit">Delete</button>
   				</form>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>   
</body>
</html>