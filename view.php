<?php
include_once("header.php");
include_once("navbar.php");
?>
<html>

<head>
    <script>
        function PrintDiv() {
            var divToPrint = document.getElementById('divToPrint');
            $('.action').hide();
            var popupWin = window.open('', '_blank', 'width=300,height=300');
            popupWin.document.open();
            popupWin.document.write('<html><body onload="window.print()"/>' + divToPrint.innerHTML + '</html>');
            popupWin.document.close();
            $('.action').show();
        }
    </script>
</head>

<body>
    <div id="divToPrint" align="center">
        <fieldset>
            <legend><h2>SCHEDULE</h2></legend>
            <?php
            // your database connection
            $host       = "localhost";
            $username   = "root";
            $password   = "";
            $database   = "insertion";

            // select database
            $connect = mysqli_connect($host, $username, $password, $database) or die(mysqli_error($connect));
                        mysqli_select_db($connect, "insertion") or die(mysqli_error($connect));

            if (isset($_GET['id'])) {
                $student_id = $_GET['id'];

                $query = "SELECT * FROM student AS s 
                    INNER JOIN level AS l ON s.level_id = l.level_id 
                    INNER JOIN course AS c ON s.course_id = c.course_id 
                WHERE student_id='$student_id'";
                $result = mysqli_query($connect, $query);
            }


            echo "<div id='divToPrint' class='container'> 
                        <table style='border:1px solid gray;' width='100%' class='table table-primary' style='margin-bottom:20px;'>
                            <tr>
                                <th colspan='1'><center> ID NUMBER </center></th>
                                <th colspan='3'><center> STUDENTS NAME </center></th>
                                <th colspan='2'><center> COURSE </th></center>
                                <th colspan='1'><center> LEVEL </th></center>
                                <th colspan='1'><center> STATUS </th></center>
                            </tr>";

                        while ($row = mysqli_fetch_assoc($result)) {
                            $student_name = $row['student_name'];
                            $student_course_id = $row['course_id'];
                            $student_level_id = $row['level_id'];
                            $student_status = $row['student_status'];

                            echo "<td style= 'color:blue' colspan='1'> <B> <center> IMS - " . $row['student_id'] . "</B> </td>";
                            echo "<td colspan='3' style='text-align: center'> <B>" . $row['student_name'] . "</B> </td>";
                            echo "<td colspan='2'> <center>" . $row['course_name'] . " </td>";
                            echo "<td colspan='1'> <center>" . $row['level_name'] . " </td>";
                            echo "<td colspan='1'> <center>" . $row['student_status'] . " </td>";
                        }
                        echo "</table>";

                            // select database
                            $connect = mysqli_connect($host, $username, $password, $database) or die(mysqli_error($connect));
                            mysqli_select_db($connect, "insertion") or die(mysqli_error($connect));

                            if (isset($_GET['id'])) {
                                $subject_id = mysqli_real_escape_string($connect, $_GET['id']);

                                $query = "SELECT * FROM `student_subject` ss 
                                    INNER JOIN subject s ON s.subject_id = ss.subject_id 
                                    INNER JOIN student st ON ss.student_id = st.student_id 
                                    INNER JOIN level AS l ON st.level_id = l.level_id 
                                    INNER JOIN course AS c ON st.course_id = c.course_id 
                                    INNER JOIN rooms AS r ON ss.room_id = r.room_id
                                    INNER JOIN timer AS t ON ss.timer_id = t.id
                                WHERE ss.student_id = $student_id;";
                                $result = mysqli_query($connect, $query);
                                $countResultFromStudentSubject = mysqli_num_rows($result);
                                
                                if ($countResultFromStudentSubject <= 0) {
                                    $query = "SELECT * FROM subject AS s 
                                    INNER JOIN rooms AS r ON s.room_id = r.room_id
                                    INNER JOIN timer AS t ON s.timer_id = t.id
                                    WHERE s.course_id=$student_course_id";
                                    
                                    $result = mysqli_query($connect, $query);
                                }
                            }

                            echo "<table style='border:1px solid gray;' width='100%' height='40%' class='studentDetailsTable table table-primary' >
                                            <tr>
                                            
                                                <th style='border:1px solid gray;'><center> TIME </th>
                                                <th style='border:1px solid gray;'><center> SUBJECT </th>
                                                <th style='border:1px solid gray;'><center> ROOM </th>
                                                <th style='border:1px solid gray;'><center> TEACHER</th>
                                                <th style='border:1px solid gray;'><center> BOOKS </th> 
                                                <th class='action'  style='border:1px solid gray;'><center> ACTION </th> 
                                                
                                            </tr>";
            
                                           
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                echo "<tr>";
                                                $subject_id = $row['subject_id'];
                                                $subject_description = $row['subject_description'];
                                            
                                               
                                                echo "<td style='border:1px solid gray;'><center>". $row['start_time'] . " - " . $row['end_time'] .     "</center> </td>";
                                                echo "<td style='border:1px solid gray;'><center>" . $row['subject_description'] . "</td>";
                                                echo "<td  style='border:1px solid gray;'><center>". $row['room'] . "</td>";


                                                if (empty($row['teachers_name']) || is_null($row['teachers_name'])) {
                                                    echo "<td  style='border:1px solid gray;'><center></td>";
                                                } else {
                                                    echo "<td  style='border:1px solid gray;'><center>" . $row['teachers_name'] . "</td>";
                                                }
                                                if (empty($row['books']) || is_null($row['books'])) {
                                                    echo "<td style='border:1px solid gray;'><center></td>";
                                                } else {
                                                    echo"<td style='border:1px solid gray;'><center>" . $row['books'] . "</td>";
                                                }
                                               
                                    
                                                echo "<td style='border:1px solid gray;'><center>";
                                                echo "<form class='action form-horizontal' method='post' action='view.edit.php' enctype='multipart/form-data'>";
                                                    echo "<input name='student_id' type='hidden' value=$student_id></input>";
                                                    echo "<input name='subject_id' type='hidden' value=$row[subject_id]></input>";
                                                    echo "<button type='submit' class='btn btn-success'>Edit</button>&nbsp;";
                                                    // echo "<a href='view.edit.php?id=" . $row['subject_id'] . "' class='action btn btn-success'>Edit</a> &nbsp;";
                                                echo "</td>";
                                                echo "</tr>";
                                               echo "</form>";
                                            }
                                                
                                echo "</table>";

                                            echo "<a href='#' class='action printBtn btn btn-success' onClick='PrintDiv()'> Print </a>&nbsp;";
                                            echo "<a href='schedulelist.php' class='action btn btn-primary'>Back </a>&nbsp;";

            // delete record
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
                echo '<script type="text/javascript">
                                        alert("Schedule Successfuly Deleted");
                                            location="schedulelist.php";
                                </script>';
            }
            if (isset($_POST['id'])) {
                $id = mysqli_real_escape_string($connect, $_POST['id']);
                $sql = mysqli_query($connect, "DELETE FROM addtable WHERE id='$id'");
                if (!$sql) {
                    echo ("Could not delete rows" . mysqli_error($connect));
                }
            }

            ?>
        </fieldset>
</body>

</html>

<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "footer.php";
include_once("footer.php");

?>