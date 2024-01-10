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


$subject_id = $_POST['subject_id'];
$student_id = $_POST['student_id'];
$update = true;
$query = "SELECT * FROM `subject` AS sub
INNER JOIN `student` stud ON sub.course_id = stud.course_id
WHERE stud.student_id=$student_id AND sub.subject_id=$subject_id";

$findAllSubjectByCourseResult = mysqli_query($connect, $query);

while ($row = mysqli_fetch_assoc($findAllSubjectByCourseResult)) {
	$get_subject_id = $row['subject_id'];
	$get_room_id = $row['room_id'];
	$get_student_course = $row['course_id'];
	$get_student_period = $row['timer_id'];
}

$findAllSubject = "SELECT * FROM `subject` WHERE subject_id=$get_subject_id";
$findAllSubjectResult = mysqli_query($connect, $findAllSubject);

//Dropdown list query *************************************
$findAllCourses = "SELECT * FROM `course`";
$findAllCoursesResult = mysqli_query($connect, $findAllCourses);

// *******************************
$findAllPeriod = "SELECT * FROM `timer`";
$findAllPeriodResult = mysqli_query($connect, $findAllPeriod);

// **************************

$findAllRooms = "SELECT * FROM `rooms`";
$findAllRoomsResult = mysqli_query($connect, $findAllRooms);


// **************************

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

					<form class="form-horizontal" method="get" action='view.edit.action.php?id=<?php echo $student_id ?>' enctype="multipart/form-data">
						<fieldset>
							<!-- Form Name -->
							<legend><h3> UPDATE </h3></legend>			

							<div class="form-group">
								<div class="col-md-5">
								   <input readonly id="id" name="id" type="hidden" value="<?php echo $student_id; ?>" class="form-control input-md" required="" />
								   <input readonly id="subject_id" name="subject_id" type="hidden" value="<?php echo $subject_id; ?>" class="subject_id form-control input-md" required="" />
								</div>
							</div>


							<div class="form-group">
									<label class="col-md-4 control-label" for="timer_detail"> Time </label>
									<div class="col-md-5">
										<select id="timer_detail" name="timer_detail" class="form-control">
											<?php while ($row1 = mysqli_fetch_assoc($findAllPeriodResult)) :; ?>
												<option id="<?php echo $row1["id"]; ?>" value="<?php echo $row1["id"]; ?>" <?php
													if ($row1["id"] === $get_student_period) {
														echo "selected";
													}
													?>>
													<?php echo $row1["start_time"] . " - " . $row1["end_time"] ?></option>
											<?php endwhile; ?>
										</select>
                                    </div>
								</div>


								<div class="form-group">
									<label class="col-md-4 control-label" for="subject_description"> Subject </label>
									<div class="col-md-5">
										<select id="subject_description" name="subject_description" class="form-control">
											<?php while ($row1 = mysqli_fetch_assoc($findAllSubjectResult)) :; ?>
												<option id="<?php echo $row1["subject_id"]; ?>" value="<?php echo $row1["subject_description"]; ?>" ;
													<?php
														if ($row1["subject_id"] === $get_subject_id) {
															echo "selected";
															
														}
													?>>
													<?php echo $row1["subject_description"]; ?></option>
											<?php endwhile; ?>
										</select>
                                    </div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label" for="room_id"> Room </label>
									<div class="col-md-5">
										<select id="room_id" name="room_id" class="form-control">
											<?php while ($row1 = mysqli_fetch_assoc($findAllRoomsResult)) :; ?>
												<option id="<?php echo $row1["room_id"]; ?>" value="<?php echo $row1["room_id"]; ?>" <?php
													if ($row1["room_id"] === $get_room_id) {
														echo "selected";
													}
													?>>
													<?php echo $row1["room"]; ?></option>
											<?php endwhile; ?>
										</select>
                                    </div>
								</div>


								
					
								<!-- Text input-->
								<div class="form-group">
									<label class="col-md-4 control-label" for="teacher_id"> Teachers Name </label>
									<div class="col-md-5">
										<input id="teacher_id" name="teacher_id" type="text" placeholder="Teachers name here" value="" class="form-control input-md" required="">
									</div>
								</div>

								<!-- Text input-->
								<div class="form-group">
									<label class="col-md-4 control-label" for="student_name"> Books</label>
									<div class="col-md-5">
										<input id="book_id" name="book_id" type="text" placeholder="Book" value="" class="form-control input-md" required="">
									</div>
								</div>




								<!-- Button -->
								<div class="form-group" align="right">
									<label class="col-md-4 control-label" for="update"></label>
									<div class="col-md-5">
										<button type="submit" id="update" name="update" class="btn btn-success"> Update </button>
										<a href="view.php?id=<?php echo $student_id?>" class="btn btn-primary"> Cancel </a> &nbsp; &nbsp;
										
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