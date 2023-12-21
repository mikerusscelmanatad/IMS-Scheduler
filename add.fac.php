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

 $Faculty_Name = $_POST['falname'];
 $Designation = $_POST['Designation'];
 
 $sql = "INSERT INTO faculty (Faculty_Name, Designation) VALUES ('$Faculty_Name', '$Designation')";

 if (!mysqli_query ($connect, $sql))
 {
	 echo 'not inserted';
 }
 else 
 {
	 echo '<script type="text/javascript">
                      alert("New Course Added!");
                         location="courselist.php";
                           </script>';
 }


?>