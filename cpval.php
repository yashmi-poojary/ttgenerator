<?php
include 'connection.php';
if (isset($_POST['ADD'])) {
    $st_id=$_POST['usrname'];
    $pass = $_POST['psw'];
} else {
    $message = "NOT SUCCESSFULL";
    echo "<script type='text/javascript'>alert('$message');</script>";
    die();
}
$sql = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "UPDATE `student` SET `st_pass`='$pass' where `st_id`='$st_id'");
if ($sql) {
    $message = " Password changed.";
    echo "<script type='text/javascript'>alert('$message');</script>";
} else {
    $message = "Username and/or Password incorrect.\\nTry again.";
    echo "<script type='text/javascript'>alert('$message');</script>";

}
?>