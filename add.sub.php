<?php 
 
 	$connect = mysqli_connect ('localhost', 'root', '', 'insertion');
	
	if (!$connect)
	{
		echo 'not connected to server';
	}
		if (!mysqli_select_db($connect, 'insertion'))
		{
			echo 'database not selected';
		}
	

		// The Submit button or create // 
	if (isset($_POST['submit'])) {

		$subject_code =mysqli_real_escape_string($connect, $_POST['roomcode']) ;
		$subject_description = mysqli_real_escape_string($connect, $_POST['subj']);

		$query = "INSERT INTO subject (subject_code, subject_description) VALUES ('$subject_code', '$subject_description')";
		$result = mysqli_query($connect, $query);
				}
					if(!$result)
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

		// Update button 		// 	
		if (isset($_POST['update'])) {

			$subject_code =mysqli_real_escape_string($connect, $_POST['roomcode']) ;
			$subject_description = mysqli_real_escape_string($connect, $_POST['subj']);

			$query = "UPDATE `subject` SET `subject_id`='$subject_id',`subject_code`='$subject_code', `subject_description`='$subject_description', `updated_at`=now() WHERE subject_id='$subject_id'";
			$result = mysqli_query($connect, $query);
						}		

						if (!$result)
						{
							echo 'not updated';
						}
						else
						{
							echo '<script type="text/javascript">
									alert("updated!");
									location="subject.php";
									</script>';
						}

		?>
