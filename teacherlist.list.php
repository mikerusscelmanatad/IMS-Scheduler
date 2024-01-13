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

    <br>
                
        <legend class="text-center"> TEACHERS' SCHEDULE </legend>

        <?php
            include_once("teacherlist.php");
        ?>
</body>

</html>