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

 if (isset($_POST['submit'])) {

		$subject_id = mysqli_real_escape_string($connect, $_POST['subject_type']);
		$subject_type = mysqli_real_escape_string($connect, $_POST['subject_type']) ;
		$subject_description =mysqli_real_escape_string($connect, $_POST['subject_description']) ;

		$course_id = mysqli_real_escape_string($connect, $_POST['course_id']);
	
		$room_id = mysqli_real_escape_string($connect, $_POST['room_id']);

		$timer_id = mysqli_real_escape_string($connect, $_POST['timer_id']);
	
		$query = "INSERT INTO subject (`course_id`, `room_id`, `timer_id`, `subject_type`, `subject_description`) VALUES ('$course_id', '$room_id', '$timer_id', '$subject_type', '$subject_description')" ;
		$result = mysqli_query($connect, $query);

		if (!$result)
		{
			echo 'not inserted';
		}
		else 
		{
			echo '<script type="text/javascript">
							alert("Subject Inserted!");
								location="subject.php";
								</script>';
		}

	}
	else if (isset($_POST['update'])) {

	
		$subject_type = mysqli_real_escape_string($connect, $_POST['subject_type']) ;
		$subject_description =mysqli_real_escape_string($connect, $_POST['subject_description']) ;
	
		
	
		$sql = " UPDATE subject SET `subject_type`='$subject_type',`subject_description`='$subject_description', WHERE ";
				$result = mysqli_query($connect, $sql);

		if (!$result)
		{
			echo 'not inserted';
		}
		else 
		{
			echo '<script type="text/javascript">
							alert("Subject Updated!");
								location="schedulelist.php";
								</script>';
		}
	}


?>
