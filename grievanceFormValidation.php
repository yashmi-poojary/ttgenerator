<?php
include 'connection.php';
if (isset($_POST['ADD'])) {
    $gr_id=$_POST['grv_id'];
    $solution_taken = $_POST['solution_taken'];
} else {
    $message = "NOT SUCCESSFULL";
    echo "<script type='text/javascript'>alert('$message');</script>";
    die();
}
$sql = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "UPDATE `grievance` SET `solution`='$solution_taken' where `gr_id`='$gr_id'");
if ($sql) {
    $message = "Solution added.";
    echo "<script type='text/javascript'>alert('$message');</script>";
    header("Location:grievance.php");
} else {
    $message = "Username and/or Password incorrect.\\nTry again.";
    echo "<script type='text/javascript'>alert('$message');</script>";

}
?>