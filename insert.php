<?php
$server = "localhost";
$username = "root";
$password = "";
$dbname = "Data/star-bank1.db";

// $conn = mysqli_connect($server, $root, $password, $dbname);
$conn = new SQLite3('Data/star-bank1.db');

if(ISSET($_POST['submit'])) {
    if(!empty($_POST['name']) && !empty($_POST['password']) 
    && !empty($_POST['longitude']) && !empty($_POST['latitude'])
    && !empty($_POST['date'])) {
        $name = $_POST['name'];
        $password = $_POST['password'];
        $longitude = $_POST['longitude'];
        $latitude = $_POST['latitude'];
        $date = $_POST['date'];
        
        $query = "INSERT INTO Users(u_name, u_password, u_longitude, u_latitude, u_dateandtime)";

        $run = mysqli_query($conn, $query) OR die(mysqli_error());

        if($run){
            echo "Form submitted successfully!";
        } else {
            echo "Form not submitted";
        }
    } else {
        echo "Please fill out all fields";
    }
}
?>