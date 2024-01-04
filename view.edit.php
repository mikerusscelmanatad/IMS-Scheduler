<?php
// ************** add.cor.php *********************
// php select option value from database
$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "insertion";
// connect to database
$connect = mysqli_connect($hostname, $username, $password, $databaseName);
$query = "SELECT * FROM student ";
$result = mysqli_query($connect, $query);
$options = "";
$leveloptions = "";
$courseoptions = "";

// while($row= mysqli_fetch_assoc($result))
// {

// 	$options = $options."<option>$row[course]</option>";
// 	$leveloptions = $options."<option>$row[level]</option>";
// }


$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "header.php";
include_once("header.php");
include_once("navbar.php");
?>
<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "insertion";
$connect = mysqli_connect($hostname, $username, $password, $database) or die(mysqli_error($connect));
mysqli_select_db($connect, "insertion") or die(mysqli_error($connect));

if (isset($_GET['id'])) {
	$subject_id = $_GET['id'];

	$update = true;
	$query = 
	$query = "SELECT * FROM `subject` WHERE `subject_id`='$subject_id'";

	    	$result = mysqli_query($connect, $query);
	while ($row = mysqli_fetch_assoc($result)) {

		$subject_id = $row['subject_id'];
		$subject_description = $row['subject_description'];
		$get_student_course = $row['course_id'];
		$get_student_level = $row['level_id'];
        $get_student_period = $row['timer_id'];

	}
}
//Dropdown list query *************************************
$findAllCourses = "SELECT * FROM `course`";
$findAllCoursesResult = mysqli_query($connect, $findAllCourses);

// **************************
$findAllLevel = "SELECT * FROM `level`";
$findAllLevelResult = mysqli_query($connect, $findAllLevel);

// *******************************
$findAllPeriod = "SELECT * FROM `timer`";
$findAllPeriodResult = mysqli_query($connect, $findAllPeriod);

// **************************
$findAllSubject = "SELECT * FROM `subject`";
$findAllSubjectResult = mysqli_query($connect, $findAllSubject);

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
		<div class="" align="center">
			<div class="">
				<div class="jumbotron">

					<form class="form-horizontal" method="post" action='add.cor.php' enctype="multipart/form-data">
						<fieldset>
							<!-- Form Name -->
							<legend> UPDATE</legend>			


							
									<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="student_name"> Period </label>
								<div class="col-md-4">
									<input class="form-control" id="timer_id" name="timer_id" type="text"   required="">
								</div>
							</div>


							
								<div class="form-group">
									<label class="col-md-4 control-label" for="student_course"> Course </label>
									<div class="col-md-5">
										<select id="student_course" name="student_course" class="form-control">
											<?php while ($row1 = mysqli_fetch_assoc($findAllCoursesResult)) :; ?>
												<option id="<?php echo $row1["course_id"]; ?>" value="<?php echo $row1["course_id"]; ?>" <?php
													if ($row1["course_id"] == $get_student_course) {
														echo "selected";
													}
													?>>
													<?php echo $row1["course_name"]; ?></option>
											<?php endwhile; ?>
										</select>
                                    </div>
								</div>


							
								<div class="form-group">
									<label class="col-md-4 control-label" for="student_course"> Subject </label>
									<div class="col-md-5">
										<select id="student_course" name="student_course" class="form-control">
											<?php while ($row1 = mysqli_fetch_assoc($findAllCoursesResult)) :; ?>
												<option id="<?php echo $row1["course_id"]; ?>" value="<?php echo $row1["course_id"]; ?>" <?php
													if ($row1["course_id"] == $get_student_course) {
														echo "selected";
													}
													?>>
													<?php echo $row1["course_name"]; ?></option>
											<?php endwhile; ?>
										</select>
                                    </div>
								</div>
							

                            <div class="form-group">
								<div class="form-group">
									<label class="col-md-4 control-label" for="student_course"> Room </label>
									<div class="col-md-5">
										<select id="student_course" name="student_course" class="form-control">
											<?php while ($row1 = mysqli_fetch_assoc($findAllCoursesResult)) :; ?>
												<option id="<?php echo $row1["course_id"]; ?>" value="<?php echo $row1["course_id"]; ?>" <?php
													if ($row1["course_id"] == $get_student_course) {
														echo "selected";
													}
													?>>
													<?php echo $row1["course_name"]; ?></option>
											<?php endwhile; ?>
										</select>
                                    </div>
								</div>
							</div>


                                    <!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="student_name"> Teachers Name </label>
										<div class="col-md-5">
											<input id="student_name" name="student_name" type="text" placeholder="Name here" value="<?php echo $student_name; ?> " class="form-control input-md" required="">
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-4 control-label" for="student_name"> Books</label>
										<div class="col-md-5">
											<input id="student_name" name="student_name" type="text" placeholder="Name here" value="<?php echo $student_name; ?> " class="form-control input-md" required="">
										</div>
									</div>




									<!-- Button -->
									<div class="form-group" align="right">
										<label class="col-md-4 control-label" for="update"></label>
										<div class="col-md-5">
											<button type="submit" name="update" id="update" class="btn btn-success"> Update </button>
											<a href="schedulelist.php" class="btn btn-primary"> Back </a> &nbsp; &nbsp;
											
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