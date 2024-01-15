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
					Settings
					<form class="form-horizontal" method="post" action="add.fac.php">
						<fieldset>

							<!-- Form Name -->
							<legend> Add Teacher </legend>

							<div class="form-group">
								<div class="col-md-5">
									<input readonly id="faculty_id" name="faculty_id" type="hidden" value="<?php echo $faculty_id; ?>" class="form-control input-md" required="" />
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-6 control-label" for="faculty_name"> Input Name of Teacher</label>
								<div class="col-md-5">
									<input id="faculty_name" name="faculty_name" type="text" placeholder="" class="form-control input-md" autocomplete="off" required="">

								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-6 control-label" for="designation">Designation</label>
								<div class="col-md-5">
									<input id="designation" name="designation" type="text" placeholder="" class="form-control input-md" autocomplete="off" required="">
									<span class="help-block"></span>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-6 control-label" for="room"> Room Number </label>
								<div class="col-md-5">
									<input id="room" name="room" type="text" placeholder="" class="form-control input-md" autocomplete="off" required="">
									<span class="help-block"></span>
								</div>
							</div>

							<!-- Button -->
							<div class="form-group" align="right">
								<label class="col-md-5 control-label" for="submit"></label>
								<div class="col-md-6">
									<button id="submit" name="submit" class="btn btn-primary"> Add Teacher </button>
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