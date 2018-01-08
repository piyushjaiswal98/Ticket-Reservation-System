<?php
$server="localhost";
$user="root";
$password="";
$database="airline";
$conn=mysqli_connect($server, $user, $password) or die("error in connection to database");
mysqli_select_db($conn,$database) or die ("error to select database");

?>