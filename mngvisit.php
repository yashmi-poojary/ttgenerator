<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>ADMIN ACCESS</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/flexslider.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'/>
</head>
<body>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/scrollReveal.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/custom.js"></script>
<div class="navbar navbar-inverse navbar-fixed-top " id="menu">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>
        <div class="navbar-collapse collapse move-me">
                <p style="font-size:18px;">VISIT REQUESTS</p>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="main.html">LOGOUT</a></li>
            </ul>

        </div>
    </div>
</div>

<br>


<div align="center">
    <br>
    <style>
        table {
            margin-top: 50px;
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 70%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>


    <table id=classroomstable>
        <caption><strong>VISIT REQUESTS</strong></caption>
        <tr>

            <th width="100">G_id</th>
            <th width="100">Name</th>
            <th width="100">Topic</th>
            <th width="100">Email</th>
            <th width="150">Skills</th>

        </tr>
        <?php
        include 'connection.php';
        $sql = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"),
            "SELECT * FROM guest ");
            while ($row = mysqli_fetch_assoc($sql)) {
                echo "<tr><td>{$row['g_id']}</td>
                           <td>{$row['g_name']}</td>
                           <td>{$row['topic']}</td>
                           <td>{$row['email']}</td>
                           <td>{$row['skills']}</td>
                     </tr>\n";
            }
       
        ?>
    </table>
</div>

</body>
</html>
