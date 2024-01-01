<?php 
// ************** add.cor.php *********************

// php select option value from database

	$hostname = "localhost";
	$username = "root";
	$password = "";
	$databaseName = "insertion";

	// connect to database
	$connect = mysqli_connect($hostname, $username, $password, $databaseName);
	$student_id = "student_id";
	
	$query = "SELECT * FROM `student` ORDER BY student_id ASC ";
	$result = mysqli_query($connect, $query);

	

?>
<?php 
// ************** add.cor.php *********************

// php select option value from database

	$hostname = "localhost";
	$username = "root";
	$password = "";
	$databaseName = "insertion";

	// connect to database
	$connect = mysqli_connect($hostname, $username, $password, $databaseName);
	$course_id = "course_id";
	
	$query = " SELECT * FROM `subject` WHERE course_id='$course_id'";
	$result = mysqli_query($connect, $query);

?>

<?php
  $path = $_SERVER['DOCUMENT_ROOT'];
   $path .= "header.php";
   include_once("header.php");
   include_once("navbar.php");


?>
<html>
<head>
<style>
body {
	background-color: white;
}
</body>
</style>
</head>
<body>
 
<br><div class="container">
  <div class="row" align="center">
    <div class="col-lg-6">
			<div class="jumbotron">
				IMS SCHEDULER
			<form class="form-horizontal" method= "post" action = "add.cor.php">
			<fieldset>

			<!-- Form Name -->
			<legend> SCHEDULER</legend>

			
			<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="student_id"> ID Number </label>  
				  <div class="col-md-5">
				  <input id="student_id" name="student_id" type="text" placeholder="Base on passport" class="form-control input-md" required="">	
				  </div>
				</div>
				
			
			<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="student_name">Students Name </label>  
				  <div class="col-md-5">
				  <input id="student_name" name="student_name" type="text" placeholder="Name here " class="form-control input-md" required="">
				  </div>
				</div>
				

				<div class="form-group"> 
					<label for="student_status"> Please select </label> &nbsp; &nbsp;&nbsp; &nbsp;
				  	<input type="radio" id="student_status" name="student_status" value= "Old student" />
      			  	<label for="student_status">Old Student</label> &nbsp; &nbsp;
					<input type="radio" id="student_status" name="student_status" value= "New student" />
					<label for="student_status"> New student </label>
				</div>


				<!-- Text input-->
				<div class="form-group">
					<div class="form-group">
							<label class="col-md-4 control-label" for="student_course"> Course </label> 
						<div class="col-md-5">
						<select id="student_course" name="student_course" class="form-control"> 
							<option value="Select">Select</option>  
							<option value="ESL Premium"> ESL Premium </option>  
							<option value="ESL Intensive">ESL Intensive</option>  
							<option value="ESL Essential">ESL Essential</option>  
							<option value="POWER SPEAKING">POWER SPEAKING</option>  
							<option value="IELTS ACADEMIC"> IELTS ACADEMIC</option>  
							<option value="IELTS GENERAL"> IELTS GENERAL</option>  
							<option value="IELTS PRE-GUARANTEE">IELTS PRE-GUARANTEE</option>
							<option value="IELTS GUARANTEE">IELTS GUARANTEE</option>
							<option value="PRE TOEIC"> PRE TOEIC</option> 
							<option value="TOEIC"> TOEIC </option> 
							<option value="BUSINESS"> BUSINESS</option>   
						</select>
					</div>
				</div>

				
				<div class="form-group">
					<div class="form-group">
							<label class="col-md-4 control-label" for="student_level"> Level </label> 
						<div class="col-md-5">
						<select id="student_level" name="student_level" class="form-control"> 
							<option value="Select">Select</option>  
							<option value="beginner1"> Beginner 1 </option>  
							<option value="elementary2">Elementary 2</option>  
							<option value="elementary3">Elementary 3</option>  
							<option value="preintermediate4">Preintermediate 4</option>  
							<option value="intermediate5">intermediate 5</option>  
							<option value="intermediate6"> intermediate 6</option>  
							<option value="upperintermediate7">Upper-Intermediate 7</option>
							<option value="upperintermediate8">Upper-Intermediate 8</option>
							<option value="advance9"> Advance 9</option> 
							<option value="advance10"> Advance 10</option> 
							<option value="advance11"> Advance 11</option> 
							<option value="master12"> Master 12 </option>    
						</select>
					</div>
					</div>



						<!-- Button -->
						<div class="form-group"  align="right" >
						<label class="col-md-4 control-label" for="submit"></label>
						<div class="col-md-5">
						<button align="right" id="submit" name="submit" class="btn btn-primary"> Proceed  </button>
						</div>
						</div>
						</div>
			</fieldset>
			</form>
		</div>		
    </div>

<?php
  $path = $_SERVER['DOCUMENT_ROOT'];
   $path .= "footer.php";
   include_once("footer.php");
   include_once("navbar.php");
?> 