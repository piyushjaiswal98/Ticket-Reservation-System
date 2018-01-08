<?php
$u=$_POST["uid"];
$p=$_POST["pwd"];
if($u==""||$p=="")
{
	echo '<script language="javascript">';
    echo 'alert("Enter both username and password");';
	echo 'window.location.href= "http://localhost/tourist_guide/login_page.html";';
    echo '</script>';
	return false;
}
$con=mysqli_connect("localhost","root","");
$r=mysqli_select_db($con,"tourist");
$q="select userid from user;";
$r=mysqli_query($con,$q);
$x=0;
while($row=mysqli_fetch_row($r))
{
	foreach ($row as $value)
{
		  if($u==$value)
			$x=1;
			break;
}
}
if($x==0)
{
echo '<script language="javascript">';
    echo 'alert("Account does not exist");';
	echo 'window.location.href= "http://localhost/tourist_guide/login_page.html";';
    echo '</script>';
return false;
}
//else
	//echo "Account found";
$q="select password from user where userid='$u';";
$r=mysqli_query($con,$q);
echo "<br />";
$pw=mysqli_fetch_row($r);
if($p!=$pw[0]){
	echo '<script language="javascript">';
    echo 'alert("Incorrect password");';
	echo 'window.location.href= "http://localhost/tourist_guide/login_page.html";';
    echo '</script>';	
}
else
{   
    session_start();
	$_SESSION['uid']=$u;
    $_SESSION['pwd']=$p;
    header("location:welcome.php");
}
?>