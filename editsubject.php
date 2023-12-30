<?php

    // EDIT SUBJECT PAGE #############################################

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


        $connect = mysqli_connect($hostname,$username,$password,$database) or die(mysqli_error()); 
                mysqli_select_db($connect, "insertion") or die(mysql_error()); 
				
				if (isset($_GET['id'])) {
					$subject_id = $_GET['id'] ;
		
					$update = true;
					$query = "SELECT * FROM subject WHERE subject_id=$subject_id";
					$result = mysqli_query($connect,$query);
					while($row = mysqli_fetch_assoc($result)) {
		
					$subject_id = $row['subject_id'] ;
					$subject_type = $row ['subject_type'] ;
					$subject_description = $row['subject_description'] ;
				
					}
				}
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
    <div class="">
		<div class="jumbotron">
                Here you will Add subjects
				<form class="form-horizontal" method="POST" action="add.sub.php" enctype="multipart/form-data">
				<fieldset>

				<!-- Form Name -->
				<legend>Add Subjects</legend>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="subject_id"> Subject ID</label>  
				  <div class="col-md-5">
				  <input id="subject_id" name="subject_id" type="text" placeholder="Subject ID" value="<?php echo $subject_id; ?> " class="form-control input-md" required="">
					
				  </div>
				</div>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="subject_type"> Subject_type</label>  
				  <div class="col-md-5">
				  <input id="subject_type" name="subject_type" type="text" placeholder="subject_type" value="<?php echo $subject_type; ?> " class="form-control input-md" >
					
				  </div>
				</div>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="subject_description">Subject / Curriculum</label>  
				  <div class="col-md-5">
				  <input id="subject_description" name="subject_description" type="text" placeholder="Subject Description " value="<?php echo $subject_description; ?> " class="form-control input-md">
					
				  </div>
				</div>
				
				<!-- Button -->
			<div class="form-group" >
			  <label class="col-md-4 control-label" for="update"></label>
			  <div class="col-md-5">
			  	
				<input type="submit" id="update" name="update" class="btn btn-success" value="Update">  </input>
			 
                </div>
			  </div>
			</div>

				</fieldset>
				</form>
		</div>		
    </div>
</body>
</html>