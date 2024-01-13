<?php

// ******************** corlist.php 

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "header.php";
include_once("header.php");
include_once("navbar.php");
require 'databaasee.php';
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
        <a href="addteacher.php" class="btn btn-primary"><span class="glyphicon glyphicon-plus-sign"></span>  Add Teacher  </a>
        <br>
                    
            <legend class="text-center"> <h2>TEACHERS SCHEDULE </legend> </h2>
        </div>
            <?php
                include_once("teacherlist.php");
            ?>
   
</body>

</html>