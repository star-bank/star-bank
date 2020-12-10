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