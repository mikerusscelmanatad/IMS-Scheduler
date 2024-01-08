<?php
// ************************** edit.php 

$connect = mysqli_connect('localhost', 'root', '', 'insertion');

if (!$connect) {
	echo 'not connected to server';
}
if (!mysqli_select_db($connect, 'insertion')) {
	echo 'database not selected';
}

// Update button // 	
if ($_SERVER['REQUEST_METHOD'] == "POST") {
	echo '<script type="text/javascript">
                        alert("Updated!");
                       location="schedulelist.php";
                        </script>';
}
if (isset($_POST['update'])) {

	$subject_id = mysqli_real_escape_string($connect, $_POST['subject_id']);
	$subject_description = mysqli_real_escape_string($connect, $_POST['subject_description']);
	$faculty_id = mysqli_real_escape_string($connect, $_POST['faculty_id']);
	$room_id = mysqli_real_escape_string($connect, $_POST['room_id']);

	$query = "UPDATE subject SET `subject_description`='$subject_description', `room_id`='$room_id', `faculty_id`='$faculty_id' WHERE `subject_id`='$subject_id'";

	$result = mysqli_query($connect, $query);
}
if ($result) {
	echo (" Update successfully");
} else {
	echo "Could not update: " . mysqli_error($connect);
}
