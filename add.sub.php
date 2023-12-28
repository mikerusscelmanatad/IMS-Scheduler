<?php 
	// ************************** setschedule.php 
 require 'databaasee.php' ;

 if (isset($_POST['submit'])) {

		$subject_id = mysqli_real_escape_string($connect, $_POST['subject_id']) ;
		$subject_type = mysqli_real_escape_string($connect, $_POST['subject_type']) ;
		$subject_description =mysqli_real_escape_string($connect, $_POST['subject_description']) ;
	
		$sql = "INSERT INTO subject (`subject_id`, `subject_type`, `subject_description`)	VALUES ('$subject_id', '$subject_type', '$subject_description')" ;
			$result = mysqli_query($connect, $sql);
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

		$subject_id = mysqli_real_escape_string($connect, $_POST['subject_id']) ;
		$subject_type = mysqli_real_escape_string($connect, $_POST['subject_type']) ;
		$subject_description =mysqli_real_escape_string($connect, $_POST['subject_description']) ;
	
		
	
		$sql = " UPDATE subject SET `subject_id`='$subject_id',`subject_type`='$subject_type',`subject_description`='$subject_description', WHERE `subject_id`='$subject_id'";
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
