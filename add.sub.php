<?php 
 
 	$connect = mysqli_connect ('localhost', 'root', '', 'insertion');
	

		// The Submit button or create // 
	if (isset($_POST['submit'])) 
	{

		$subject_description = mysqli_real_escape_string($connect, $_POST['subject_description']);
		$subject_type = mysqli_real_escape_string($connect, $_POST['subject_type']);

				
		$query = "INSERT INTO subject (subject_type, subject_description) VALUES ('$subject_type', '$subject_description')";
		$result = mysqli_query($connect, $query);
				
					if (!$result)
					{
						echo 'not inserted';
					}
					else
					{
						echo '<script type="text/javascript">
										alert("New Subject Added!");
											location="subject.php";
											</script>';
					}

		
	}
?>
