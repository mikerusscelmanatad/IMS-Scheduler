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
                                    
                                    
                                $query = "SELECT * FROM `student` WHERE student_id='$student_id'";
                                $result = mysqli_query($connect, $query);   

                       

                                echo "<div class='container'> <table width='50' class='table table-bordered' >
                                    <tr>
                                    <th colspan='1'><center> ID NUMBER </center></th>
                                    <th colspan='3'><center> STUDENTS NAME </center></th>
                                    <th colspan='2'><center> COURSE </th></center>
                                    <th colspan='1'><center> LEVEL </th></center>
                                </tr>"; 

                            }
                          
                                while($row = mysqli_fetch_assoc($result))
                                {   
                                    $student_id = $row['student_id'];
                                    $student_name = $row['student_name'];
                                    $student_course = $row['student_course'];
                                    $student_level = $row['student_level'];
                           

                                echo "<td colspan='1'> <center>". $row['student_id'] . " </td>";
                                echo "<td colspan='3'> <center>" . $row['student_name'] . " </td>";
                                echo "<td colspan='2'> <center>" . $row['student_course'] . " </td>";
                                echo "<td colspan='1'> <center>" . $row['student_level'] . " </td>
                    
                               
                                </form> </center>
                                </td>"; 
                            }
                             
                             // select database
                        $connect = mysqli_connect($host,$username,$password,$database) or die(mysqli_error()); 
                        mysqli_select_db($connect, "insertion") or die(mysql_error()); 

                            if (isset($_GET['id'])) {
                                $subject_id = mysqli_real_escape_string($connect, $_GET['id']);
                                
                                
                            $query = "SELECT * FROM student_subject AS studSub
                                    INNER JOIN subject AS sub ON
                                    studSub.subject_id = sub.subject_id
                                    INNER JOIN rooms AS r ON
                                    r.room_id = sub.room_id
                                    INNER JOIN timer AS t ON
                                    t.id = sub.timer_id WHERE studSub.student_id='$student_id'";
                            $result = mysqli_query($connect, $query);   


                            echo "<div class='container'> <table width='50' class='table table-bordered' >
                                    <tr>
                                            <th> PERIOD</th>
                                            <th> SUBJECT TYPE </th>
                                            <th> SUBJECT </th>
                                            <th> ROOM </th>
                                            <th colspan ='2'> TEACHER</th>
                                            <th colspan='3' NOTED</th> </center>
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
                                    echo "<td>wdqqwdqwdqw </td>";
                                    echo "<td align='center' colspan='2'>" . $row['subject_description'] . "</td>";
                                    echo "<td> <center>
                                    <form class='form-horizontal' method='post' action='corlist.php'>
                                    <input name='subject_id' type='hidden' value='".$row['subject_id']."';>
        
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
