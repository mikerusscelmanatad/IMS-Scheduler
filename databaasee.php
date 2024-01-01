<?php
$connect = mysqli_connect('localhost', 'root', '', 'insertion');

if (!$connect) {
	echo 'not connected to server';
}
if (!mysqli_select_db($connect, 'insertion')) {
	echo 'database not selected';
}
