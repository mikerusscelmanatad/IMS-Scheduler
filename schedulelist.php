<?php

// ******************** corlist.php 

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
    <div align="center">
        <legend> Students </legend>
        </fieldset>
        <?php
        include_once("corlist.php");
        ?>