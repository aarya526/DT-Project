<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>GM:Create Account</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style>
  .login{
  width:350px;
  height:780px;
  justify-content:center;
  margin-top:50px;
  background-color:white;
  border-radius:5px;
  }
  .loginLogo{
  height:50px;
  margin-bottom:0px;
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
 font-family: Arial, Helvetica, sans-serif;
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
font-size:60px;
color:white;
font-family:ariel,helvetica,sans-serif;
margin-top:50px;
}
h3{
font-size:30px;
color:black;
font-family:helvetica;

}
p{
color:black;
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
.error{
font-style:italic;
color:red;
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
   
   });
   
</script>
</head>
<body class="bg-light" background="Playstation images/wallpaper.jpeg">
<div>
<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
<a  class="navbar-brand btn btn-info" href="HomePage.html">Gadget Monk</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="collapsibleNavbar" style="position:relative">
<div class="dropdown1">
    <button class="dropbtn1" href="https://www.playstation.com/en-in/explore/ps4/"><b>Playstation</b></button>
      <i class="fa fa-caret-down" ></i>
    </button>
    <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <img class="ps4" src="dropdown images/ps4.png"></img>
      <img class="ps4pro" src="dropdown images/ps4pro.png"></img>
      <img class="buy" src="dropdown images/buy.png"></img>
	  
	  </div>
      </div>
    </div>
	<div class="dropdown1">
    <button class="dropbtn1" href="https://www.playstation.com/en-in/explore/ps4/"><b>Playstation VR</b></button>
      <i class="fa fa-caret-down" ></i>
    </button>
    <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <img class="psvr" src="Playstation images/psvr.png"></img>
      <img class="buy" src="dropdown images/buy.png"></img>
	  </div>
      </div>
    </div>
	<div class="dropdown1">
    <button class="dropbtn1" href="https://www.playstation.com/en-in/explore/ps4/"><b>Xbox One</b></button>
      <i class="fa fa-caret-down" ></i>
    </button>
    <div class="dropdown-content1">
      <div class="header1" style="height:250px;">
      <img class="xboxone-X" src="dropdown images/xboxoneX.png"></img>
      <img class="buy" src="dropdown images/buy.png"></img>
	  
	  </div>
      </div>
    </div>
  </div> 
<div class="btn-group">
<button class="btn btn-success" type="button" href="#" style="color:white" ><b>Contact Us</b></button>
<a   class="btn btn-success" href="login.html"><b>Login</b></a>
<button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
<span class="caret"></span> 
</button>
<div class="dropdown-menu" >
<a class="dropdown-item" href="">Sign up</a>
</div>
</div>
</nav>
</div>
<div class="container">
<center>
<div class="login">
<div class="loginLogo bg-dark">
<a  class="close btn btn-dark" href="HomePage.html" >&times;</a>
<h4 ><font color="white" style="margin-top:50px;">Gadget Monk</font></h4>
</div>
<div style="padding:20px; margin-top:10px;" >
<b><font>Create GM Account!</font></b>
 <spring:url value="/customer/save" var="saveURL" />
<form:form action="${saveURL}" method="post" modelAttribute="customerForm">
<form:hidden path="id"/>
<div class="form-group" style="margin-top:50px;">
<label for="name" style="float:left;margin-bottom:0px;">Name: </label>
<form:input style="margin-bottom:10px;" type="text" class="form-control" placeholder="Enter Name" path="name"/>
<form:errors path="name" class="error"/>
</div>
<div class="form-group">
<label for="email" style="float:left;margin-bottom:0px;">Sign-In ID:</label>
<form:input style="margin-bottom:10px;" type="text" class="form-control"  placeholder="Enter Sign-In ID" path="signin"/>
<form:errors path="signin" class="error"/>
</div>
<div class="form-group">
<label for="email" style="float:left;margin-bottom:0px;">Email ID: </label>
<form:input  style="margin-bottom:10px;" type="text" class="form-control" placeholder="Enter Email ID" path="email"/>
<form:errors path="email" class="error"/>
</div>
<div class="form-group">
<label  for="password" style="float:left;margin-bottom:0px;">Password:</label>
<form:input style="margin-bottom:10px;" type="password" class="form-control" id="pwd" placeholder="Enter Password" path="password"/>
<form:errors path="password" class="error"/>
</div>
<div class="form-group">
<label for="Contact No:" style="float:left;margin-bottom:0px;">Contact No:</label>
<form:input style="margin-bottom:10px;" type="text" class="form-control" placeholder="Enter Contact Number:" path="contactno"/>
<form:errors path="contactno" class="error"/>
</div>
<div class="form-group">
<label type="Address" style="float:left;margin-bottom:0px;">Address: </label>
<form:textarea class="form-control" rows="5" id="comment" placeholder="Enter Address" path="address"/>
<form:errors path="address" class="error"/>
</div>
<button type="submit" class=" btn btn-primary" style="width:300px; border-radius:5px; margin-bottom:20px;"><b>Create!</b></button>
</form:form>
</div>
</div>
</center>
</div>
</body>
</html>
