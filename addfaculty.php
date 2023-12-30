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
    <div class="">
		<div class="jumbotron">
                Settings
				<form class="form-horizontal" method= "post" action="add.fac.php">
				<fieldset>

				<!-- Form Name -->
				<legend> Input Courses </legend>
				
				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="falname"> Input Course </label>  
				  <div class="col-md-5">
				  <input id="falname" name="falname" type="text" placeholder="" class="form-control input-md" required="">
					
				  </div>
				</div>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="Designation">Designation</label>  
				  <div class="col-md-5">
				  <input id="Designation" name="Designation" type="text" placeholder="" class="form-control input-md" required="">
				  <span class="help-block"></span>  
				  </div>
				</div>
				
				<!-- Button -->
				<div class="form-group"  align="right">
				  <label class="col-md-4 control-label" for="submit"></label>
				  <div class="col-md-5">
					<button id="submit" name="submit" class="btn btn-primary"> Add Course </button>
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