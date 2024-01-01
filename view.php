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
                                    
                                    
                                $query = "SELECT * FROM student AS s 
                                        INNER JOIN level AS l ON s.level_id = l.level_id 
                                        INNER JOIN course AS c ON s.course_id = c.course_id 
                                        WHERE student_id='$student_id'
                                ";
                                $result = mysqli_query($connect, $query);   

                       

                                echo "<div class='container'> <table width='50' class='table table-bordered' >
                                    <tr>
                                    <th colspan='1'><center> ID NUMBER </center></th>
                                    <th colspan='3'><center> STUDENTS NAME </center></th>
                                    <th colspan='2'><center> COURSE </th></center>
                                    <th colspan='1'><center> LEVEL </th></center>
                                    <th colspan='1'><center> STATUS </th></center>
                                </tr>"; 

                            }
                          
                                while($row = mysqli_fetch_assoc($result))
                                {   
                                    $student_id = $row['student_id'];
                                    $student_name = $row['student_name'];
                                    $student_course_id = $row['course_id'];
                                    $student_level_id = $row['level_id'];
                                    $student_status = $row['student_status'];
                           

                                echo "<td colspan='1'> <center>". $row['student_id'] . " </td>";
                                echo "<td colspan='3'> <center>" . $row['student_name'] . " </td>";
                                echo "<td colspan='2'> <center>" . $row['course_name'] . " </td>";
                                echo "<td colspan='1'> <center>" . $row['level_name'] . " </td>";
                                echo "<td colspan='1'> <center>" . $row['student_status'] . " </td>
                    
                               
                                </form> </center>
                                </td>"; 
                            }
                             
                             // select database
                        $connect = mysqli_connect($host,$username,$password,$database) or die(mysqli_error()); 
                        mysqli_select_db($connect, "insertion") or die(mysql_error()); 

                            if (isset($_GET['id'])) {
                                $subject_id = mysqli_real_escape_string($connect, $_GET['id']);
                                
                                
                            $query = "SELECT * FROM subject AS s 
                                    INNER JOIN rooms AS r ON s.room_id = r.room_id
                                    INNER JOIN timer AS t ON s.timer_id = t.id
                                WHERE s.course_id=$student_course_id";
                            $result = mysqli_query($connect, $query);   


                            echo "<div class='container'> <table width='50' class='table table-bordered' >
                                    <tr>
                                          <center>  <th> PERIOD</th>
                                          <center> <th> COURSE </th>
                                          <center> <th> SUBJECT </th>
                                          <center><th> ROOM </th>
                                          <center><th colspan ='2'> TEACHER</th>
                                          <center> <th colspan='3'> BOOKS </th> 
                                          <center> <th colspan='3'> ACTION </th> 
                                            
                                        </tr>"; 
                                
                            }

                                while($row = mysqli_fetch_assoc($result))
                                {   
                                    $student_id = $row['subject_id'];
                                    $student_name = $row['subject_type'];
                                    $student_course = $row['subject_description'];
                                    
                               
                                
                                    echo "<td>" .$row['start_time']. " - ". $row['end_time']."</td>";
                                    echo "<td>".$row['subject_type']. "</td>";
                                    echo "<td>".$row['subject_description']. "</td>";
                                    echo "<td>".$row['room']. "</td>";
                                    echo "<td> Teacher's Name Here </td>";
                                    echo "<td align='center' colspan='2'>" . $row['subject_description'] . "</td>";

                                                    
                                    
        
                                    // </form> </center>
                                    // </td>"; 
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
