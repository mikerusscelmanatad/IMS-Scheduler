<?php 
	// ************************** setschedule.php 
 
 	$connect = mysqli_connect ('localhost', 'root', '', 'insertion');
 
 	if (!$connect)
 	{
	 	echo 'not connected to server';
 	}
 	if (!mysqli_select_db($connect, 'insertion'))
 	{
	 	echo 'database not selected';
 	}
	$subject_id = $_POST['subject_id'];
	$student_id = $_POST['student_id'];
	$student_name = $_POST['student_name'];
	$student_course = $_POST ['student_course'];
	$student_level = $_POST['student_level'];
	
	$subject_description = $_POST['subject_description'];
	$subject_code = $_POST['subject_code'];

 
 $sql = "INSERT INTO student (`student_id`, `student_name`, `student_course`, `student_level`) VALUES ('$student_id', '$student_name', '$student_course', '$student_level')";
 $sql = "INSERT INTO subject (`subject_id`, `subject_description`, `subject_code`) VALUES ('$subject_id', '$subject_description', '$subject_code')";
 $sql = "INSERT INTO student_subject (`subject_id`, `student_id`) VALUES ('$subject_id', '$student_id')";
 
 $result = mysqli_query($connect, $sql);

 if (!$result)
 {
	 echo 'not inserted';
 }
 else 
 {
	 echo '<script type="text/javascript">
                      alert("Student Added!");
                         location="subject.php";
                           </script>';
 }


?>