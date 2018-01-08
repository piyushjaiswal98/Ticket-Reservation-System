<?php
	// ob_start();
	session_start();

	$l=mysqli_connect("localhost","root","",'hotel');

	$username=$_POST['username'];
	$password=$_POST['password'];
	$sql = "INSERT INTO user (Userid,Password,User Name,User Email,User Company,User Phone,User Address) VALUES ('$username','$password','no','	no','no','no','no')";
	mysqli_query($l, $sql);
	$q="select * from `user` where  `Userid`='".$username."' and  `Password`='".$password."'";
	$res=mysqli_query($l, $q);
	if(mysqli_num_rows($res)>0)
	{
	  $_SESSION['username']=$username;
		echo "<script>window.location='reservation.php';</script>";
	}
	else
	{
		$message="Incorrect username/password found!";
		echo "<script type='text/javascript'>alert('$message');</script>";
		echo "<script>window.location='login.php';</script>";
		echo"<script>close()</script>";
	}

?>
