<?php

// ******************** corlist.php 

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "header.php";
include_once("header.php");
include_once("navbar.php");
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
                <form action="" method="GET" >
                    <div class="container col-sm-7 float-right">
                        <div class="input-group mb-3">
                            <input type="text" id="search" name='search' value="<?php if(isset($_GET['search'])) {echo $_GET['search']; } ?>" placeholder="Enter ID number / Name of student" class='form-control col-sm-5 mx-auto' autocomplete='off' required>
                            <button type="submit" class="btn btn-primary"> Search </button>
                            <br>
                        </div>
                    </div>
                </form>
            </div>
        </div>      
    </div>

        <?php

            $host       = "localhost";
            $username   = "root";
            $password   = "";
            $database   = "insertion";

            // select database
            $connect = mysqli_connect($host, $username, $password, $database) or die(mysqli_error($connect));

                
            mysqli_select_db($connect, "insertion") or die(mysqli_error($connect));

         if (isset($_GET["search"])) {
            $filtervalues = $_GET['search'];

            $query = "SELECT * FROM student WHERE CONCAT(student_id, student_name, student_status) LIKE '%$filtervalues%' ";
            
            $result = mysqli_query($connect, $query);

                if (mysqli_num_rows( $result ) > 0) {

                        foreach($result as $row)
                        {
                            ?>
                                <div class='container'>
                                    <table width='50' class='table table-primary'>
                                <tr>
                                <td style='text-align: center'> IMS - <?= $row['student_id'] ; ?></td>&nbsp; &nbsp;
                                <td style='text-align: center'><?= $row['student_name'] ; ?></td>&nbsp; &nbsp;
                                <td style='text-align: center'><?= $row['student_status'] ; ?></td> &nbsp; &nbsp; &nbsp;
                                </tr>
                            <?php

                        }

                } else {
                    ?>
                    <div class='container'>
                                    <table width='50' class='table table-primary'>
                        <tr>
                        <td colspan="4"> NO RECORD FOUND</td>
                        </tr>
                    <?php
                }

        }

        ?>
        <br><br><br>
    
        <legend> LIST OF STUDENTS </legend>
       
        <?php
        include_once("corlist.php");
        ?>
</body>
</html>