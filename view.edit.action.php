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
	$room_id = $_GET['room_id'];	
	$book_id = htmlspecialchars(mysqli_real_escape_string($connect, $_GET['book_id']));
	$timer_detail = $_GET['timer_detail'];
	$teacher_detail = $_GET["teacher_detail"];
	$findStudentSubjectQuery = "SELECT * FROM student_subject WHERE student_id=$student_id AND subject_id=$subject_id;";
	$result = mysqli_query($connect, $findStudentSubjectQuery);

	$countResult = mysqli_num_rows($result);
	$facultyId = 1;
	if ($countResult > 0) {
		$previousFacultyId = 1;
		while ($row = mysqli_fetch_assoc($result)) {
			$prevRoomId = $row["room_id"];
			$prevRoomQuery = "SELECT * FROM rooms r INNER JOIN faculty f ON r.room_id = f.room WHERE r.room_id = $prevRoomId LIMIT 1;";
			$prevRoomQueryResult = mysqli_query($connect, $prevRoomQuery);
			while ($roomRow = mysqli_fetch_assoc($prevRoomQueryResult)) {
				$previousFacultyId = $roomRow["faculty_id"];
			}
		}

		$roomQuery = "SELECT * FROM rooms r INNER JOIN faculty f ON r.room_id = f.room WHERE r.room_id = $room_id LIMIT 1;";
		$roomQueryResult = mysqli_query($connect, $roomQuery);
		while ($roomRow = mysqli_fetch_assoc($roomQueryResult)) {

			if ((!empty($roomRow["faculty_name"]) || !is_null($roomRow["faculty_name"])) && empty($GET["teacher_id"])) {
				$teacherName = $roomRow["faculty_name"];
			} 
			if ((!empty($roomRow["faculty_id"]) || !is_null($roomRow["faculty_id"])) && empty($GET["teacher_id"])) {
				$facultyId = $roomRow["faculty_id"];// NO TEACHER NAME
			} 
		}
		/**
		 * This is to update for Group Rooms
		 * Need retrieve Teacher Name 
		 * if have value from joining room display the teacher from room
		 * if no value check from option teacher_detail if it is shown or Group Room is chosen
		 * if no value ddefault 1 to No Teacher
		 * 
		 * Check for Rooms which have id from 72 - 82 these are Group Teachers
		 * 
		 * **/
		$tt_room_id = null;
		if ($room_id >= 72 && $room_id <= 82 && !is_null($teacher_detail)) {
			$facultyId = $teacher_detail;
			$teacherNameFromFaculty = "SELECT * FROM faculty f WHERE f.faculty_id = $facultyId LIMIT 1;";
			$teacherNameFromFacultyResult = mysqli_query($connect, $teacherNameFromFaculty);
			while ($teacherNameFromFacultyRow = mysqli_fetch_assoc($teacherNameFromFacultyResult)) {
				$teacherName = $teacherNameFromFacultyRow["faculty_name"];
				$tt_room_id = $room_id;
				break;
			}
		}
		$prevFacultyDeletetQuery = "DELETE FROM `teacher_timer` WHERE timer_id=$timer_detail AND student_id=$student_id AND subject_id=$subject_id;";
		$prevFacultyDeletetQueryResult = mysqli_query($connect, $prevFacultyDeletetQuery);

		$query = "UPDATE student_subject SET `room_id`=$room_id, `faculty_id`=$facultyId, `books`='$book_id', `teachers_name`='$teacherName', `timer_id`=$timer_detail  WHERE `subject_id`='$subject_id' AND `student_id`=$student_id";
		$result = mysqli_query($connect, $query);

		if (is_null($tt_room_id)) {
			$facultyInsertQuery = "INSERT INTO `teacher_timer`(`teacher_id`, `timer_id`, `student_id`, `subject_id`)
			VALUES ($facultyId, $timer_detail, $student_id, $subject_id);";
			$facultyInsertQueryResult = mysqli_query($connect, $facultyInsertQuery);
		} else {
			$facultyInsertQuery = "INSERT INTO `teacher_timer`(`teacher_id`, `timer_id`, `student_id`, `subject_id`, `room_id`)
			VALUES ($facultyId, $timer_detail, $student_id, $subject_id, '$tt_room_id');";
			$facultyInsertQueryResult = mysqli_query($connect, $facultyInsertQuery);
		}
	} else {
		$prevFacultyDeletetQuery = "DELETE FROM `teacher_timer` WHERE timer_id=$timer_detail AND student_id=$student_id AND subject_id=$subject_id;";
		$prevFacultyDeletetQueryResult = mysqli_query($connect, $prevFacultyDeletetQuery);
		
		$query = "INSERT INTO student_subject(subject_id, student_id, room_id, timer_id, faculty_id, books, created_by, teachers_name) 
		VALUES($subject_id, $student_id, $room_id, $timer_detail, 1, '$book_id', $student_id, '$faculty_id')";
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