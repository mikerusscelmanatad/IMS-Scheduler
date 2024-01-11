<?php
require("databaasee.php");

$username = $_POST['username'];
$password = $_POST['password'];
$generatedPassword = password_hash($password, PASSWORD_BCRYPT);

$query = mysqli_query($connect, "SELECT * FROM admin WHERE username='$username'");
if (mysqli_num_rows($query) == 0) {
	$sql = "INSERT INTO admin (username, password) VALUES ('$username', '$generatedPassword')";
} else {
	echo '<script type="text/javascript">
	alert("Username already registered! Please contact administrator if you are having trouble logging in! Thanks!");
	   location="index.php";
		 </script>';
}

if (!mysqli_query($con, $sql)) {
	echo 'not registered';
} else {
	echo '<script type="text/javascript">
                      alert("Welcome! Your account has been created. please login to manage your schedules!");
                         location="index.php";
                           </script>';
}
