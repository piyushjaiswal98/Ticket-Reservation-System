<html>

<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<title> Reservation </title>
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
<h1 class="h1">Train Booking</h1>
</div>
</div>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="index.html">RAILWAY RESERVATION</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="http://localhost/tourist_guide/welcome1.php">Home</a></li>
	        <li><a href="enquiry.php">Enquire | Book</a></li>
					<li><a href="user_login.html">History | Cancellation</a></li>
	      </ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="http://localhost/tourist_guide/signout.php"> Sign Out</a></li>
      </ul>
	    </div>
	  </div>
	</nav>
<div class="first">
<form action="new_png.php" method="post">

<?php 

session_start();

require "db.php";

if ($conn->connect_error) 
{
 die("Connection failed: " . $conn->connect_error);
} 

$u=$_POST["uid"];
$_SESSION["uid"]="$u";
$tno=$_POST["tno"];
$_SESSION["tno"] = "$tno";
$class=$_POST["class"];
$_SESSION["class"] = "$class";
$nos=$_POST["nos"];
$_SESSION["nos"] = "$nos";

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

<a id="a"href="enquiry.php">Back to Enquiry</a>
</div>
</body>
</html>
