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
                <p style="font-size:18px;">GRIEVANCES</p>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="main.html">LOGOUT</a></li>
            </ul>

        </div>
    </div>
</div>

<br>

<div 
     style="margin-top:10%; text-align:center">
    <button
        id="manual" class="btn btn-success btn-lg">ADD Solution
    </button>
</div>

<div id="myModal" class="modal">

  
    <div class="modal-content">
        <div class="modal-header">
            <span class="close">&times</span>
            <h2 id="popupHead">Solution</h2>
        </div>
        <div class="modal-body" id="Entergriev">
           
            <div style="display:none" id="addGrievForm">
                <form action="grievanceFormValidation.php" method="POST">
                    <div class="form-group">
                        <label for="issue">Grv_id</label>
                        <input type="text" class="form-control" id="issue" name="grv_id"
                               placeholder="...">
                    </div>

                    <div class="form-group">
                        <label for="issue">Solution</label>
                        <input type="text" class="form-control" id="issue" name="solution_taken"
                               placeholder="...">
                    </div>


                    <div style ="text-align:right"  >
                        <input type="submit" class="btn btn-default" name="ADD" value="ADD">
                    </div>
                </form>
            </div>
        </div>
        <div class="modal-footer">
        </div>
    </div>
</div>

<script>
    
    var modal = document.getElementById('myModal');

  
    var addclassroomBtn = document.getElementById("manual");
    var heading = document.getElementById("popupHead");
    var classroomForm = document.getElementById("addGrievForm");
  
    var span = document.getElementsByClassName("close")[0];

    

    addclassroomBtn.onclick = function () {
        modal.style.display = "block";
        classroomForm.style.display = "block";
      

    }

    
    span.onclick = function () {
        modal.style.display = "none";
        classroomForm.style.display = "none";

    }

    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>



<div align="center">
    <br>
    <style>
        table {
            margin-top: 10px;
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
        <caption><strong>GRIEVANCES</strong></caption>
        <tr>

            <th width="100">Grv_id</th>
            <th width="150">ISSUE</th>
            <th width="100">Solution Taken</th>
            <th width="100">Given By</th>

        </tr>
        <?php
        include 'connection.php';
        $sql = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"),
            "SELECT * FROM grievance ");
            while ($row = mysqli_fetch_assoc($sql)) {
                echo "<tr><td>{$row['gr_id']}</td>
                           <td>{$row['issue']}</td>
                           <td>{$row['solution']}</td>
                           <td>{$row['id']}</td>
                     </tr>\n";
            }
       
        ?>
    </table>
</div>

</body>
</html>
