<?php 
 
 $connect = mysqli_connect ('localhost', 'root', '');
 
 if (!$connect)
 {
	 echo 'not connected to server';
 }
 if (!mysqli_select_db($connect, 'insertion'))
 {
	 echo 'database not selected';
 }

 $Subject_Code = $_POST['subcode'];
 $Subject_Description = $_POST['subdescription'];
 
 $sql = "INSERT INTO subject (Subject_Code, Subject_Description) VALUES ('$Subject_Code', '$Subject_Description')";

 if (!mysqli_query ($connect, $sql))
 {
	 echo 'not inserted';
 }
 else
 {
	 echo '<script type="text/javascript">
                      alert("New Subject Added!");
                         location="home.php";
                           </script>';
 }
 

?>
