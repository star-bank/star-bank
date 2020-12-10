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
        <title>Homepage</title>

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
        
        <div class="parent">
            <!-- navigation bar -->
            <div class="header">
                <ul>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="star_clusters.html">Star Custers</a></li>
                    <li><a href="constellation.php">Constellation</a></li>
                    <li><a href="stars.php">Stars</a></li>
                    <li style="float:left"><a class="active" href="index.php">Star Bank</a></li>
                </ul>
            </div>
            
            <!-- homepage contents -->
            <div class="main">
                <h1>this is <?php echo "GROSS!"; ?></h1>
                <h1>BLERG!</h1>
                

            <div class="container">
                <h2>Log In/Sign Up Form Example in PHP and SQLITE Database</h2>
                <button type="button" href="register.php" class="btn btn-primary">Sign Up</button>
                <button type="button" href="login.php" class="btn btn-primary active">Log in</button>
            </div>
                
                
            </div>
            <div class="footer">
                
                <!-- <iframe height="400px" width="100%" src="https://repl.it/@LoriCamacho/MealyAdventurousInterchangeability?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe> -->

            </div>
        </div> 
    </body>
</html>