<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tourist";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}
$email=$_POST["email"];
$first=$_POST["first"];
$last=$_POST["last"];
$userid=$_POST["userid"];
$password=$_POST["password"];
$sql = "INSERT INTO user (first, last, email,userid,password)
VALUES ('$first','$last','$email','$userid','$password')";
if (mysqli_query($conn, $sql)) {
//echo "Registered successfully";
session_start();
$_SESSION['uid']=$userid;
header("location:welcome.php");
//echo '<script language="javascript">';
//echo 'alert("Registered Successfully")';
//echo '</script>';

} else {
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>