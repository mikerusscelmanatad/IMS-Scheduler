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
    <div class="" style="margin:10px">
        <?php

        class RoomDetails
        {
            public $roomDetailStudentId;
            public $roomDetailRoomName;
            public $roomDetailStudentName;
        }

        // $query = "SELECT f.room AS teacher_room_name, 
        // f.faculty_name, 
        // t.id as timer_detail,
        // CONCAT(student_name,' ( ', start_time , ' - ' ,end_time, ' ) ' ) AS schedule 
        // FROM `teacher_timer` tt
        //     INNER JOIN faculty f ON f.faculty_id = tt.teacher_id
        //     LEFT JOIN timer t ON t.id = tt.timer_id
        //     INNER JOIN student s ON s.student_id = tt.student_id
        //     INNER JOIN subject sub ON sub.subject_id = tt.subject_id
        // WHERE f.faculty_id <> 1
        // ORDER BY f.faculty_id ASC, t.id ASC;
        //             ";
        // $result = mysqli_query($connect, $query) or die(mysqli_error($connect));

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
        $selectAllTeacherQuery = "SELECT s.student_name, s.course_id, s.level_id, r.room 
                 FROM teacher_timer tt 
                    INNER JOIN timer t ON tt.timer_id = t.id
                    INNER JOIN faculty f ON tt.teacher_id = f.faculty_id
                    INNER JOIN rooms r ON r.room_id = f.room
                    INNER JOIN student s ON tt.student_id = s.student_id
                WHERE tt.timer_id = 3 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
                FROM teacher_timer tt 
                   INNER JOIN timer t ON tt.timer_id = t.id
                   INNER JOIN rooms r ON r.room_id = tt.room_id
                   INNER JOIN student s ON tt.student_id = s.student_id
               WHERE tt.timer_id = 3;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                             <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                             <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 4 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 4;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 6 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 6;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 7 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 7;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 9 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 9;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 10 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 10;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 11 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 11;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 12 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 12;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
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
                            INNER JOIN rooms r ON r.room_id = f.room
                            INNER JOIN student s ON tt.student_id = s.student_id
                            WHERE tt.timer_id = 13 AND tt.room_id IS NULL;";
        $selectAllTeacherQueryResult = mysqli_query($connect, $selectAllTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForOneFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectAllTeacherQueryResult)) {
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForOneFromDb[$count] = new RoomDetails();
            $roomIdArrayForOneFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForOneFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $selectGroupTeacherQuery = "SELECT s.student_id, s.student_name, s.course_id, s.level_id, r.room 
        FROM teacher_timer tt 
           INNER JOIN timer t ON tt.timer_id = t.id
           INNER JOIN rooms r ON r.room_id = tt.room_id
           INNER JOIN student s ON tt.student_id = s.student_id
       WHERE tt.timer_id = 13;";
        $selectGroupTeacherQueryResult = mysqli_query($connect, $selectGroupTeacherQuery) or die(mysqli_error($connect));
        $roomIdArrayForGroupFromDb = array();
        $count = 0;
        while ($selectAllTeacherRow = mysqli_fetch_assoc($selectGroupTeacherQueryResult)) {
            $selectStudentId = $selectAllTeacherRow["student_id"];
            $selectRoom = $selectAllTeacherRow["room"];
            $selectStudent = $selectAllTeacherRow["student_name"];
            $roomIdArrayForGroupFromDb[$count] = new RoomDetails();
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentId = $selectStudentId;
            $roomIdArrayForGroupFromDb[$count]->roomDetailRoomName = $selectRoom;
            $roomIdArrayForGroupFromDb[$count]->roomDetailStudentName = $selectStudent;
            $count++;
        }
        $counter = 0;
        foreach ($roomIdArray as $arr) {
            if (in_array($arr, array_column($roomIdArrayForOneFromDb, "roomDetailRoomName"))) {
                $checkStudentname = !empty($roomIdArrayForOneFromDb[$counter]->roomDetailStudentName) ? $roomIdArrayForOneFromDb[$counter]->roomDetailStudentName : "...";
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED $checkStudentname
                                </div>
                            </b>
                        </td>";
            } else if (in_array($arr, array_column($roomIdArrayForGroupFromDb, "roomDetailRoomName"))) {
                $checkStudentIds = array_column($roomIdArrayForGroupFromDb, 'student_name');
                $listAllNames = array();
                foreach ($roomIdArrayForGroupFromDb as $checkStudentame) {
                    if ($checkStudentame->roomDetailRoomName === $arr) {
                        $listAllNames[] = $checkStudentame->roomDetailStudentId;
                    }
                }
                echo "<td align='center' height='50' style='background-color:red;'>
                            <b><div style='
                                    height: 80px;
                                    width: 80px;
                                    background-color: red;
                                    border-radius: 50%;
                                    color: white;
                                    display: inline-block;
                                    padding:0px;'>OCCUPIED ".implode(";\n", $listAllNames)."
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
                                        padding:0px;'>VACANT
                                    </div>
                                    </b>
                                </td>";
            }
            $counter++;
        }
        echo "</tr>
            </table></div>";
        ?>
</body>

</html>

<?php
include_once("footer.php");

?>