<?php
include 'connection.php';
if(isset($_POST['Submit']))
{
 
    $issue = $_POST['issue'];
    $sid= $_POST['sid'];
    $sql= "insert into `grievance`(`issue`, `id`) VALUES ('$issue', '$sid')";
    if(mysqli_query($con,$sql)){
        echo '<script type="text/javascript">';
        echo 'alert("Your grievance is successfully notified");';
        echo 'window.location.href="view.html";';
        echo '</script>';
    }   
    else{
        echo "error:".mysqli_error($con);
    }
    mysqli_close($con);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset = "UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE-edge">
     <meta name = "viewport" content="width=device-width,initial-scale=1">
     <title>Grievance</title>      
     <link rel="stylesheet" content="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/visit_styles.css">

     <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,700;1,100;1,300;1,900&display=swap" rel="stylesheet">

     <link rel="stylesheet" href="css/all.css">
   
   
</head>
<body>
     <div class="container">
          <h2>Notify Grievance</h2>
          <form action="grv.php" method="POST">
               <div class="inpname">
                     <input type="text" name="issue" required>
                    <label for="issue"><i class="fa fa-wrench" aria-hidden="true"></i>
                         Your Issue</label>
                </div>
                <div class="inpname">
                     <input type="text" name="sid" required>
                    <label for="sid">
                    <i class="fa fa-user" aria-hidden="true"></i> Your ID</label>
                </div>
                <button type="Submit" name="Submit">SUBMIT <i class="fa fa-paper-plane" aria-hidden="true"></i></button>
          </form>
     </div>
</body>
</html>