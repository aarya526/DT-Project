<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>GM:Customer Details </title>
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
.header,
.marketing,
.footer {
  padding-right: 15px;
  padding-left: 15px;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
  margin-top: 0;
  margin-bottom: 0;
  line-height: 40px;
}
.table {
    margin-bottom: 0px;
}
.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}
.table > tbody > tr > .no-line {
    border-top: none;
}
.table > thead > tr > .no-line {
    border-bottom: none;
}
.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
/* Customize container */
@media (min-width: 768px) {
  .container {
    max-width: 730px;
    background:#ffffff;
  }
}
.container-narrow > hr {
  margin: 30px 0;
      background:#ffffff;
}
.main {
  background:#f1f1f1;
}
/* Supporting marketing content */
.marketing {
  margin: 20px 0 0 0;
}
.marketing p + h4 {
  margin-top: 28px;
}
/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
  /* Remove the padding we set earlier */
  .header,
  .marketing,
  .footer {
    padding-right: 0;
    padding-left: 0;
  }
  /* Space out the masthead */
  .header {
    margin-bottom: 30px;
  }
  /* Remove the bottom border on the jumbotron for visual effect */
  .jumbotron {
    border-bottom: 0;
  }
}
body {
    padding-top: 0px;
    padding-bottom: 0px;
}
.panel-title {display: inline;font-weight: bold;}
.checkbox.pull-right { margin: 0; }
.pl-ziro { padding-left: 0px; }
.panel {
    border: 0px solid transparent;
    background: #f1f1f1;
}
.panel-default>.panel-heading .badge {
    color: #ffffff;
    background-color: transparent;
}
.container {
    background: #ffffff;
    border-radius:10px;
    margin-top:20px;
    margin-bottom:20px;
}
.panel-heading {
    border-bottom: 0px solid #555555 !important;
}
.panel-default>.panel-heading {
    color: #ffffff;
    background-color: #428bca;
    padding-bottom: 1px !important;
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
<body class="main">
<jsp:include page="header.jsp"/>
<div class="cotainer-fluid">

</div>
    <div class="container">

      <div class="row marketing">
      
        <div class="col-lg-12">
        
          <h4><b>Order Review:</b></h4>
<hr/>

<div>
<center>  
<h4>Please Review Your Order Details:</h4>
<h5></h5>
<hr />  
</div>
</center>
        </div>

    <div class="row" style="margin-left:20px;">
        <div class="col-xs-12">
    		<div class="row">
    			<div class="col-xs-6">
    			<h4><b>Customer Details</b></h4>
        			<table class = "table" style="margin-bottom:20px;">
        			<tr>
        		      <th>Customer Name: </th>
        		      <td>Abhishek Arya</td> 
        		      <th>Email ID: </th>
        		      <td>aarya526@Gmail.com</td>
        		    </tr>
        		    <tr>
        		      <th>Contact No:</th>
        		      <td>9717113636</td>
        		      <th>Shipping Address: </th>
        		      <td>Customer's Address</td>
        		    </tr>
        			</table>
                    <h4><b>Product Details</b></h4>
                    <table class = "table" style = "margin-bottom:20px;">
                    <tr>
                     <th>Product ID:</th>
                     <th>Product Image: </th>
                     <th>Name: </th>
                     <th>Quantity</th>
                     <th>Price:</th>
                    </tr>
                    <tr>
                     <td>xx</td>
                     <td>xxx</td>
                     <td>xx</td>
                     <td>xx</td>
                     <td>xx</td>
                    </tr>
                    <tr>
                    <td></td><td></td><td></td>
                    <th>GST(18%):</th>
                    <td>xxx</td>
                    </tr>
                    <tr>
                    <td></td><td></td><td></td>
                    <th>Shipping Charges: </th>
                    <td>xxx</td>
                    </tr>                  
                    <tr>
                    <td></td><td></td><td></td>
                    <th>Total Price: </th>
                    <td>xxx</td>
                    </tr>
                    <tr>
                    <td><a class ="btn btn-danger" href = "${flowExecutionUrl }&_eventId=page2">Back To Review</a></td>
                    <td></td><td></td>
        			 <td style="float:right;"><a class ="btn btn-success" href = "${flowExecutionUrl }&_eventId=page4">Confirm Order!</a></td>
        			 </tr>
                    </table>
    			</div>
    		</div>
    	</div>
    </div>
    


      </div>

    </div> <!-- /container -->

</body>
</html>