<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<title>GM:Cart</title>
 <style>
.parallax{
background-image:url("resources/images/Playstation images/PS4-Console.jpg");
min-height:600px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:100%;
margin-top:0px;
margin-bottom:0px;
}
.parallax1{
background-image:url("");
min-height:500px;
background-attachment:fixed;
background-color:white;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
margin-bottom:0px;
}
.parallax2{
background-color:#f0f0f0;
min-height:1400px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.parallax3{
background-color:white;
min-height:800px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.parallax4{
background-image:url("resources/images/Playstation images/cod.jpg");
background-color:white;
min-height:600px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.parallax5{
background-image:url("");
background-color:white;
min-height:2200px;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
background-size:cover;
}
.navbar1{
  overflow: hidden;
  background-color:blue;
  font-family: Arial;
}
.navbar1 a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.dropdown1 {
  float: left;
  overflow: hidden;
}
.dropdown1 .dropbtn1 {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}
.navbar1 a:hover, .dropdown1:hover .dropbtn1 {
  background-color:rgb(0, 118, 201);
}
.dropdown-content1 {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  width: 100%;
 
  left: 0;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content1 .header1 {
  background:rgb(0, 118, 201);
  padding: 16px;
  color: white;
}
.dropdown1:hover .dropdown-content1 {
  display: block;
}
.zoom{
transform:scale(1.08);
}
.ps4{
width:200px; 
height:120px; 
margin-top:20px;
 transition:transform 0.5s; 
 margin-left:130px;
}
.psvr{
width:200px; 
height:120px; 
margin-top:20px;
 transition:transform 0.5s; 
 margin-left:250px;
}
.xboxone-X{
width:210px; 
height:80px; 
margin-top:20px;
 transition:transform 0.5s; 
 margin-left:250px;
}
.ps4pro{
width:200px;
height:120px;
margin-top:20px;
transition:transform 0.5s; 
 margin-left:20px;
}
.buy{
width:200px;
height:120px;
margin-top:20px;
transition:transform 0.5s; 
 margin-left:20px;
}
.h2{
 font-family: Arial, sans-serif;
 }
 .responsive {
    width: 100%;
    height: auto;
}
 .responsive1 {
    width: auto;
    height: auto;
	float:left;
}
.responsive2 {
    width: 100%;
    height: auto;
	float:right;
}
h1{
font-size:50px;
color:rgb(44, 66, 78);
font-family:ariel,helvetica,sans-serif;
}
h3{
font-size:30px;
color:rgb(44, 66, 78);
font-family:helvetica;
}
p{
color:white;
}
.smoother-gameplay{
width:437px;
height:auto;
float:right; 
margin-right:-437px;
border-bottom:5px solid green;
padding:23px;
margin-top:300px;
background-color:black;
}
.bigger-world{
width:442px;
height:auto;
float:left; 
border-bottom:5px solid green;
padding:23px;
margin-top:445px;
background-color:black;
}
.ps4nav{
border-bottom:5px solid green;
}
.footer {
   
   left: 0;
   bottom: 0;
   width: 100%;
   height: 200px;
   background-color: rgb(60, 60, 60);
   color: white;
   text-align: center;
}
</style>
<script>
$(document).ready(function(){
   $(".ps4").mouseenter(function(){
   $(".ps4").addClass("zoom");
   });
   $(".ps4").mouseleave(function(){
   $(".ps4").removeClass("zoom"); 
   });
   $(".ps4pro").mouseenter(function(){
   $(".ps4pro").addClass("zoom");
   });
   $(".ps4pro").mouseleave(function(){
   $(".ps4pro").removeClass("zoom");
   });
   $(".buy").mouseenter(function(){
   $(".buy").addClass("zoom");
   });
   $(".buy").mouseleave(function(){
   $(".buy").removeClass("zoom");
   });
   $(".psvr").mouseenter(function(){
   $(".psvr").addClass("zoom");
   });
   $(".psvr").mouseleave(function(){
   $(".psvr").removeClass("zoom");
   });
   $(".xboxone-X").mouseenter(function(){
   $(".xboxone-X").addClass("zoom");
   });
   $(".xboxone-X").mouseleave(function(){
   $(".xboxone-X").removeClass("zoom");
   });
   
   });
   
</script>
</head>
<body ng-app = "myApp" ng-controller = "myCtrl">
<jsp:include page="header.jsp"></jsp:include>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Your Cart</h1>
       
     </div>
</section>

<div class="container mb-4">

	<div class="row" ng-if="data.length == 0">
        <div class="col-12">
        
        	<h1 class="alert alert-danger">Nothing in Cart</h1>
        
        </div>
    </div>

    <div class="row" ng-if="data.length != 0">
        <div class="col-12">
            <div class="table-responsive" >
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Icon:</th>
                            <th scope="col">Product</th>
                            <th scope="col">Company</th>
                            <th scope="col">Available</th>
                            <th scope="col" class="text-center">Quantity</th>
                            <th scope="col" class="text-right">Price</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat = "row in data">
                            <td><img class="img" style="width:200px;" src="${pageContext.request.contextPath }/resources/{{row.product.imageUrl }}" /> </td>
                            <td>{{row.product.productname }}</td>
                            <td>{{row.product.company }}</td>
                            <td>In stock(<font style="color:red;">Quantity left:{{row.product.quantity }}</font>)</td>
                            <td><input class="form-control" type="text" value="1" /></td>
                            <td class="text-right">Rs. {{row.product.price }} </td>
                            <td class="text-right"> <button type="button" class="btn btn-danger btn-sm" ng-click="deleteItemFromCart(row.cid)"><span class="glyphicon glyphicon-trash"></span> Remove </button> </td>
                        </tr>
                       
                       
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col mb-2">
            <div class="row">
                <div class="col-sm-12  col-md-6">
                    <a href="${flowExecutionUrl}&_eventId=BackToGallery"><button class="btn btn-block btn-light">Continue Shopping</button></a>
                </div>
                <div class="col-sm-12 col-md-6 text-right">
                    <a href ="${flowExecutionUrl}&_eventId=page2" class="btn btn-lg btn-block btn-success text-uppercase">Checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<script type="text/javascript">

var app = angular.module("myApp",[]);
app.controller("myCtrl",['$scope','$http',function($scope,$http){
	$http.post("${pageContext.request.contextPath}/fetchAllCartItems").then(function(response){
		
		$scope.data = response.data;
		console.log(response);
		
	},function(response){
		console.log("Error");
	});
	
	$scope.deleteItemFromCart = function( arg ){
		
		$http.get("${pageContext.request.contextPath}/deleteFromCart/" + arg).then(function(response){
			
			$scope.data = response.data;
			console.log(response);
		
			if( response.data.msg  == "Deleted" ){
		
				$http.post("${pageContext.request.contextPath}/fetchAllCartItems").then(function(response){
					
					$scope.data = response.data;
					console.log(response);
					
				},function(response){
					console.log("Error");
				});
				
			}
			
		},function(response){
			console.log("Error");
		});
		
	}
	
}])

</script>