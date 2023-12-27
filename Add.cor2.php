<?php 
	// ************************** edit.php 
 
 $connect = mysqli_connect ('localhost', 'root', '', 'insertion');
 
 if (!$connect)
 {
	 echo 'not connected to server';
 }
 if (!mysqli_select_db($connect, 'insertion'))
 {
	 echo 'database not selected';
 }

// Update butto // 	
if($_SERVER['REQUEST_METHOD'] == "POST")
          {
                 echo '<script type="text/javascript">
                        alert("Updated!");
                       location="schedulelist.php";
                        </script>';
        }
if (isset($_POST['update'])) {

	$student_id = mysqli_real_escape_string($connect, $_POST['student_id']);
	$student_name = mysqli_real_escape_string($connect, $_POST['student_name']);
	$student_course = mysqli_real_escape_string($connect, $_POST['student_course']);
	$student_level = mysqli_real_escape_string($connect, $_POST['student_level']);
	
	 $query = "UPDATE subject SET `student_name`='$student_name', `student_course`='$student_course', `student_level`='$student_level', `updated_at`=NOW() WHERE `student_id`='$student_id'";
    
	$result = mysqli_query($connect, $query);
}
	if ($result){
		echo(" Update successfully");
	} else {
        echo "Could not update: " . mysqli_error($connect);
    }


?>