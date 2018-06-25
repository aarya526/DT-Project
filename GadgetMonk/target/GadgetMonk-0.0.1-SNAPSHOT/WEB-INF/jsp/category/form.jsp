<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
<title> Category Form</title>
<style>
.errors{
font-style="italics";
color:red;

}

</style>
</head>
<body>
 <spring:url value="/category/save" var="saveURL" />
 <form:form action="${saveURL }" method="POST" modelAttribute="categoryForm">
  <form:hidden path="id"/>
 <div class="form-group">
 <label for="name">CategoryName:</label>  
 <form:input class="form-control" placeholder="Enter Category"  path="categoryname"/>
 <form:errors path="categoryname" class="errors"></form:errors>
 </div>
 <div class="form-group">
 <label for="descrption" >Description: </label>
 <form:input class="form-control" placeholder="Enter Description" path="description"/>
 <form:errors path="description" class="errors" ></form:errors>
 </div>
<button type="submit" class="btn btn-success">Save</button>
 </form:form>
</body>
</html>