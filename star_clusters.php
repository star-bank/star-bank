<!DOCTYPE html>
<html>
    <head>
        <title>Navigation Bar</title>

        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="stylesheet" type="text/css" href="navbar.css">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
    </head>

    <body>
        <div class="parent">
            <div class="header">
                <ul>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="star_clusters.php">Star Custers</a></li>
                    <li><a class="active" href="constellation.php">Constellation</a></li>
                    <li><a href="stars.php">Stars</a></li>
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
                        <label>Search Star Clusters:</label>
                        <input type="text" name="keyword" class="form-control" placeholder="Enter here..." required="required"/>
                        <button class="btn btn-success" name="search"><span class="glyphicon glyphicon-search"></span> Search</button>
                    </form>
                    <br />
                    <table class="table table-bordered">
                        <thead class="alert-info">
                            <tr >
                                <th>Star Cluster #</th>
                                <th>Name</th>
                                <th>Nickname</th>
                                <th>Constellation</th>
                                <th>Type</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php include'search_cluster.php'?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="footer">

            </div>
        </div> 
    </body>
</html>