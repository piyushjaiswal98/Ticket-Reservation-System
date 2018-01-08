<html>
<head>
  <title>Booking History</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
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
			 margin-left:50px;
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
<?php 

session_start();

require "db.php";

if ($conn->connect_error) 
{
 die("Connection failed: " . $conn->connect_error);
} 

$uid=$_POST["mno"];


$query = mysqli_query($conn,"SELECT * FROM resv WHERE uid='".$uid."' ") or die(mysql_error());

if($row = mysqli_fetch_array($query))
{
 

 $query2 = mysqli_query($conn,"SELECT * FROM resv WHERE uid='".$uid."' ") or die(mysql_error());

echo "<table><thead><td>PNR</td><td>Train_no</td><td>Date_Of_Journey</td><td>Total_Fare</td><td>Train_Class</td><td>Seats_Reserved</td><td>Status</td></thead>";

 while($row = mysqli_fetch_array($query2))
 {
  echo "<tr><td>".$row["pnr"]."</td><td>".$row["trainno"]."</td><td>".$row["doj"]."</td><td>".$row["tfare"]."</td><td>".$row["class"]."</td><td>".$row["nos"]."</td><td>".$row["status"]."</td></tr>";
 }

echo "</table>";

 if(mysqli_num_rows($query2) == 0)
 {
  echo "No Reservations Yet !!! <br><br> ";
 }
}


if(mysqli_num_rows($query) == 0)
{
 echo "You have not booked any tickets yet!!! <br><br> ";
 echo " <a href=\"index.html\">Home Page</a><br>";
 die();
}

?>
<div class="first">
<form action="cancel.php" method="post">
Enter PNR for Cancellation: <input type="text" name="cancpnr" required><br><br>
<input type="submit" value="Cancel"><br><br>
</form>
<?php

echo " <a href=\"index.html\">Home Page</a><br>";

$conn->close(); 

?>
</div>
</body>
</html>
