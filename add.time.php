<?php

require 'databaasee.php';

$Start_Time = $_POST['starttime'];
$End_Time = $_POST['endtime'];

$sql = "INSERT INTO timer (Start_Time, End_Time) VALUES ('$Start_Time', '$End_Time')";

if (!mysqli_query($con, $sql)) {
	echo 'not inserted';
} else {
	echo '<script type="text/javascript">
                      alert("New Time Added!");
                         location="home.php";
                           </script>';
}
