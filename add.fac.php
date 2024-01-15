<?php

require 'databaasee.php';

$faculty_name = $_POST['falname'];
$designation = $_POST['Designation'];
$room = $_POST['room'];


$findRoom = "SELECT `room_id`,`room` FROM `rooms` WHERE `room`=$room";
$findRoomResult = mysqli_query($connect, $findRoom);

while ($row = mysqli_fetch_array($findRoomResult)) {
	$room = $row["room_id"];

     $sql = "INSERT INTO faculty (faculty_name, designation, room) VALUES ('$faculty_name', '$designation', '$room')";

    if (!mysqli_query($connect, $sql)) {
      echo 'not inserted';
    } else {
      echo '<script type="text/javascript">
                          alert("New Teacher Added!");
                            location="addteacher.php";
                              </script>';
    }
}