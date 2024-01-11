<?php
// ************** add.cor.php *********************

require 'databaasee.php';

$student_id = "student_id";

$query = "SELECT * FROM `student` ORDER BY student_id ASC ";
$result = mysqli_query($connect, $query);


?>



<?php
// ************** add.cor.php *********************

$query = "SELECT * FROM `course`";
$findAllQueryResult = mysqli_query($connect, $query);


$query = "SELECT * FROM `level`";
$findAllLevelResult = mysqli_query($connect, $query);

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
		   color: black;
	   }

	   th {
		   text-align: center;
	   }   

	   tr {
		   height: 10px;
	   }

	   td {
		   padding-top: 5px;
		   padding-left: 20px;
		   padding-bottom: 5px;
		   height: 20px;
	   }

	</style>
</head>

<body>

	<br>
	
	<div class="container container-fluid">
		
		<div class="form-group" align="center" >
			<div class="form">
				<div class="jumbotron">
					IMS ACADEMY
					<form align="center" class="form-horizontal" method="post" action="add.cor.php">
						<fieldset>

							<!-- Form Name -->
							<legend><h3> STUDENT INFORMATION </h3>  </legend> <br> <br>
	   						
							
							<div class="form-group">
									<label class="col-md-4 control-label" for="student_status"> Please select </label>
									<div class="col-md-4">
									<input type="radio" id="student_status" name="student_status" value="OLD STUDENT" />
									<label for="student_status">Old Student</label> &nbsp; &nbsp;
									<input  type="radio" id="student_status" name="student_status" value="NEW STUDENT" />
									<label for="student_status"> New student </label>
								</div>
							</div>


							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="student_name">Students Name </label>
								<div class="col-md-4">
									<input class="form-control" id="student_name" name="student_name" type="text" placeholder="Name here "  required="">
								</div>
							</div>


							<!-- Text input-->
							
								<div class="form-group">
									<label class="col-md-4 control-label" for="student_course"> Course </label>
									<div class="col-md-4">
										<select  class="form-control" id="student_course" name="student_course">
											<option value="Select">Select</option>
											<?php while ($row1 = mysqli_fetch_array($findAllQueryResult)) :; ?>
												<option id=<?php echo $row1['course_id']; ?> value="<?php echo $row1['course_id']; ?>"><?php echo $row1['course_name']; ?></option>
											<?php endwhile; ?>
										</select>
									</div>
								</div>


							
								<div class="form-group">
									<label class="col-md-4 control-label" for="student_level"> Level </label>
										<div class="col-md-4">
											<select id="student_level" name="student_level" class="form-control">
												<option value="Select">Select</option>
												<?php while ($row1 = mysqli_fetch_array($findAllLevelResult)) :; ?>
													<option id=<?php echo $row1['level_id']; ?> value="<?php echo $row1['level_id']; ?>"><?php echo $row1['level_name']; ?></option>
												<?php endwhile; ?>
											</select>
										</div>
								</div>



									<!-- Button -->
								<div class="form-group" align="right">
								<label class="col-md-4 control-label" for="submit"></label>
									<div class="col-md-4">
											<button align="right" id="submit" name="submit" class="btn btn-success"> Proceed </button>
									</div>
								</div>
				
						
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>

<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "footer.php";
include_once("footer.php");
include_once("navbar.php");
?>