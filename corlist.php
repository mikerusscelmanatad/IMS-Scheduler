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

                    $query = "SELECT * FROM course ";
                    $result = mysqli_query($connect, $query) or die(mysqli_error());
                    echo "<div class='container'><table width='' class='table table-bordered' border='1' >
                            <tr>
                                <th>ID Number </th>
                                <th>Students Name </th>
                                <th>Course</th>
                                <th>Level</th>
                                <th>Action</th>
                            </tr>";
                        while($row = mysqli_fetch_assoc($result))
                        {
                            $course_id = $row['course_id'];
                            $course_code = $row['course_code'];
                            $course_name = $row['course_name'];
                            $course = $row['course'];
                            $level = $row['level'];


                        echo "<tr>";
                        
                        echo "<td>" . $row['course_code'] . "</td>";
                        echo "<td><B> " . $row['course_name'] . " </B></td>";
                        echo "<td>" . $row['course'] . "</td>";
                        echo "<td>" . $row['level'] . "</td>";

                        echo "<td>
                        <form class='form-horizontal' method='post' action='corlist.php'>
                        <input name='course_id' type='hidden' value='".$row['course_id']."';>
                        <a href='view.php?id=".$row['course_id']."' class='btn btn-primary'> View </a> &nbsp;
                        <a href='edit.php?id=".$row['course_id']."' class='btn btn-success'>Edit</a> &nbsp;
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
        if(isset($_POST['course_id']))
    {
        $course_id = mysqli_real_escape_string($connect, $_POST['course_id']);
        $sql = mysqli_query($connect, "DELETE FROM course WHERE course_id='$course_id'");
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
