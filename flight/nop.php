<!DOCTYPE html>
<html>
<head>
<!--<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel = "stylesheet" 
         href = "//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
<title> Flight Booking </title>
<style>
	@-webkit-keyframes anim{
            0%{background-color:LightSeaGreen;}
            25%{background-color:Coral; }
            50%{background-color:DeepSeaBlue;}
            75%{background-color:Coral;}
            100%{background-color:LightSeaGreen;}
         } 
         @-webkit-keyframes anim2{
            0%{transform: scale(1.2);}
            25%{transform: scale(1.4); }
            50%{transform: scale(1.6);}
            75%{transform: scale(1.4);}
            100%{transform: scale(1.2);}
         } 
         @-webkit-keyframes example {
     {font-size: 24px}
    to {background-color: 40px;}
    }
         .heading{
            width:100%;
            height: 100px;
            -webkit-animation: anim 4s ease-in 2s infinite;
            text-align: center;
            font-size: 24px;
            font-family:Raleway;
            padding:15px;
            
         }
         .title{
            -webkit-animation: example 4s ease-in 2s infinite;
         }
         .h1{
            -webkit-animation: anim2 4s ease-in 2s infinite;
         }
		 body{
		 background-image:url("airline.jpg");
		 }
		 .first{
	height:300px;
	width:500px;
	margin:60px 200px 200px 500px;
	opacity:0.8;
	background-color:#d3d3d3;
	border:4px solid #d3d3d3;
	border-radius:10px;
	padding:20px 40px 20px 100px;
}


	</style>
</head>
<body>
<?php 
session_start();
?>
<div class="heading">
<div class="title">
<h1 class="h1">Flight Booking</h1>
</div>
</div>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="index.html">FLIGHT RESERVATION</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="http://localhost/tourist_guide/welcome1.php">Home</a></li>
	      </ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="http://localhost/tourist_guide/signout.php"> Sign Out</a></li>
      </ul>
	    </div>
	  </div>
	</nav>
	<div class="first">
	<form action="reservation.php" method="post">
	Number Of Passengers: <input id="sp" type="number" name="nop" required> 
	<br><br>
     
<input id = "a" type="submit">

</form>
	</div>
	
</body>

</html>
