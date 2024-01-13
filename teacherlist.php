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
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            
        });
    </script>
</head>

<body>
    <div class="" style="margin:20px">
        <?php

                $query = "SELECT f.room AS teacher_room_name, 
                f.faculty_name, 
                t.id as timer_detail,
                CONCAT(student_name,' ( ', start_time , ' - ' ,end_time, ' ) ' ) AS schedule 
                FROM `teacher_timer` tt
                    INNER JOIN faculty f ON f.faculty_id = tt.teacher_id
                    LEFT JOIN timer t ON t.id = tt.timer_id
                    INNER JOIN student s ON s.student_id = tt.student_id
                    INNER JOIN subject sub ON sub.subject_id = tt.subject_id
                WHERE f.faculty_id <> 1
                ORDER BY f.faculty_id ASC, t.id ASC;
                            ";
                $result = mysqli_query($connect, $query) or die(mysqli_error($connect));

                $roomIdArray = array();
                $selectAllRoomsQuery = "SELECT * FROM rooms WHERE room_id NOT IN (71,83);";
                $selectAllRoomsQueryResult = mysqli_query($connect, $selectAllRoomsQuery) or die(mysqli_error($connect));
                echo "<div class=''>";
                echo "<table class='teacherTable table table-primary' style='width:100%;table-layout:auto;'>";
                echo "<tr>";
                echo "<td align='center' height='50'>";
                while ($selectAllRoomsRow = mysqli_fetch_assoc($selectAllRoomsQueryResult)) {
                    $roomName = $selectAllRoomsRow["room"];
                    $roomId = $selectAllRoomsRow["room_id"];
                    echo "<td align='center' height='50' width='100'><br>
                        <b>$roomName</b></br>
                    </td>";
                    $roomIdArray[] = $roomName;
                }
                echo "</tr>";

                echo "<tr>
                    <td align='center' height='50'>
                        <b>08:30 - 09:15</b>";
                echo "</td>";
                $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                 FROM teacher_timer tt 
                    INNER JOIN timer t ON tt.timer_id = t.id
                    INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                    INNER JOIN rooms r ON r.room = f.room
                    INNER JOIN student s ON tt.student_id = s.student_id
                WHERE tt.timer_id = 3;";
                $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                $roomIdArrayFromDb = array();
                while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                    $selectRoom = $selectAllTeacherRow["room"];
                    $roomIdArrayFromDb[] = $selectRoom;
                }
                foreach($roomIdArray as $arr) {
                    if (in_array($arr, $roomIdArrayFromDb)) {
                        echo "<td align='center' height='50' style='background-color:red;'>
                             <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:10px;'>BOOKED
                                </div>
                            </b>
                        </td>";
                    } else {
                        echo "<td align='center' height='50' style='background-color:skyblue;'>
                                    <b><div style='
                                        height: 80px;
                                        width: 80px;
                                        background-color: 8BC34A;
                                        color: white;
                                        display: inline-block;
                                        padding:0px;'>AVAILABLE
                                    </div>
                                    </b>
                                </td>";
                    }
                }
                echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>09:25 - 10:10</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 4;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                    <b><div style='
                                        height: 80px;
                                        width: 80px;
                                        background-color: 8BC34A;
                                        color: white;
                                        display: inline-block;
                                        padding:0px;'>AVAILABLE
                                    </div>
                                    </b>
                                </td>";
                            }
                        }
                echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>10:20 - 11:05</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 6;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: 8BC34A;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>AVAILABLE
                                </div>
                                </b>
                            </td>";
                            }
                        }
                echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>11:15 - 12:00</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 7;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: 8BC34A;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>AVAILABLE
                                </div>
                                </b>
                            </td>";
                            }
                        }
                echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>01:00 - 01:45</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 9;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                    <b><div style='
                                        height: 80px;
                                        width: 80px;
                                        background-color: 8BC34A;
                                        color: white;
                                        display: inline-block;
                                        padding:0px;'>AVAILABLE
                                    </div>
                                    </b>
                                </td>";
                            }
                        }
                echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>01:55 - 02:40</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 10;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                    <b><div style='
                                        height: 80px;
                                        width: 80px;
                                        background-color: 8BC34A;
                                        color: white;
                                        display: inline-block;
                                        padding:0px;'>AVAILABLE
                                    </div>
                                    </b>
                                </td>";
                            }
                        }
               echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>02:50 - 03:35</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 11;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                    <b><div style='
                                        height: 80px;
                                        width: 80px;
                                        background-color: 8BC34A;
                                        color: white;
                                        display: inline-block;
                                        padding:0px;'>AVAILABLE
                                    </div>
                                    </b>
                                </td>";
                            }
                        }
                echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>03:45 - 04:30</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 12;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                    <b><div style='
                                        height: 80px;
                                        width: 80px;
                                        background-color: 8BC34A;
                                        color: white;
                                        display: inline-block;
                                        padding:0px;'>AVAILABLE
                                    </div>
                                    </b>
                                </td>";
                            }
                        }
                echo "</tr>
                <tr>
                    <td align='center' height='50'>
                        <b>04:40 - 05:25</b>
                    </td>";
                    $selectAllTeacherQuery = "SELECT s.student_name, f.faculty_name, s.course_id, s.level_id, r.room 
                        FROM teacher_timer tt 
                            INNER JOIN timer t ON tt.timer_id = t.id
                            INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                            INNER JOIN rooms r ON r.room = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                        WHERE tt.timer_id = 13;";
                        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
                        $roomIdArrayFromDb = array();
                        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
                            $selectRoom = $selectAllTeacherRow["room"];
                            $roomIdArrayFromDb[] = $selectRoom;
                        }
                        foreach($roomIdArray as $arr) {
                            if (in_array($arr, $roomIdArrayFromDb)) {
                                echo "<td align='center' height='50' style='background-color:red;'>
                                    <b><div style='
                                            height: 80px;
                                            width: 80px;
                                            background-color: red;
                                            border-radius: 50%;
                                            color: white;
                                            display: inline-block;
                                            padding:10px;'>BOOKED
                                        </div>
                                    </b>
                                </td>";
                            } else {
                                echo "<td align='center' height='50' style='background-color:skyblue;'>
                                    <b><div style='
                                        height: 80px;
                                        width: 80px;
                                        background-color: 8BC34A;
                                        color: white;
                                        display: inline-block;
                                        padding:0px;'>AVAILABLE
                                    </div>
                                    </b>
                                </td>";
                            }
                        }
               echo"</tr>
            </table></div>";
        ?>
</body>

</html>

<?php
include_once("footer.php");

?>