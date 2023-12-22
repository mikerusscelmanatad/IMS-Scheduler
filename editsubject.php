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
                $subject_id = $_GET['id'];
            
                $subject_id = mysqli_real_escape_string($connect, $_GET['id']);
                $update = true;
                $query = "SELECT * FROM subject WHERE subject_id = '$subject_id'";
                $sql = mysqli_query($connect, $query);
                }
                
                while($row = mysqli_fetch_assoc($sql))
                    {   
                                $subject_id = $row['subject_id'];
                                $subject_code = $row['subject_code'];
                                $subject_description = $row['subject_description'];
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
    <div class="col-lg-6">
		<div class="jumbotron">
                Here you will Add subjects
				<form class="form-horizontal" method="POST" action="add.sub.php" enctype="multipart/form-data">
				<fieldset>

				<!-- Form Name -->
				<legend>Add Subjects</legend>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="roomcode">Room Number</label>  
				  <div class="col-md-5">
				  <input id="roomcode" name="roomcode" type="text" placeholder="Room Number" value="<?php echo $subject_code; ?> " class="form-control input-md" required="">
					
				  </div>
				</div>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="subj">Subject / Curriculum</label>  
				  <div class="col-md-5">
				  <input id="subj" name="subj" type="text" placeholder="Subject / Curriculum " value="<?php echo $subject_description; ?> " class="form-control input-md" required="">
					
				  </div>
				</div>
				
				<!-- Button -->
			<div class="form-group" >
			  <label class="col-md-4 control-label" for="update"></label>
			  <div class="col-md-5">
				<button id="update" name="update" class="btn btn-success"> Update </button>
			 
                </div>
			  </div>
			</div>

				</fieldset>
				</form>
		</div>		
    </div>
</body>
</html>