<?php
include_once("header.php");
include_once("navbar.php");
?>
<html>

<head>
    <style>
        body {
            background-image: url();
            background-color: white;
        }

        th {
            text-align: center;
        }

        tr {
            height: 30px;
        }

        td {
            padding-top: 5px;
            padding-left: 20px;
            padding-bottom: 5px;
            height: 20px;
        }


        </body>
    </style>
</head>

<body><br>
    <div class="container">

        <body>
            <?php
            echo "<tr>
            <td>";
            // your database connection
            require 'databaasee.php';

            $query = "SELECT * FROM timer";
            $result = mysqli_query($connect, $query) or die(mysqli_error());
            echo "<div class='container'><table width='' class='table table-bordered' border='1' >
                            <tr>
                            <th>Start time</th>
							<th>End time</th>
                            <th>Action</th>
                            </tr>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $row['start_time'] . "</td>";
                echo "<td>" . $row['end_time'] . "</td>";
                echo "<td><form class='form-horizontal' method='post' action='timelist.php'>
                        <input name='id' type='hidden' value='" . $row['id'] . "';>
                        <input type='submit'id='submit' class='btn btn-danger' name='delete' value='Delete'>
                        </form></td>";
                echo "</tr>";
            }
            echo "</table>";

            echo "</td>           
        </tr>";

            // delete record
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
                echo '<script type="text/javascript">
                      alert("Schedule Successfuly Deleted");
                         location="list.php";
                           </script>';
            }
            if (isset($_POST['id'])) {
                $id = mysqli_real_escape_string($connect, $_POST['id']);
                $sql = mysqli_query($connect, "DELETE FROM timer WHERE id='$id'");
                if (!$sql) {
                    echo ("Could not delete rows" . mysqli_error());
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
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "footer.php";
include_once("footer.php");

?>