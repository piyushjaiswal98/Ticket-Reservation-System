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
$email=$_POST["demail"];
$first=$_POST["first"];
$last=$_POST["last"];
$userid=$_POST["uid"];
$password=$_POST["pwd"];
$sql = "INSERT INTO user (first,last,email,userid,password) VALUES ('$first','$last','$email','$userid','$password')";
if (mysqli_query($conn, $sql)) {
echo '<script language="javascript">';
echo 'alert("Registered Successfully");';
echo 'window.location.href= "http://localhost/tourist_guide/login_page.html";';
echo '</script>';
} else {
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>
