<?php
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
  <div class="container">
    <div class="row" align="center">
      <div class="">
        <div class="jumbotron">
          Here you will Add subjects
          <form class="form-horizontal" method="POST" action="add.sub.php" enctype="multipart/form-data">
            <fieldset>

              <!-- Form Name -->
              <legend>Add Subjects</legend>


              <!-- Text input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="subject_type"> Subject type</label>
                <div class="col-md-5">
                  <input id="subject_type" name="subject_type" type="text" placeholder="Subject type" class="form-control input-md" required="">

                </div>
              </div>



              <!-- Text input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="subject_description">Subject / Curriculum</label>
                <div class="col-md-5">
                  <input id="subject_description" name="subject_description" type="text" placeholder="Subject Description" class="form-control input-md" required="">

                </div>
              </div>

              <!-- Button -->
              <div class="form-group">
                <label class="col-md-4 control-label" for="submit"></label>
                <div class="col-md-5">
                  <button id="submit" name="submit" class="btn btn-success"> Input </button>

                </div>
              </div>
        </div>

        </fieldset>
        </form>
      </div>
    </div>


    <?php
    echo "<tr>
            <td>";
    // your database connection
    $host       = "localhost";
    $username   = "root";
    $password   = "";
    $database   = "insertion";

    // select database
    $connect = mysqli_connect($host, $username, $password, $database) or die(mysqli_error($connect));
    mysqli_select_db($connect, "insertion") or die(mysqli_error($connect));

    $query = ("SELECT * FROM subject");
    $result = mysqli_query($connect, $query);
    echo "<div class='subjectlist'><table width=''class='table table-bordered' border='1' >
                            <tr>
                                <th colspan='1'>NO.</th>
                                <th colspan='1'>Subject type</th>
                                <th colspan='2'>Subject</th>
                                <th>Action</th>
                            </tr>";


    while ($row = mysqli_fetch_assoc($result)) {
      echo "<tr>";
      echo "<td colspan ='1'>" . $row['subject_id'] . "</td>";
      echo "<td colspan ='1'>" . $row['subject_type'] . "</td>";
      echo "<td colspan ='2'>" . $row['subject_description'] . "</td>";
      echo "<td><form class='form-horizontal' method='post' action='sublist.php'>
                        <input name='subject_id' type='hidden' value='" . $row['subject_id'] . "';>
                        <a href='editsubject.php?id=" . $row['subject_id'] . "' class='btn btn-success'>Edit</a> &nbsp;
                        <input type='submit' class='btn btn-danger' name='delete' value='Delete'>
                          </form></td>";
      echo "</tr>";
    }


    echo "</table>";

    echo "</td>           
        </tr>";

    // delete record
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
      echo '<script type="text/javascript">
                      alert("Successfuly Deleted");
                         location="subject.php";
                           </script>';
    }
    if (isset($_POST['subject_id'])) {
      $subject_id = mysqli_real_escape_string($connect, $_POST['subject_id']);
      $sql = mysqli_query($connect, "DELETE FROM subject WHERE subject_id='$subject_id'");
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
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "footer.php";
include_once("footer.php");
include_once("navbar.php");
?>