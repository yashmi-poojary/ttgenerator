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
$sql = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "UPDATE `teachers` SET `t_pass`='$pass' where `faculty_number`='$st_id'");
if ($sql) {
    $message = " Password changed.";
    echo "<script type='text/javascript'>alert('$message');</script>";
} else {
    $message = "Username and/or Password incorrect.\\nTry again.";
    echo "<script type='text/javascript'>alert('$message');</script>";

}
?>