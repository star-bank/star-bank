<?php
// Display all sqlite tables
    $db = new SQLite3('Data/star-bank1.db');
    $tablesquery = $db->query("SELECT name FROM sqlite_master WHERE type='table';");

    while ($table = $tablesquery->fetchArray(SQLITE3_ASSOC)) {
        if ($table['name'] != "sqlite_sequence") {
            echo $table['name'] . ' <br />';
        }
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Navigation Bar</title>

        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="stylesheet" type="text/css" href="navbar.css">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">  
        
    </head>

    <body>
        <div class="parent">
            <div class="header">
                <ul>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="star_clusters.html">Star Custers</a></li>
                    <li><a href="constellation.php">Constellation</a></li>
                    <li><a class="active" href="stars.php">Stars</a></li>
                    <li style="float:left"><a href="index.php">Star Bank</a></li>
                </ul>
            </div>
            <div class="main">
            </div>
            <div class="col-md-3"></div>
            <div class="col-md-6 well">
                <h3 class="text-primary">PHP - Search Data In SQLite3</h3>
                <hr style="border-top:1px dotted #ccc;"/>
                
                <div class="col-md-8">
                    <form method="POST" class="form-inline" action="">
                        <label>Search Stars:</label>
                        <input type="text" name="keyword" class="form-control" placeholder="Enter here..." required="required"/>
                        <button class="btn btn-success" name="search"><span class="glyphicon glyphicon-search"></span> Search</button>
                    </form>
                    <br />
                    <table class="table table-bordered">
                        <thead class="alert-info">
                            <tr >
                                <th>Star #</th>
                                <th>Name</th>
                                <th>Location #</th>
                                <th>Constellation</th>
                                <th>Distance</th>
                                <th>Category</th>
                                <th>Star Custer</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php include'search_data.php'?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="footer">

            </div>
        </div> 
    </body>
</html>