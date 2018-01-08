<html>

<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<title> Enquiry Result </title>
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
			 height:450px;
			 width:450px;
			 margin-top:10px;
			 margin-left:550px;
			 padding:10px 20px 0px 40px;
			 border:4px solid black;
			 border-radius:10px;
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

$do=$_POST["doj"];
$doj = date('Y-m-d', strtotime($do));
$_SESSION["doj"] = "$doj";
$sp=$_POST["sp"];
$_SESSION["sp"] = "$sp";
$dp=$_POST["dp"];
$_SESSION["dp"] = "$dp";

$query = mysqli_query($conn,"SELECT t.trainno,t.tname,c.sp,s1.departure_time,c.dp,s2.arrival_time,t.dd,c.class,c.fare,c.seatsleft FROM train as t,classseats as c, schedule as s1,schedule as s2 where s1.trainno=t.trainno AND s2.trainno=t.trainno AND s1.sname='".$sp."' AND s2.sname='".$dp."' AND t.trainno=c.trainno AND c.sp='".$sp."' AND c.dp='".$dp."' AND c.doj='".$doj."' ");

echo "<table><thead><td>Train No</td><td>Train_Name</td><td>Starting_Point</td><td>Arrival_Time</td><td>Destination_Point</td><td>Departure_Time</td><td>Day</td><td>Train_Class</td><td>Fare</td><td>Seats_Left</td></thead>";

while($row = mysqli_fetch_array($query))
{
 echo "<tr><td>".$row[0]."</td><td>".$row[1]."</td><td>".$row[2]."</td><td>".$row[3]."</td><td>".$row[4]."</td><td>".$row[5]."</td><td>".$row[6]."</td><td>".$row[7]."</td><td>".$row[8]."</td><td>".$row[9]."</td></tr>";
}
echo "</table>";

if(mysqli_num_rows($query) == 0)
{
 echo "No such train <br> ";
 header("location:http://localhost/train/rpm/enquiry.php");
}
?>
<div class="first">
If you wish to proceed with booking fill in the following details:<br><br>
<form action="resvn.php" method="post">
Enter UserId: <input type="text" name="uid" required><br><br>
Enter Train No: <input type="text" name="tno" required><br><br>
Enter Class: <input type="text" name="class" required><br><br>
No. of Seats: <input type="text" name="nos" required><br><br>
<input type="submit" value="Proceed with Booking"><br><br>
</form>

<?php

echo " <a href=\"enquiry.php\">More Enquiry</a> <br>";

$conn->close(); 
?>

<br><a href="index.html">Go to Home Page!!!</a>
</div>
</body>
</html>
