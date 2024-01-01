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


	<br>
	<div align="center">
		<legend>List of Subjects</legend>
		</fieldset>
		<?php
		include_once("sublist.php");
		?>
		<br>
		<br>
		<br>
		<br>
		<div align="center">
			<legend>List of rooms</legend>
			</fieldset>
			<?php
			include_once("roomlist.php");
			?>
			<br>
			<br>
			<br>
			<br>
			<div align="center">
				<legend>List of class time</legend>
				</fieldset>
				<?php
				include_once("timelist.php");
				?>


				<?php
				include_once("footer.php");
				include_once("navbar.php");
				?>