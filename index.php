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
    </head>
    <body>
        
        <div class="parent">
            <!-- navigation bar -->
            <div class="header">
                <ul>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="star_clusters.html">Star Custers</a></li>
                    <li><a href="constellation.html">Constellation</a></li>
                    <li><a href="stars.html">Stars</a></li>
                    <li style="float:left"><a class="active" href="index.html">Star Bank</a></li>
                </ul>
            </div>
            
            <!-- homepage contents -->
            <div class="main">
                <h1>this is <?php echo "GROSS!"; ?></h1>
                <h1>BLERG!</h1>
                <!-- <script>
                    function populateField_SearchPt() 
                    {
                        var inputId = document.getElementById("c_name").value; //we get the user input value and put it in a var

                        var xhttp = new XMLHttpRequest();
                        xhttp.open("GET", "constellation.php?hId=" + inputId, true); // we're passing the hId to the server as a parameter
                        xhttp.onreadystatechange = function() {
                            if (this.readyState == 4 && this.status == 200) {
                                document.getElementById("SearchBoxPt").value = this.responseText;
                            }
                        };
                        xhttp.send(); 

                    }
                </script> -->
                
                
            </div>
            <div class="footer">
                
                <!-- <iframe height="400px" width="100%" src="https://repl.it/@LoriCamacho/MealyAdventurousInterchangeability?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe> -->

            </div>
        </div> 
    </body>
</html>