<?php
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

if ($username && $password) {
	require 'databaasee.php';

	$query = mysqli_query($connect, "SELECT * FROM admin WHERE username='$username'");

	$numrows = mysqli_num_rows($query);

	if ($numrows !== 0) {
		while ($row = mysqli_fetch_assoc($query)) {
			$dbusername = $row['username'];
			$dbpassword = $row['password'];
		}
		if ($username == $dbusername && password_verify($password, $dbpassword)) {
			echo '<script type="text/javascript">
						alert("Welcome User!");
							location="setschedule.php";
							</script>';
			$_SESSION['username'] = $username;
		} else
			echo '<script type="text/javascript">
						alert("Wrong Password!");
							location="index.php";
							</script>';
	} else
		die('<script type="text/javascript">
						alert("That user dont exist!");
							location="index.php";
							</script>');
} else
	die('<script type="text/javascript">
						alert("Please enter a username and password!");
							location="tb.php";
							</script>');
