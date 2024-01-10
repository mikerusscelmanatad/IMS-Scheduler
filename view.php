<?php
include_once("header.php");
include_once("navbar.php");
?>
<html>

<head>
    <script>
        function PrintDiv() {
            var divToPrint = document.getElementById('divToPrint');
            var popupWin = window.open('', '_blank', 'width=300,height=300');
            popupWin.document.open();
            popupWin.document.write('<html><body onload="window.print()"/>' + divToPrint.innerHTML + '</html>');
            popupWin.document.close();
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
                                    WHERE student_id='$student_id'
                            ";
                $result = mysqli_query($connect, $query);
            }


            echo "<div id='divToPrint' class='container'> 
                        <table width='100%' class='table table-primary' style='margin-bottom:20px;'>
                            <tr>
                                <th colspan='1'><center> ID NUMBER </center></th>
                                <th colspan='3'><center> STUDENTS NAME </center></th>
                                <th colspan='2'><center> COURSE </th></center>
                                <th colspan='1'><center> LEVEL </th></center>
                                <th colspan='1'><center> STATUS </th></center>
                            </tr>";

                        while ($row = mysqli_fetch_assoc($result)) {
                            $student_id = $row['student_id'];
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


                                $query = "SELECT * FROM student_subject AS s 
                                                    INNER JOIN rooms AS r ON s.room_id = r.room_id
                                                    INNER JOIN timer AS t ON s.timer_id = t.id
                                                    WHERE s.course_id=$student_course_id";
                                                    
                                $result = mysqli_query($connect, $query);
                            }

                            echo "<table width='100%' class='table table-primary'>
                                            <tr>
                                            
                                               
                                                <th style='text-align: center'> TIME </th>
                                                <th style='text-align: center'> SUBJECT </th>
                                                <th style='text-align: center'> ROOM </th>
                                                <th style='text-align: center'> TEACHER</th>
                                                <th style='text-align: center'> BOOKS </th> 
                                                <th style='text-align: center'> ACTION </th> 
                                                
                                            </tr>";
            
                                           
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                echo "<tr>";
                                                $subject_id = $row['subject_id'];
                                                $subject_description = $row['subject_description'];
                                            
                                               
                                                echo "<td style='text-align: center'>". $row['start_time'] . " - " . $row['end_time'] .     "</td>";
                                                echo "<td style='text-align: center'>" . $row['subject_description'] . "</td>";
                                                echo "<td style='text-align: center'>" . $row['room'] . "</td>";
                                                echo "<td style='text-align: center'>" . $row['faculty_id'] . "</td>";
                                                echo "<td style='text-align: center'>" . $row['book_id'] . "</td>";
                                    
                                                echo "<td style='text-align: center'>
                                                <form class='form-horizontal' method='post' action='corlist.php'>
                                                <input name='student_id' type='hidden' value='" . $row['subject_id'] . "';>
                                                <a href='view.edit.php?id=" . $row['subject_id'] . "' class='btn btn-success'>Edit</a> &nbsp;
                                                </td>";
                                                echo "</tr>";
                                               
                                            }
                                                
                                echo "</table>";

                                            echo "<a href='#' class='printBtn btn btn-success' onClick='PrintDiv()'> Print </a>&nbsp;";
                                            echo "<a href='schedulelist.php' class='btn btn-primary'>Back </a>&nbsp;";

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