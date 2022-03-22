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
            <ul class="nav navbar-nav navbar-left">
                <li><a href="addteachers.php">ADD TEACHERS</a></li>
                <li><a href="addsubjects.php">ADD SUBJECTS</a></li>
                <li><a href="addclassrooms.php">ADD CLASSROOMS</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">ALLOTMENT
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href=allotsubjects.php>THEORY COURSES</a>
                        </li>
                        <li>
                            <a href=allotpracticals.php>PRACTICAL COURSES</a>
                        </li>
                        <li>
                            <a href=allotclasses.php>CLASSROOMS</a>
                        </li>
                    </ul>
                </li>
                <li><a href="generatetimetable.php">GENERATE TIMETABLE</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="main.html">LOGOUT</a></li>
            </ul>

        </div>
    </div>
</div>

<br>

<div align="center"
     style="margin-top:10%">
    <button
        id="classroommanual" class="btn btn-success btn-lg">ADD CLASSROOM
    </button>
</div>

<div id="myModal" class="modal">

    <div class="modal-content">
        <div class="modal-header">
            <span class="close">&times</span>
            <h2 id="popupHead">Add Classroom</h2>
        </div>
        <div class="modal-body" id="EnterClassroom">
            <div style="display:none" id="addClassroomForm">
                <form action="addclassroomFormValidation.php" method="POST">
                    <div class="form-group">
                        <label for="classroomname">Name</label>
                        <input type="text" class="form-control" id="classroomname" name="CN"
                               placeholder="...">
                    </div>
                    <div class="form-group">
                        <label for="classroomname">Year</label>
                        <input type="text" class="form-control" id="classroomname" name="CY"
                               placeholder="...">
                    </div>

                    <div align="right">
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

    var addclassroomBtn = document.getElementById("classroommanual");
    var heading = document.getElementById("popupHead");
    var classroomForm = document.getElementById("addClassroomForm");
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

<script>
    function deleteHandlers() {
        var table = document.getElementById("classroomstable");
        var rows = table.getElementsByTagName("tr");
        for (i = 0; i < rows.length; i++) {
            var currentRow = table.rows[i];
            var createDeleteHandler =
                function (row) {
                    return function () {
                        var cell = row.getElementsByTagName("td")[0];
                        var id = cell.innerHTML;
                        var x;
                        if (confirm("Are You Sure?") == true) {
                            window.location.href = "deleteclassroom.php?name=" + id;

                        }

                    };
                };
            currentRow.cells[1].onclick = createDeleteHandler(currentRow);
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
        <caption><strong>ADDED CLASSROOMS</strong></caption>
        <tr>

            <th width="100">Name</th>
            <th width="60">Action</th>
        </tr>
        <?php
        include 'connection.php';
        $q = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"),
            "SELECT * FROM classrooms ");
        while ($row = mysqli_fetch_assoc($q)) {
            echo "<tr><td>{$row['name']}</td>
                    <td><button>Delete</button></td>
                    </tr>\n";
        }
        echo "<script>deleteHandlers();</script>";
        ?>
    </table>
</div>

<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/scrollReveal.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
