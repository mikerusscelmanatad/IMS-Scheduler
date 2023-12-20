<?php 
	// ************************** setschedule.php 
 
 $connect = mysqli_connect ('localhost', 'root', '');
 
 if (!$connect)
 {
	 echo 'not connected to server';
 }
 if (!mysqli_select_db($connect, 'insertion'))
 {
	 echo 'database not selected';
 }

 $course_Code = $_POST['corcode'];
 $course_name = $_POST['corname'];
 $course = $_POST ['course'];
 $level = $_POST['level'];
 
 $sql = "INSERT INTO course (`course_Code`, `course_name`, `course`, `level`) VALUES ('$course_Code', '$course_name', '$course', '$level')";

 if (!mysqli_query ($connect, $sql))
 {
	 echo 'not inserted';
 }
 else 
 {
	 echo '<script type="text/javascript">
                      alert("Student Added!");
                         location="setschedule.php";
                           </script>';
 }


?>