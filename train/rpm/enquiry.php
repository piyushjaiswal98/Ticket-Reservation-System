<html>

<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<title> Reservation </title>
<style>
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
body{
	background-image:url("track.jpg");
}
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
 #b{
height:35px;
width:200px;

background-color:rgb(200,200,200);
padding: 2px 2px 6px 8px ;
border: 1px solid rgb(200,200,200);
border-radius:4px;

}
#sp{
height:35px;
width:200px;

background-color:rgb(200,200,200);
padding: 2px 2px 6px 8px ;
border: 1px solid rgb(200,200,200);
border-radius:4px;

}
#dp{
height:35px;
width:200px;

background-color:rgb(200,200,200);
padding: 2px 2px 6px 8px ;
border: 1px solid rgb(200,200,200);
border-radius:4px;

}
#a{
	height:35px;
	width:100px;
	font-size:20px;
	margin-top:20px;
	margin-left:110px;
}
#c{
	
	font-size:15px;
	margin-top:-5px;
	margin-left:100px;
	color:DeepSeaBlue;
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
<div class = "first">
<form action="enquiry_result.php" method="post">
<!--
<?php
require "db.php";

$query = "SELECT sname FROM station";
$result = mysqli_query($conn,$query) or die(mysql_error()."[".$query."]");?>

   Starting Point: <select id="sp" name="sp" required>;
<?php while ($row = mysqli_fetch_array($result)){
?>
   <option value=" <?php $row['sname']; ?> ">
     <?php echo $row['sname']; ?>
    </option>
<?php
}
?>        
</select>
<br><br>
  -->
  Starting Point: <select id="sp" name="sp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
Destination Point: <select id="dp" name="dp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
     
Date of Journey: <input id="b" type="date"  name="doj" required><br>
<input id = "a" type="submit">

</form>
<br><a id="c" href="index.html">Go to Home Page!!!</a>
</div>
</body>
</html>