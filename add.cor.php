<?php 
	// ************************** setschedule.php 
 require 'databaasee.php' ;

 	if (isset($_POST['submit'])) {

		$student_id = mysqli_real_escape_string($connect, $_POST['student_id']) ;
		$student_name = mysqli_real_escape_string($connect, $_POST['student_name']) ;
		$student_status = mysqli_real_escape_string($connect, $_POST['student_status']) ;
		$student_course = mysqli_real_escape_string($connect, $_POST['student_course']) ;
		$student_level = mysqli_real_escape_string($connect, $_POST['student_level']);

		$query = "INSERT INTO student (`student_id`, `student_name`, `student_status`, `student_course`, `student_level`)	VALUES ('$student_id', '$student_name', '$student_status', '$student_course', '$student_level')" ;
		$result = mysqli_query($connect, $query);
		if (!$result)
		{
			echo 'not inserted';
		}
		else 
		{
			echo '	<<script type="text/javascript">
							alert("Student Updated!");
								location="schedulelist.php";
								</script>';
		}

	}
		else if (isset($_POST['update'])) {

			$student_id = mysqli_real_escape_string($connect, $_POST['student_id']) ;
			$student_name = mysqli_real_escape_string($connect, $_POST['student_name']) ;
			$student_status = mysqli_real_escape_string($connect, $_POST['student_status']) ;
			$student_course =mysqli_real_escape_string($connect, $_POST['student_course']) ;
			$student_level = mysqli_real_escape_string($connect, $_POST['student_level']);
		
			
		
			$query = " UPDATE student SET `student_id`='$student_id',`student_name`='$student_name',`student_course`='$student_course',`student_level`='$student_level' WHERE `student_id`='$student_id'";
					$result = mysqli_query($connect, $query);

			if (!$result)
			{
				echo 'not inserted';
			}
			else 
			{
				echo '<script type="text/javascript">
								alert("Student Updated!");
									location="schedulelist.php";
									</script>';
			}
		}


?>
