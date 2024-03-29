<?php
include_once("header.php");
include_once("navbar.php");
require 'databaasee.php';
?>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <style>
        body {
           
            background-color: white;
            color: black;
        }

        th {
            text-align: center;
        }   

        tr {
            height: 10px;
        }

        td {
            padding-top: 5px;
            padding-left: 20px;
            padding-bottom: 5px;
            height: 20px;
        }
        .status {
            height: 25px;
            width: 140px;
            background-color: #F44336;
            color:white;
        }

    </style>
</head>
<body> 
    <div class="container">
            <?php

            $query = "SELECT * FROM student AS s
                                INNER JOIN level AS l ON s.level_id = l.level_id
                                INNER JOIN course AS c ON s.course_id = c.course_id
                            ORDER BY student_id DESC
                      ";
            $result = mysqli_query($connect, $query) or die(mysqli_error($connect));
            echo "<div class='container'>
                    <table class='table table-primary' style='width:100%;table-layout:auto;'>
                            <tr>
                                <th>ID Number </th>
                                <th>Students Name </th>
                                <th>Course</th>
                                <th>Level</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>";

            while ($row = mysqli_fetch_assoc($result)) {
                $student_id = $row['student_id'];
                $student_name = $row['student_name'];
                $student_course = $row['course_name'];
                $student_level = $row['level_name'];
                $student_status = $row['student_status'];
                $endDate = DateTime::createFromFormat('Y-m-d', $row['end_date']);
                $now = new DateTime();
                $now = DateTime::createFromFormat('Y-m-d', $now->format('Y-m-d'));
                
                echo "<tr>";

                echo "<td style= 'color:blue'> <B><center> IMS - " . htmlspecialchars($row['student_id']) . "</td>";
                if ($endDate < $now) {
                    echo "<td style='text-align: center'><center><B>".htmlspecialchars($student_name)."<div class='status'>PAST STUDENT</div></B></center></td>";
                    
                } else {
                    echo "<td style='text-align: center'><B>" . htmlspecialchars($student_name) . " </B></td>";
                }
                echo "<td style='text-align: center'>" . htmlspecialchars($row['course_name']) . "</td>";
                echo "<td style='text-align: center'>" . htmlspecialchars($row['level_name']) . "</td>";
                echo "<td style='text-align: center'>" . htmlspecialchars($row['student_status']) . "</td>";


                echo "<td style='text-align: center'>
                        <form class='form-horizontal' method='post' action='corlist.php'>
                        <input name='student_id' type='hidden' value='" . $row['student_id'] . "';>
                        <a href='view.php?id=" . $row['student_id'] . "' class='btn btn-primary'> View </a> &nbsp;
                        <a href='edit.php?id=" . $row['student_id'] . "' class='btn btn-success'>Edit</a> &nbsp;
                        <input type='submit' class='btn btn-danger' name='delete' value='Delete'>&nbsp;
                        </form></td>";
                echo "</tr>";
            }
            echo "</table>";

            // delete record
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
                echo '<script type="text/javascript">
                      alert("Successfuly Deleted");
                         location="schedulelist.php";
                           </script>';
            }
            if (isset($_POST['student_id'])) {
                $student_id = mysqli_real_escape_string($connect, $_POST['student_id']);
                $sql = mysqli_query($connect, "DELETE FROM teacher_timer WHERE student_id='$student_id'");
                $sql = mysqli_query($connect, "DELETE FROM student_subject WHERE student_id='$student_id'");
                $sql = mysqli_query($connect, "DELETE FROM student WHERE student_id='$student_id'");
                if (!$sql) {
                    echo ("Could not delete rows" . mysqli_error($connect));
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