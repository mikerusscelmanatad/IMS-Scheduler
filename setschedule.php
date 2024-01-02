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
		}
	</style>
</head>

<body>

	<br>
	<div class="container">
		<div class="row" align="center">
			<div class="">
				<div class="jumbotron">
					IMS SCHEDULER
					<form class="form-horizontal" method="post" action="add.cor.php">
						<fieldset>

							<!-- Form Name -->
							<legend> SCHEDULER</legend>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="student_name">Students Name </label>
								<div class="col-md-5">
									<input id="student_name" name="student_name" type="text" placeholder="Name here " class="form-control input-md" required="">
								</div>
							</div>


							<div class="form-group">
								<label for="student_status"> Please select </label> &nbsp; &nbsp;&nbsp; &nbsp;
								<input type="radio" id="student_status" name="student_status" value="OLD" />
								<label for="student_status">Old Student</label> &nbsp; &nbsp;
								<input type="radio" id="student_status" name="student_status" style="color:blue" value="NEW" />
								<label for="student_status"> New student </label>
							</div>


							<!-- Text input-->
							<div class="form-group">
								<div class="form-group">
									<label class="col-md-4 control-label" for="student_course"> Course </label>
									<div class="col-md-5">
										<select id="student_course" name="student_course" class="form-control">
											<option value="Select">Select</option>
											<?php while ($row1 = mysqli_fetch_array($findAllQueryResult)) :; ?>
												<option id=<?php echo $row1['course_id']; ?> value="<?php echo $row1['course_id']; ?>"><?php echo $row1['course_name']; ?></option>
											<?php endwhile; ?>
										</select>
									</div>
								</div>


								<div class="form-group">
									<div class="form-group">
										<label class="col-md-4 control-label" for="student_level"> Level </label>
										<div class="col-md-5">
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
										<div class="col-md-5">
											<button align="right" id="submit" name="submit" class="btn btn-primary"> Proceed </button>
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