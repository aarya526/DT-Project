<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Category Details</title>
</head>
<body>
 <spring:url value="/category/add" var="addURL" />
 <a href="${addURL }">Add new Category</a>
 
 <table width="100%" border="1">
  <tr>
   <td>ID</td>
   <td>CategoryName: </td>
   <td>Description: </td>
   <td colspan="2">Action</td>
  </tr>  
  <c:forEach items="${list}"  var="category" >
   <tr>
    <td>${category.id}</td>
    <td>${category.categoryname}</td>
    <td>${category.description}</td>
    <td>
     <spring:url value="/category/update/${category.id }" var="updateURL" />
     <a href="${updateURL}">Update</a>
    </td>
    <td>
     <spring:url value="/category/delete/${category.id }" var="deleteURL" />
     <a href="${deleteURL}">Delete</a>
    </td>
   </tr>
  </c:forEach>
 </table>
</body>
</html>