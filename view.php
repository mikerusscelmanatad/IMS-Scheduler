<?php
   include_once("header.php");
   include_once("navbar.php");
?>
<html>
    <head>

    </head>
        <body><br>
        <div align="center">
    <fieldset>
                    <legend>Schedule</legend>
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
                        $connect = mysqli_connect($host,$username,$password,$database) or die(mysqli_error()); 
                            mysqli_select_db($connect, "insertion") or die(mysql_error()); 

                                $course_id = '';  // Define a default value

                                    if (isset($_GET['id'])) {
                                        $course_id = mysqli_real_escape_string($connect, $_GET['id']);
                                    }

                                $query = "SELECT * FROM `course` WHERE course_id='$course_id'";
                                $result = mysqli_query($connect, $query);
                                    
                                echo "<div class='container'> <table width='50' class='table table-bordered' >
                                    <tr>
                                    <th colspan='1'><center> ID NUMBER </center></th>
                                    <th colspan='3'><center> STUDENTS NAME </center></th>
                                    <th colspan='2'><center>Course</th></center>
                                    <th colspan='1'><center>Level</th></center>
                                </tr>"; 

                                while($row = mysqli_fetch_assoc($result))
                                {   
                                    $course_id = $row['course_id'];
                                    $course_code = $row['course_code'];
                                    $course_name = $row['course_name'];
                                    $course = $row['course'];
                                    $level = $row['level'];

                                    echo "<tr>";
                                    
                                     echo "<td align='center' colspan='1'>" . $row['course_code'] . "</td>";
                                     echo "<td align='center' colspan='3'><B>" . $row['course_name'] . "</B></td>";
                                     echo "<td align='center' colspan='2'>" . $row['course'] . "</td>";
                                     echo "<td align='center' colspan='1'>" . $row['level'] . "</td>";   
                                     "</tr>";
                                       
                                    echo "<tr>
                   
                                            <th>Curriculum</th>
                                            <th>Room Number</th>
                                            <th>Teacher</th>
                                            <th> Start / End </th>
                                            <th colspan='3'><center>Note</th> </center>
                                        </tr>";
                                   
                                    
                                 
                                    
                                   
                                    echo "<td>" . $row['level'] . "</td>";
                                    echo "<td>" . $row['level'] . "</td>";
                                    echo "<td>" . $row['level'] . "</td>";
                                    echo "<td colspan='3'>" . $row['level'] . "</td>";
                                    echo "<td> <center>
                                    <form class='form-horizontal' method='post' action='corlist.php'>
                                    <input name='course_id' type='hidden' value='".$row['course_id']."';>
    
                                    </form> </center>
                                    </td>"; 
                                    echo "</tr>";
                                    }
                                echo "</table>";

                        echo "</td> 
                            <a href='schedulelist.php' class='btn btn-primary'> Print </a>&nbsp;
                             <a href='schedulelist.php' class='btn btn-success'> Go Back </a>&nbsp;
                    </tr>";

                
                    


                    // delete record
                    if($_SERVER['REQUEST_METHOD'] == "POST")
                        {
                            echo '<script type="text/javascript">
                                        alert("Schedule Successfuly Deleted");
                                            location="schedulelist.php";
                                            </script>';
                        }
                        if(isset($_POST['id']))
                        {
                        $id = mysqli_real_escape_string($connect, $_POST['id']);
                        $sql = mysqli_query($connect, "DELETE FROM addtable WHERE id='$id'");
                        if(!$sql)
                        {
                            echo ("Could not delete rows" .mysqli_error($connect));
                        }
                        
                }
                
            ?>
    </fieldset>
        </form>
        </div>
        </div>
        </div>
</html>
	
<?php
   $path = $_SERVER['DOCUMENT_ROOT'];
   $path .= "footer.php";
   include_once("footer.php");

?>
