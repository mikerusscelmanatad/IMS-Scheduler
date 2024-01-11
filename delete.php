<?php 

require 'databaasee.php';

$sql = "DELETE FROM faculty";
$result = mysqli_query($link, $sql);
if(isset($_GET['delete'])){
   
   if ($result) {
   	    echo 'deleted!';
   } else {
   	    echo "not deleted!";
   }
} echo ".";



?>