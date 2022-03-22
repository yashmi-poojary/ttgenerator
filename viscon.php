<?php
include 'connection.php';
if(isset($_POST['Submit']))
{
 
    $g_name = $_POST['name'];
    $topic = $_POST['topic'];
    $email = $_POST['email'];
    $skills = $_POST['message'];
    $sql= "insert into `guest`(`g_name`, `topic`, `email`, `skills`) VALUES ('$g_name', '$topic', '$email', '$skills')";
    if(mysqli_query($con,$sql)){
        echo '<script type="text/javascript">';
        echo 'alert("Your registration is Successful");';
        echo 'window.location.href="main.html";';
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
     <title>Register</title>      
     <link rel="stylesheet" content="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/visit_styles.css">

     <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,700;1,100;1,300;1,900&display=swap" rel="stylesheet">

     <link rel="stylesheet" href="css/all.css">
   
   
</head>
<body>
     <h2>Register For Class</h2>
     <div class="container">
          
          <form action="viscon.php" method="POST">
               <div class="inpname">
                     <input type="text" name="name" required>
                    <label for="name"><i class="fa fa-user" aria-hidden="true"></i>
                         Your Name</label>
                </div>
                <div class="inpname">
                     <input type="text" name="topic" required>
                    <label for="number">
                    <i class="fa fa-phone" aria-hidden="true"></i> Topic</label>
                </div>
                <div class="inpname">
                     <input type="text" name="email" required>
                    <label for="email"><i class="fa fa-envelope" aria-hidden="true"></i> Your Email Id</label>
                </div>
                <div class="inpname">
                     <textarea name="message" rows="8"></textarea>
                    <label for="message"><i class="fa fa-wrench" aria-hidden="true"></i> Your Skills To Teach</label>
                </div>
                <button type="Submit" name="Submit">SUBMIT <i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                <button type="visit" class="time"> 
                    <a href="studentpage.php">View The Time-Table </a><i class="fa fa-eye" aria-hidden="true"></i>
               </button>
          </form>
     </div>
</body>
</html>