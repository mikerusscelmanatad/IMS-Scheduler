<?php
// ************** add.cor.php *********************

require 'databaasee.php';

$studentsQuery = "SELECT * FROM `student` WHERE `end_date` < CURRENT_DATE;";
$studentsQueryResult = mysqli_query($connect, $studentsQuery);

while ($row = mysqli_fetch_array($studentsQueryResult)) {
	$toCleanStudentId = $row["student_id"];
	
	$cleanStudentsQuery = "UPDATE student SET student_status = 'OLD STUDENT' WHERE student_id = $toCleanStudentId;";
	$cleanStudentsQueryResult = mysqli_query($connect, $cleanStudentsQuery);	

	$cleanStudentsQuery = "UPDATE student_subject SET room_id = 71, faculty_id=1, books='', teachers_name='' WHERE student_id = $toCleanStudentId;";
	$cleanStudentsQueryResult = mysqli_query($connect, $cleanStudentsQuery);	

	$cleanStudentsQuery = "DELETE FROM teacher_timer WHERE student_id = $toCleanStudentId;";
	$cleanStudentsQueryResult = mysqli_query($connect, $cleanStudentsQuery);	
}

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
	<script type="text/javascript">
		$(document).ready(function() {
			var dateToday = new Date();
			$("#startDatePicker").datepicker({
				beforeShowDay: $.datepicker.noWeekends,
				dateFormat: "yy-mm-dd",
				minDate: dateToday,
				autoclose: true,
			}).on("change", function() {
				var date = $(this).val();
				console.log(date, 'START DATE change');
			});
			$("#endDatePicker").datepicker({
				beforeShowDay: $.datepicker.noWeekends,
				dateFormat: "yy-mm-dd",
				minDate: dateToday,
				autoclose: true
			}).on("change", function() {
				var date = $(this).val();
				console.log(date, 'END DATE change');
			});
		});
	</script>

</head>

<body>
	<br>

	<div class="container container-fluid">

		<div class="form-group" align="center">
			<div class="form">
				<div class="jumbotron">
					IMS ACADEMY
					<form align="center" class="form-horizontal" method="post" action="add.cor.php">
						<fieldset>

							<!-- Form Name -->
							<legend>
								<h3> STUDENT INFORMATION </h3>
							</legend> <br> <br>


							<div class="form-group">
								<label class="col-md-4 control-label" for="student_status"> Please select </label>
								<div class="col-md-4">
									<input type="radio" id="student_status" name="student_status" value="OLD STUDENT" />
									<label for="student_status">Old Student</label> &nbsp; &nbsp;
									<input type="radio" id="student_status" name="student_status" value="NEW STUDENT" />
									<label for="student_status"> New student </label>
								</div>
							</div>


							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="student_name">Students Name </label>
								<div class="col-md-4">
									<input class="form-control" id="student_name" name="student_name" type="text" autocomplete="off" placeholder="Name here " required="">
								</div>
							</div>


							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label" for="student_course"> Course </label>
								<div class="col-md-4">
									<select class="form-control" id="student_course" name="student_course">
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

							<div class="form-group" style="z-index: auto;">
								<label class="col-md-4 control-label" for="startDatePicker"> Start Date: </label>
								<div class="col-md-4">
									<div>
										<div class='input-group date'>
											<input id="startDatePicker" name="startDatePicker" type='text' class="form-control" required/>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
							</div>


							<div class="form-group">
								<label class="col-md-4 control-label" for="endDatePicker"> End Date: </label>
								<div class="col-md-4">
									<div>
										<div class='input-group date'>
											<input id="endDatePicker" name="endDatePicker" type="text" class="form-control" required/>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
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