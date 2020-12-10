<?php
session_start();
     if (isset($_GET["login"])){
          class MyDB extends SQLite3
   {
      function __construct()
      {
         $this->open('Data/star-bank1.db');
      }
   }

   $db = new MyDB();

   if(!$db){
      echo $db->lastErrorMsg();
   } else {
      echo "Opened database successfully\n";
   }

   $sql ='SELECT * from Users where u_name="'.$_POST["usr_name"].'";';

   $ret = $db->query($sql);

   while($row = $ret->fetchArray(SQLITE3_ASSOC) ){
      $id = $row['ID'];
      $username = $row["USERNAME"];
      $password = $row['PASSWORD'];
  }
    if ($id!=""){
        if ($password==$_POST["pwd"]){
           $_SESSION["login"]=$username;
           header('Location: index.php');    
        }else{
          echo "Wrong Password";
        }
      }else{
       echo "User not exist, please register to continue!";
      }
   //echo "Operation done successfully\n";
   $db->close();
     }

?>