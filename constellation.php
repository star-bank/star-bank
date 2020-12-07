<?php
class StarBank extends SQLite3 {
    function __construct() {
        $this->open('star-bank1.db')
    }
}
    $db = new StarBank();
    if(!$db){
        echo $db->lastErrorMsg();
    }

    // $hId = $_GET['hId'];

    $query = $db->prepare("SELECT * FROM Constellations");
    // $query->bindValue(':id', $hId, SQLITE3_INTEGER);
    $results = $query->execute()->fetchArray();
    echo $results['cs_starNames'];  
    // $pdo = new PDO('sqlite:/Data/star-bank1.db');

    // $result = $pdo->query("SELECT * FROM Constellations");

    // foreach($result as $row)
    // {
    //     print $row[''] . "\n";
    // }
?>