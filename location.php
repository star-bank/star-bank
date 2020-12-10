
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
                    <li><a class="active" href="location.php">Locations</a></li>
                    <li><a href="star_clusters.html">Star Custers</a></li>
                    <li><a href="constellation.php">Constellation</a></li>
                    <li><a href="stars.php">Stars</a></li>
                    <li style="float:left"><a href="index.php">Star Bank</a></li>
                </ul>
            </div>
            <div class="main">
            </div>
            <div class="col-md-3"></div>
            <div class="col-md-6 well">
                <h3 class="text-primary">Look Up Stars ⭐ </h3>
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
                                <th>Star Name</th>
                                <th>Location #</th>
                                <th>Longitude</th>
                                <th>Latitude</th>
                                <th>Ascension</th>
                                <th>Declination</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php include'search_location.php'?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="footer">

            </div>
        </div> 
    </body>
</html>