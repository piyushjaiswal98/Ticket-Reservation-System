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
		 <link rel="stylesheet" type="text/css" href="table.css"/>
		
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
    to {font-size: 40px;}
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
		 table{
			 border:2px solid;
		 }
		 #a{
			 margin-left:12%;
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
	<?php echo '<form action="nop.php" method="post" class="form">'; ?>
	<div class="CSSTableGenerator">
<?php
include("connection.php");
session_start();

$dep_city=$_POST["sp"];
$arr_city = $_POST["dp"];

$sql="select f.flight_id as id, p.plain_name as name, f.departure_city as dep_city, f.arrival_city as arr_city,
		f.departure_time as dep_time, f.arrival_time as arr_time, f.class_name as class, f.adult_price as add_price from flights f, plains p 
		where f.plain_id=p.plain_id and f.departure_city='$dep_city' and f.arrival_city ='$arr_city'";
		$result_flight=mysqli_query($conn,$sql) or die ("error");
		
		if (mysqli_num_rows($result_flight)!=0)
		{
		 echo '<table><thead><td></td><td>Plane</td><td>Departure_city</td><td>Arrival City</td><td>Departure Time</td><td>Arrival Time</td><td>Class</td><td>Adult Price (Rs.)</td></thead>';
		while ($row=mysqli_fetch_array($result_flight))
		{
			echo '<tr><td><input type="radio" name="flight" value='.$row["id"].'></td><td>'.$row["name"].'</td><td>'.$row["dep_city"].'</td><td>'.$row["arr_city"].'</td><td>'.$row["dep_time"].'</td><td>'.$row["arr_time"].'</td><td>'.$row["class"].'</td><td>'
			.$row["add_price"].'</td></tr>';
		}
		echo '</table>';
		
		}
       else{
			echo 'no such fligh exists';
		}

?>
</div>
<?php echo '<br><br><br><input id="a" type="submit" name="continue" value="Continue">';
		echo '</form>'; 
?>
</body>
</html>