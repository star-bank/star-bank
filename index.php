<!DOCTYPE html>
<html>
    <head>
        <title>Star Bank</title>

        <link rel="stylesheet" type="text/css" href="index.css">
        <link rel="stylesheet" type="text/css" href="navbar.css">
        <link rel="stylesheet" type="text/css" href="main.css">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
    </head>
    <body>
        <!-- <style type="text/css">
            body { background: gray !important; } /* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
        </style> -->
        <div class="parent">
            <!-- navigation bar -->
            <div class="header">
                <ul>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="location.php">Locations</a></li>
                    <li><a href="star_clusters.php">Star Custers</a></li>
                    <li><a href="constellation.php">Constellation</a></li>
                    <li><a href="stars.php">Stars</a></li>
                    <li style="float:left"><a class="active" href="index.php">Star Bank</a></li>
                </ul>
            </div>
            
            <!-- homepage contents -->
            <div class="main">
                <h1>Welcome to Star Bank! </h1>
                <h2>List of Tables in Star Bank:</h2>
                <tbody>
                            <?php include'list.php'?>
                </tbody>
                <br>

            <div class="col-md-8">
                <h2>Find Stars Near You 🤩</h2>
                    <form method="POST" class="form-inline" action="">
                        <label>Search Stars In Location Near You:</label>
                        <input type="text" name="long" class="form-control" placeholder="Enter Longitude" required="required"/>
                        <input type="text" name="lat" class="form-control" placeholder="Enter Latitude" required="required"/>
                        <button class="btn btn-success" name="search"><span class="glyphicon glyphicon-search"></span> Search</button>
                    </form>
                    <br />
                    <table class="table table-bordered">
                        <thead class="alert-info">
                            <tr >
                                <th>Star Name</th>
                                <th>Constellation Name</th>
                                <th>Location #</th>
                                <th>Longitude</th>
                                <th>Latitude</th>
                                <th>Ascension</th>
                                <th>Declination</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php include'search_nearyou.php'?>
                        </tbody>
                    </table>
                </div>

                <div class="container">
                <h2>Sign Up for Star Bank</h2>
                <form action="insert.php" method="POST" class="form-inline" action="">
                    <label>Enter Your Name:</label>
                    <input type="text" name="name" class="form-control" placeholder="Enter username..." /><br>
                    <label>Enter a password:</label>
                    <input type="text" name="password" class="form-control" placeholder="Enter password..."/><br>
                    <label>Enter Longitude:</label>
                    <input type="text" name="longitude" class="form-control" placeholder="ie. -122.335167" /><br>
                    <label>Enter Latitude:</label>
                    <input type="text" name="latitude" class="form-control" placeholder="ie. 47.608013" /><br>
                    <label>Enter Date and Time:</label>
                    <input type="text" name="date" class="form-control" placeholder="ie. 2020-01-13 06:56:23" /><br>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

                <!-- <button type="button" href="register.php" class="btn btn-primary">Sign Up</button>
                <button type="button" href="login.php" class="btn btn-primary active">Log in</button> -->
            </div>
                
            </div>
            <div class="footer">
                
                <!-- <iframe height="400px" width="100%" src="https://repl.it/@LoriCamacho/MealyAdventurousInterchangeability?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe> -->

            </div>
        </div> 
    </body>
</html>