<?php

require 'databaasee.php';

$Faculty_Name = $_POST['falname'];
$Designation = $_POST['Designation'];
$room = $_POST['room'];

$sql = "INSERT INTO faculty (Faculty_Name, Designation, room) VALUES ('$Faculty_Name', '$Designation', '$room')";

if (!mysqli_query($connect, $sql)) {
	echo 'not inserted';
} else {
	echo '<script type="text/javascript">
                      alert("New Teacher Added!");
                         location="addteacher.php";
                           </script>';
}
