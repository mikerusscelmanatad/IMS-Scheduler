<?php
// ************** add.cor.php *********************
// php select option value from database
require 'databaasee.php';

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

$subject_id = $_GET['subject_id'];
$student_id = $_GET['student_id'];
$student_course_id = $_GET['course_id'];
$student_level_id = $_GET['level_id'];
$update = true;
$query = "SELECT * FROM `student_subject` AS ss
INNER JOIN `student` stud ON ss.student_id = stud.student_id
WHERE ss.student_id=$student_id AND ss.subject_id=$subject_id;";

$findAllSubjectByCourseResult = mysqli_query($connect, $query);

while ($row = mysqli_fetch_assoc($findAllSubjectByCourseResult)) {
	$get_subject_id = $row['subject_id'];
	$get_room_id = $row['room_id'];
	$get_student_course = $row['course_id'];
	$get_student_period = $row['timer_id'];
	$get_teacher_name = $row['teachers_name'];
	$get_books = $row['books'];
}

$findAllSubject = "SELECT * FROM `subject` WHERE subject_id=$get_subject_id;";
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
$findAllConflictRoom = "SELECT
COUNT(*) AS c,
r.room_id,
r.is_group
FROM `teacher_timer` tt
	INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
	INNER JOIN timer t ON tt.timer_id = t.id
	INNER JOIN student st ON tt.student_id = st.student_id
	INNER JOIN subject s ON tt.subject_id = s.subject_id
	INNER JOIN rooms r ON f.room = r.room_id
WHERE t.id = $get_student_period 
GROUP BY room_id, is_group HAVING COUNT(*) >= 1 ORDER BY c";
$findlAllDuplicateRoomsResult = mysqli_query($connect, $findAllRooms);

// ****************************
$findAllBooks = "SELECT * FROM books b 
	INNER JOIN course c ON UPPER(b.course) = UPPER(c.course_name)
	INNER JOIN level l ON UPPER(b.level) = UPPER(l.level_name)
	INNER JOIN subject s ON UPPER(b.subject) = UPPER(s.subject_description)
WHERE 
	c.course_id=$student_course_id 
	AND (l.level_id=$student_level_id OR UPPER(b.level) = 'NO LEVEL')
	AND s.subject_id=$subject_id;";
$findAllBooksResult = mysqli_query($connect, $findAllBooks);
// **************************

$findAllTeachers = "SELECT * FROM `faculty`;";
$findAllTeachersResult = mysqli_query($connect, $findAllTeachers);


// **************************
?>
<html>

<head>
	<style>
		body {
			background-color: white;
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
						
			/**
			 * Show Teacher's input only for Group Rooms
			 * rooms which have ids 72 - 82 are Group Room
			 * 
			 * **/
			var room = document.getElementById("room_id");
			var teacher = document.getElementById("teacherContainer");
			if (room.value >= 72 && room.value <= 82) {
				if (teacher.style.display === "none") {
					teacher.style.display = "block";
				} 
			} 
			$("#room_id").on("change", function(){
				if (room.value >= 72 && room.value <= 82) {
					if (teacher.style.display === "none") {
						teacher.style.display = "block";
					}
				} else {
						teacher.style.display = "none";
				}
			});
		});
	</script>
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
							<legend>
								<h3> UPDATE </h3>
							</legend>

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
											<option id="<?php echo $row1["subject_id"]; ?>" value="<?php echo $row1["subject_description"]; ?>" ; <?php
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
													$optionRoomId = $row1["room_id"];
													if ($row1["room_id"] === $get_room_id) {
														echo "selected";
													}
													if ($row1["room_id"] >= 72 && $row1["room_id"] <= 82) {
														$selectDuplicateQuery = "SELECT
														COUNT(*) AS c,
														r.room_id AS room_id,
														r.is_group AS room_is_group
														FROM `teacher_timer` tt
															INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
															INNER JOIN timer t ON tt.timer_id = t.id
															INNER JOIN student st ON tt.student_id = st.student_id
															INNER JOIN subject s ON tt.subject_id = s.subject_id
															INNER JOIN rooms r ON tt.room_id = r.room_id
														WHERE t.id = $get_student_period  AND r.room_id = $optionRoomId AND r.is_group = 1
														GROUP BY room_id, room_is_group HAVING COUNT(*) >= 6 ORDER BY c;";
															$selectDuplicateQueryResult = mysqli_query($connect, $selectDuplicateQuery);
															if (mysqli_num_rows($selectDuplicateQueryResult) > 0) {
																echo " disabled";
																echo " style='background-color:red;color:white;'";
															}
													} else {
														$selectDuplicateQuery = "SELECT
														COUNT(*) AS c,
														r.room_id AS room_id,
														r.is_group AS room_is_group
														FROM `teacher_timer` tt
															INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
															INNER JOIN timer t ON tt.timer_id = t.id
															INNER JOIN student st ON tt.student_id = st.student_id
															INNER JOIN subject s ON tt.subject_id = s.subject_id
															INNER JOIN rooms r ON f.room = r.room_id
														WHERE t.id = $get_student_period  AND r.room_id = $optionRoomId AND r.is_group = 0
														GROUP BY room_id, room_is_group HAVING COUNT(*) >= 1 ORDER BY c;";
															$blankRoomId = 71;
															$noRoomId = 83;
															$selectDuplicateQueryResult = mysqli_query($connect, $selectDuplicateQuery);
															if (mysqli_num_rows($selectDuplicateQueryResult) > 0) {
																echo " disabled";
																echo " style='background-color:red;color:white;'";
															}
													}
			
													?>>
												<?php echo $row1["room"]; ?>
											</option>
										<?php endwhile; ?>
									</select>
								</div>
							</div>

							<!-- Text input-->

							<div id="teacherContainer" class="form-group" style="display:none;">
								<label class="col-md-4 control-label" for="teacher_detail"> Teachers Name </label>
								<div class="col-md-5">
									<select id="teacher_detail" name="teacher_detail" class="form-control">
										<?php while ($row1 = mysqli_fetch_assoc($findAllTeachersResult)) :; ?>
											<option id="<?php echo $row1["faculty_id"]; ?>" value="<?php echo $row1["faculty_id"]; ?>" ; <?php
													?>>
												<?php echo $row1["faculty_name"]; ?></option>
										<?php endwhile; ?>
									</select>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group" align="right">
								<label class="col-md-4 control-label" for="student_name"> Books</label>
								<div class="col-md-5">
									<textarea id="book_id" class="pull-left" name="book_id" placeholder="Book" rows="4" cols="50" class="" maxlength="" style="width:100%">
									<?php
										while ($bookRow = mysqli_fetch_assoc($findAllBooksResult)) {

											if (!empty($bookRow["book_name"]) || !is_null($bookRow["book_name"])) {
												echo "\n" . $bookRow["book_name"];
											}
											
										}
									?></textarea>
								</div>
							</div>

							<!-- Button -->
							<div class="form-group" align="right">
								<label class="col-md-4 control-label" for="update"></label>
								<div class="col-md-5">
									<button type="submit" id="update" name="update" class="btn btn-success"> Update </button>
									<a href="view.php?id=<?php echo $student_id ?>" class="btn btn-primary"> Cancel </a> &nbsp; &nbsp;

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