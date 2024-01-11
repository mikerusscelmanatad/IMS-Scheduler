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

if (isset($_GET['id'])) {
	$student_id = $_GET['id'];

	$update = true;
	$query = "SELECT * FROM student s
						INNER JOIN course c ON s.course_id = c.course_id
						INNER JOIN level l ON l.level_id = s.level_id
						WHERE 
						s.student_id=$student_id";
	$result = mysqli_query($connect, $query);
	while ($row = mysqli_fetch_assoc($result)) {

		$student_id = $row['student_id'];
		$student_name = $row['student_name'];
		$get_student_status = $row['student_status'];
		$get_student_course = $row['course_id'];
		$get_student_level = $row['level_id'];
	}
}
//Dropdown list query *************************************
$findAllCourses = "SELECT * FROM `course`";
$findAllCoursesResult = mysqli_query($connect, $findAllCourses);
// **************************
$findAllLevel = "SELECT * FROM `level`";
$findAllLevelResult = mysqli_query($connect, $findAllLevel);
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
<div class="container container-fluid">
		
	<div class="form-group" align="center" >
		<div class="jumbotron">
					IMS ACADEMY
			<form align="center" class="form-horizontal" method="post" action="add.cor.php">
				<fieldset>

							<!-- Form Name -->
							<legend><h3> STUDENT INFORMATION </h3>  </legend> <br> <br>



							<div class="form-group">
								<input type="radio" id="student_status" name="student_status" value="OLD STUDENT" <?php
									if ("OLD STUDENT" === $get_student_status) {
										echo "checked";
									}
									?> />
								<label for="student_status">Old Student</label> &nbsp; &nbsp;
								
								<input type="radio" id="student_status" name="student_status" value="NEW STUDENT" <?php
									if ("NEW STUDENT" === $get_student_status) {
										echo "checked";
									}
									?> />
								<label for="student_status">New Student</label>
							</div>


							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="student_name">Students Name </label>
								<div class="col-md-5">
									<input readonly id="student_id" name="student_id" type="hidden"  value="<?php echo $student_id; ?>" class="form-control input-md" required="" />
									<input id="student_name" name="student_name" type="text" placeholder="Name here" value="<?php echo htmlspecialchars($student_name); ?>" class="form-control input-md" required=""/>
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
								<!-- Text input-->
								
							<div class="form-group">
								<label class="col-md-4 control-label" for="student_level"> Level </label>
									<div class="col-md-5">
										<select id="student_level" name="student_level" class="form-control">

										<?php while ($row1 = mysqli_fetch_assoc($findAllLevelResult)) :; ?>
										<option id="<?php echo $row1["level_id"]; ?>" value="<?php echo $row1["level_id"]; ?>" <?php
											if ($row1["level_id"] == $get_student_level) {
													echo "selected";
													}
													?>>
										<?php echo $row1["level_name"]; ?></option>
										<?php endwhile; ?>
										</select>
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
</div>
<?php

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "footer.php";
include_once("footer.php");
include_once("navbar.php");
?>