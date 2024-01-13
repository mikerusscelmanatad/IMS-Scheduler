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


<div class="container">
		<div class="row" align="center">
			<div class="">
				<div class="jumbotron">
              <div class="form-group">
                <?php
                    include_once("addfaculty.php");
                  ?>	
								</div>
							</div>
              
    <div align="center">
      <?php
      include_once("faclist.php");
      ?>
      <br> <br> <br> <br>