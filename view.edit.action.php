<?php
// ************************** view.edit.php 

require 'databaasee.php';

// Update button // 	
if ($_SERVER['REQUEST_METHOD'] == "GET") {
	echo '<script type="text/javascript">
                        alert("Updated!");
                       location="schedulelist.php";
                        </script>';
}
if (isset($_GET['update'])) {

	$student_id = $_GET['id'];
	$subject_id = $_GET['subject_id'];
	$room_id = mysqli_real_escape_string($connect, $_GET['room_id']);
	$faculty_id = mysqli_real_escape_string($connect, $_GET['teacher_id']);
	$book_id = mysqli_real_escape_string($connect, $_GET['book_id']);

	$findStudentSubjectQuery = "SELECT * FROM student_subject WHERE student_id=$student_id AND subject_id=$subject_id";
	$result = mysqli_query($connect, $findStudentSubjectQuery);

	$countResult = mysqli_num_rows($result);

	if ($countResult > 0) {
		$query = "UPDATE student_subject SET `room_id`=$room_id, `faculty_id`='$faculty_id', `books`='$book_id' WHERE `subject_id`='$subject_id' AND `student_id`=$student_id";
		$result = mysqli_query($connect, $query);
	} else {
		$query = "INSERT INTO student_subject(subject_id, student_id, room_id, faculty_id, timer_id, books, created_by) 
		VALUES($subject_id, $student_id, $room_id, $faculty_id, 10, '$book_id', $student_id)";
		$result = mysqli_query($connect, $query);
	}

}
if ($result) {
	echo (" Update successfully");
} else {
	echo "Could not update: " . mysqli_error($connect);
}
header('Location: ./view.php?id='.$student_id);
?>