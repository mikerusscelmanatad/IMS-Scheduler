<?php 
// ************** add.cor.php *********************

// php select option value from database

	$hostname = "localhost";
	$username = "root";
	$password = "";
	$databaseName = "insertion";

	// connect to database
	$connect = mysqli_connect($hostname, $username, $password, $databaseName);

	$query = "SELECT * FROM `faculty`";
	$result2 = mysqli_query($connect, $query);

	$options = "";

		while($row2 = mysqli_fetch_array($result2))
		{
			$options = $options."<option>$row2[1]</option>";
		}




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
				  <label class="col-md-4 control-label" for="corcode"> ID Number </label>  
				  <div class="col-md-5">
				  <input id="corcode" name="corcode" type="text" placeholder="Base on passport" class="form-control input-md" required="">	
				  </div>
				</div>
				
			
			<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="corname">Students Name </label>  
				  <div class="col-md-5">
				  <input id="corname" name="corname" type="text" placeholder="Name here " class="form-control input-md" required="">
				  </div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<div class="form-group">
							<label class="col-md-4 control-label" for="course"> Course </label> 
						<div class="col-md-5">
						<select id="course" name="course" class="form-control"> 
                        <?php echo $options;?>
                    	</select>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<div class="form-group">
							<label class="col-md-4 control-label" for="level"> Level </label> 
						<div class="col-md-5">
						<select id="level" name="level" class="form-control"> 
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
				<button id="submit" name="submit" class="btn btn-success"> SET SCHEDULE </button>
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