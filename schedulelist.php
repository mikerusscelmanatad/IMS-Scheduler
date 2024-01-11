<?php

// ******************** corlist.php 

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "header.php";
include_once("header.php");
include_once("navbar.php");
require 'databaasee.php';
?>
<html>

<head>
    <style>
        body {
            background-color: white;
        }
    </style>
</head>

<body>

    <br>
    <div align="center">


        <div class="container">
            <div class="card-body">
                <div class="col-md-7">
                    <form action="#" method="GET">
                        <div class="container col-sm-7 float-right">
                            <div class="input-group mb-3">
                            <input type="text" id="search" name='search' 
                                value="<?php if (isset($_GET['search'])) {
                                    echo $_GET['search'];
                                } ?>" placeholder="Name of student" class='form-control col-sm-5 mx-auto'
                                style='width: 50%; margin-bottom:10px;'/>
                            <button type="submit" class="btn btn-primary"><i class="bi bi-search"></i> Search</button>
                                <?php

                                if (isset($_GET["search"])) {
                                    $filtervalues = $_GET['search'];

                                    $query = "SELECT * FROM student WHERE CONCAT(student_id, student_name, student_status) LIKE '%$filtervalues%' ";

                                    $result = mysqli_query($connect, $query);

                                    if (mysqli_num_rows($result) > 0) {

                                        foreach ($result as $row) {
                                ?>
                                            <div class='container'>

                                                <tr>
                                                    <B>
                                                        <h4>
                                                            <td style='text-align: center'> IMS - <?= $row['student_id']; ?></td> &nbsp;&nbsp;&nbsp;
                                                            <td style='text-align: center'><?= htmlspecialchars($row['student_name']); ?></td> &nbsp;&nbsp;&nbsp;
                                                            <td style='text-align: center'><?= htmlspecialchars($row['student_status']); ?></td> &nbsp;&nbsp;&nbsp;

                                                        </h4>
                                                    </B>
                                                </tr>

                                            </div>
                                        <?php

                                        }
                                    } else {
                                        ?>
                                        <div class='container' style='margin-top:10px;'>
                                            <tr>
                                            <B><td colspan="4"> NO RECORD FOUND</td></B>
                                            </tr>
                                        </div>
                                <?php
                                    }
                                }

                                ?>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <br><br><br>

        <legend> LIST OF STUDENTS </legend>

        <?php
        include_once("corlist.php");
        ?>
</body>

</html>