<?php
include_once("header.php");
include_once("navbar.php");
?>
<html>

<head>
    <script>
        function PrintDiv() {
            var divToPrint = document.getElementById('divToPrint');
            var htmlToPrint = '' +
                '<style type="text/css">' +
                    'table th, table td {' +
                    'border:1px solid #000;' +
                    'padding-bottom:0;' +
                    'padding:0;' +
                    '}' +
                '</style>';
            $('.action').hide();
            htmlToPrint += divToPrint.outerHTML;
            var popupWin = window.open('', '_blank', 'width=400,height=300');
            popupWin.document.open();
            popupWin.document.write('<html><body onload="window.print()"/>' + htmlToPrint + '</html>');
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
            require 'databaasee.php';

            if (isset($_GET['id'])) {
                $student_id = $_GET['id'];

                $query = "SELECT *, s.level_id as student_level_id FROM student AS s 
                    INNER JOIN level AS l ON s.level_id = l.level_id 
                    INNER JOIN course AS c ON s.course_id = c.course_id 
                WHERE student_id='$student_id'";
                $result = mysqli_query($connect, $query);
            }


            echo "<div id='divToPrint' class='container'> 
                        <table class='table table-primary' style='width=70%;' table-layout:auto;'>
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
                            $student_level_id = $row['student_level_id'];
                            $student_status = $row['student_status'];

                            echo "<td style= 'color:blue' colspan='1'> <B> <center> IMS - " . $row['student_id'] . "</B> </td>";
                            echo "<td colspan='3' style='text-align: center'> <B>" . htmlspecialchars($row['student_name']) . "</B> </td>";
                            echo "<td colspan='2'> <center>" . $row['course_name'] . " </td>";
                            echo "<td colspan='1'> <center>" . $row['level_name'] . " </td>";
                            echo "<td colspan='1'> <center>" . $row['student_status'] . " </td>";
                        }
                        echo "</table>";

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

                            echo "<table width='100%' class='studentDetailsTable table table-primary' style='table-layout:auto;'>
                                            <tr>
                                            
                                               
                                                <th style='text-align: center'> TIME </th>
                                                <th style='text-align: center'> SUBJECT </th>
                                                <th style='text-align: center'> ROOM </th>
                                                <th style='text-align: center'> TEACHER</th>
                                                <th style='text-align: center'> BOOKS </th> 
                                                <th class='action' style='text-align: center'> ACTION </th> 
                                                
                                            </tr>";
            
                                           
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                echo "<tr>";
                                                $subject_id = $row['subject_id'];
                                                $subject_description = $row['subject_description'];
                                            
                                               
                                                echo "<td style='text-align: center'>". $row['start_time'] . " - " . $row['end_time'] .     "</td>";
                                                echo "<td style='text-align: center'>" . $row['subject_description'] . "</td>";
                                                echo "<td style='text-align: center'>" . $row['room'] . "</td>";


                                                if (empty($row['teachers_name']) || is_null($row['teachers_name'])) {
                                                    echo "<td style='text-align: center'></td>";
                                                } else {
                                                    echo "<td style='text-align: center'>" . htmlspecialchars($row['teachers_name']) . "</td>";
                                                }
                                                if (empty($row['books']) || is_null($row['books'])) {
                                                    echo "<td style='text-align: center'></td>";
                                                } else {
                                                    echo "<td style='text-align: center'>" . htmlspecialchars($row['books']) . "</td>";
                                                }
                                               
                                    
                                                echo "<td class='action' style='text-align: center'>";
                                                echo "<form class='action form-horizontal' method='post' action='view.php' enctype='multipart/form-data'>";
                                                    echo "<input name='student_id' type='hidden' value=$student_id></input>";
                                                    echo "<input name='subject_id' type='hidden' value=$row[subject_id]></input>";
                                                    echo "<input name='course_id' type='hidden' value=$student_course_id></input>";
                                                    echo "<input name='level_id' type='hidden' value=$student_level_id></input>";
                                                    if ($subject_description !== "LUNCH") {
                                                        
                                                        echo "<a href='view.edit.php?student_id=" . $student_id . "&subject_id=" . $row['subject_id'] . "&course_id=" . $student_course_id . "&level_id=" . $student_level_id . "' class='btn btn-success'>Edit</a> &nbsp;";
                                                        echo "<a href='view.php?action=delete&id=" . $student_id . "&subject_id=" . $row['subject_id'] . "' class='action btn btn-danger'>Delete</a>&nbsp;";
                                                        // echo "<button type='submit' class='btn btn-danger'>Delete</button>&nbsp;";
                                                    }
                                                    
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
                                            location="view.php";
                                </script>';
            }
            if (isset($_GET['action']) == "delete") {
                    $subject_id = mysqli_real_escape_string($connect, $_GET['subject_id']);
                    $student_id = mysqli_real_escape_string($connect, $_GET['id']);

                    $sql = mysqli_query($connect, "DELETE FROM student_subject WHERE subject_id=$subject_id AND student_id=$student_id;");

                    $sql = mysqli_query($connect, "DELETE FROM teacher_timer WHERE subject_id=$subject_id AND student_id=$student_id;");
                    if (!$sql) {
                        echo ("Could not delete rows" . mysqli_error($connect));
                    }

                    echo '<script type="text/javascript">
                                        alert("Schedule Successfuly Deleted");
                                            location="view.php?id='.$student_id.'";
                                </script>';
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