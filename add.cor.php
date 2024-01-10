<?php
// ************************** setschedule.php 
require 'databaasee.php';

if (isset($_POST['submit'])) {
	$student_id = $_POST['student_id'];

	$student_id = mysqli_real_escape_string($connect, $_POST['student_id']);
	$student_name = mysqli_real_escape_string($connect, $_POST['student_name']);
	$student_status = mysqli_real_escape_string($connect, $_POST['student_status']);
	$subject_description = mysqli_real_escape_string($connect, $_POST['subject_description']);
	$student_course = $_POST['student_course'];
	$student_level = $_POST['student_level'];

	/**
	 * 
	 * - Need to Insert new records from student_subject based from its course which is generated from subject table
	 * - Insert student details accordingly
	 * 
	 * 
	 * **/
	$query = "INSERT INTO student (`student_id`,`student_name`, `student_status`, `course_id`, `level_id`)	
		VALUES ('$student_id','$student_name', '$student_status', $student_course, $student_level)";
	$result = mysqli_query($connect, $query);

	if (!$result) {
		echo 'not inserted';
	} else {
		$last_student_id = mysqli_insert_id($connect);

		$querySubject = "SELECT * FROM subject AS s 
			INNER JOIN rooms AS r ON s.room_id = r.room_id
			INNER JOIN timer AS t ON s.timer_id = t.id
			WHERE s.course_id=$student_course";
		$resultSubject = mysqli_query($connect, $querySubject);

		while ($row = mysqli_fetch_assoc($resultSubject)) {
			$subject_subject_id = $row["subject_id"];
			$subject_room_id = $row["room_id"];
			$subject_timer_id = $row["timer_id"];

			$insertStudentSubject = "INSERT INTO student_subject(subject_id, student_id, room_id, timer_id, faculty_id, books, created_by, teachers_name) 
				VALUES($subject_subject_id, $last_student_id, $subject_room_id, $subject_timer_id, 0, '', $last_student_id, '')";
			$resultStudedntSubject = mysqli_query($connect, $insertStudentSubject);
		}

		echo '	<<script type="text/javascript">
								alert("Student Added!");
									location="schedulelist.php";
									</script>';
		header('Location: ./view.php?id=' . $last_student_id);
	}
} else if (isset($_POST['update'])) {

	$student_id = mysqli_real_escape_string($connect, $_POST['student_id']);
	$student_name = mysqli_real_escape_string($connect, $_POST['student_name']);
	$student_status = mysqli_real_escape_string($connect, $_POST['student_status']);
	$student_course = $_POST['student_course'];
	$student_level = $_POST['student_level'];

	/**
	 * 
	 * - Need to Delete first records from student_subject, this is to assume that student change his course
	 * - Need to Insert new records from student_subject based from its new course
	 * - Update student details accoringly
	 * 
	 * 
	 * **/

	 $query = "SELECT * FROM student WHERE `student_id`='$student_id'";
	 $queryStudentResult = mysqli_query($connect, $query);
	 $studentChangedCourse = false;
	 while ($row = mysqli_fetch_assoc($queryStudentResult)) {
		$student_student_course_id = $row["course_id"];
		if ($student_student_course_id !== $student_course) {
			$query = "DELETE FROM student_subject WHERE `student_id`='$student_id'";
			$result = mysqli_query($connect, $query);
			$studentChangedCourse = true;
			break;
		}
	 }

	$querySubject = "SELECT * FROM subject AS s 
			INNER JOIN rooms AS r ON s.room_id = r.room_id
			INNER JOIN timer AS t ON s.timer_id = t.id
			WHERE s.course_id=$student_course";
	$resultSubject = mysqli_query($connect, $querySubject);

	while ($row = mysqli_fetch_assoc($resultSubject)) {
		$subject_subject_id = $row["subject_id"];
		$subject_room_id = $row["room_id"];
		$subject_timer_id = $row["timer_id"];

		if ($studentChangedCourse) {
			$insertStudentSubject = "INSERT INTO student_subject(subject_id, student_id, room_id, timer_id, faculty_id, books, created_by, teachers_name) 
			VALUES($subject_subject_id, $student_id, $subject_room_id, $subject_timer_id, 0, '', $student_id, '')";
			$resultStudedntSubject = mysqli_query($connect, $insertStudentSubject);
		} else {
			$updatetStudentSubject = "UPDATE student_subject SET room_id=$subject_room_id, timer_id=$subject_timer_id 
				WHERE subject_id=$subject_subject_id AND student_id=$student_id";
			$resultStudedntSubject = mysqli_query($connect, $updatetStudentSubject);
		}
	}

	$query = "UPDATE student SET
			`student_name`='$student_name', `course_id`='$student_course',`level_id`='$student_level', 
			`student_status`='$student_status' WHERE `student_id`='$student_id'";
	$result = mysqli_query($connect, $query);

	if (!$result) {
		die('Error: ' . mysqli_error($connect));
	} else {

		echo '<script type="text/javascript">
						alert("Student Updated!");
							location="schedulelist.php";
							</script>';
	}
}
