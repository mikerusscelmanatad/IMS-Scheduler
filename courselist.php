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
          
        <div align="center">
          <?php
            include_once("addfaculty.php");
          ?>


        <div align="center">
			<?php
				include_once("faclist.php");
			?>
      <br> <br> <br> <br>

          
      