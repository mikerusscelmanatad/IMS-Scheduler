<?php

require 'databaasee.php';

$Room = $_POST['room'];


$sql = "INSERT INTO rooms (Room) VALUES ('$Room')";

if (!mysqli_query($con, $sql)) {
	echo 'not inserted';
} else {
	echo '<script type="text/javascript">
                      alert("New Room Reserved!");
                         location="addroom.php";
                           </script>';
}
