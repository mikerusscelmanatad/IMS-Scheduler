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

                                    if (isset($_GET['id'])) {
                                        $student_id = mysqli_real_escape_string($connect, $_GET['id']);
                                    

                                $query = "SELECT * FROM `studyload` WHERE student_id='$student_id'";
                                $result = mysqli_query($connect, $query);   


                            }

                                echo "<div class='container'> <table width='50' class='table table-bordered' >
                                    <tr>
                                    <th colspan='1'><center> ID NUMBER </center></th>
                                    <th colspan='3'><center> STUDENTS NAME </center></th>
                                    <th colspan='2'><center> COURSE </th></center>
                                    <th colspan='1'><center> LEVEL </th></center>
                                </tr>"; 

                                while($row = mysqli_fetch_assoc($result))
                                {   
                                    $student_id = $row['student_id'];
                                    $student_name = $row['student_name'];
                                    $student_course = $row['student_course'];
                                    $student_level = $row['student_level'];
                                  
                                    echo "<tr>";
                                    
                                     echo "<td align='center' colspan='1'> 1 </td>";
                                     echo "<td align='center' colspan='3'> 1 </td>";
                                     echo "<td align='center' colspan='2'>" . $row['course'] . "</td>";
                                     echo "<td align='center' colspan='1'>" . $row['level'] . "</td>";   
                                     "</tr>";
                                       
                                    echo "<tr>
                   
                                            <th>Curriculum</th>
                                            <th>Room Number</th>
                                            <th>Teacher</th>
                                            <th colspan ='2'><center> Start / End </th>
                                            <th colspan='3'><center>Note</th> </center>
                                        </tr>";
                                   
                                    
                                 
                                    
                                   
                                    echo "<td> adadwwad </td>";
                                    echo "<td> awdawdawdawd </td>";
                                    echo "<td>wdqqwdqwdqw </td>";
                                    echo "<td align='center' colspan='2'>" . $row['level'] . "</td>";
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
