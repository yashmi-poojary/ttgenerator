<?php

    $username = $_POST['username'];
    $password = $_POST['password'];
	

	// Database connection
	$conn = new mysqli('localhost','root','','ttms');
	if(!$conn){
		
		die("Connection Failed : ".mysqli_error($con));
	} 
    else {
		$query= "SELECT * from login where L_id ='$username' and L_pass='$password'";
		$result = mysqli_query( $conn, $query);
        if(mysqli_num_rows($result)== 1){
            session_start();
            $_SESSION['auth']= 'true';
            header('location: view2.html');
        }
        else{
            echo "wrong username or password";
        }
    }

?>