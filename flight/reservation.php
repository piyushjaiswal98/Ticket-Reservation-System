<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
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
		  }
		 .first{
			 height:300px;
			 width:1100px;
			 padding:40px 20px 0px 40px;
			 border:4px solid black;
			 border-radius:10px;
			 margin-top:70px;
			 margin-left:200px;
		 }
		 
		  #a{
			  
	
	margin-left:70px;
}


	</style>
</head>
<body>
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
<form action="final.php" method="post">
	<?php 

session_start();

require "connection.php";

if ($conn->connect_error) 
{
 die("Connection failed: " . $conn->connect_error);
} 


$nos=$_POST["nop"];
$_SESSION["nop"] = "$nos";

echo "<table>";

for($i=0;$i<$nos;$i++) 
{
echo "<tr><td><input  type='text' name='pname[]' placeholder=\"Passenger Name\" required></td> ";
echo "<td><input  type='text' name='page[]' placeholder=\"Passenger Age\" required></td>";
echo "<td><input  type='text' name='pgender[]' placeholder=\"Passenger Gender\" required></td></tr> ";
}

echo "</table>";




$conn->close(); 

?>
<br><br><input id="a" type="submit" value="Book"><br><br>

<a id="a"href="index.html">Back to Home</a>
</form>
</div>
</body>
</html>