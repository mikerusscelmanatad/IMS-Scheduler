
<?php
   include_once("header.php");
   include_once("navbar.php");
?>
<html>
<head>
<style>


body {
    background-image: url();
    background-color: white;
}
th {
    text-align: center;
}
tr {
     height: 30px;
}
td {
    padding-top: 5px;
    padding-left: 20px; 
    padding-bottom: 5px;    
    height: 20px;
}


</body>
</style>
</head>
<body><br>
<div class="container">

<body>
    <?php
     echo "<tr>
            <td>";
               // your database connection
               $host       = "localhost"; 
               $username   = "root"; 
               $password   = "";
               $database   = "insertion"; 
               
               // select database
              $connect = mysqli_connect($host, $username, $password, $database) or die(mysqli_error()); 
               mysqli_select_db($connect, "insertion") or die(mysqli_error()); 

                    $query = "SELECT * FROM student  ORDER BY student_id ASC";
                    $result = mysqli_query($connect, $query) or die(mysqli_error());
                    echo "<div class='container'><table width='' class='table table-bordered' border='1' >
                            <tr>
                                <th>ID Number </th>
                                <th>Students Name </th>
                                <th>Course</th>
                                <th>Level</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>";

                        while($row = mysqli_fetch_assoc($result))
                        {
                            $student_id = $row['student_id'];
                            $student_name = $row['student_name'];
                            $student_course = $row['student_course'];
                            $student_level = $row['student_level'];
                            $student_status = $row['student_status'];


                        echo "<tr>";
                        
                        echo "<td><center>" . $row['student_id'] . "</td>";
                        echo "<td><B><center> " . $row['student_name'] . " </B></td>";
                        echo "<td><center>" . $row['student_course'] . "</td>";
                        echo "<td><center>" . $row['student_level'] . "</td>";
                        echo "<td><center>" . $row['student_status'] . "</td>";

                        
                        echo "<td>
                        <form class='form-horizontal' method='post' action='corlist.php'>
                        <input name='student_id' type='hidden' value='".$row['student_id']."';>
                        <a href='view.php?id=".$row['student_id']."' class='btn btn-primary'> View </a> &nbsp;
                        <a href='edit.php?id=".$row['student_id']."' class='btn btn-success'>Edit</a> &nbsp;
                        <input type='submit' class='btn btn-danger' name='delete' value='Delete'>&nbsp;
                        </form></td>"; 
                        echo "</tr>";
                        }
                    echo "</table>";

            echo "</td>           
        </tr>";
     

       // delete record
    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
        echo '<script type="text/javascript">
                      alert("Schedule Successfuly Deleted");
                         location="schedulelist.php";
                           </script>';
    }
        if(isset($_POST['student_id']))
    {
        $student_id = mysqli_real_escape_string($connect, $_POST['student_id']);
        $sql = mysqli_query($connect, "DELETE FROM student WHERE student_id='$student_id'");
        if(!$sql)
        {
            echo ("Could not delete rows" .mysql_error($connect));
        }
    }


    ?>
</fieldset>
</form>
</div>
</div>
</div>
</div>
    </body>
    </html>
    
<?php
   include_once("footer.php");

?>
