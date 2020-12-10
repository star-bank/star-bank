<?php
	$conn=new SQLite3('Data/star-bank1.db') or die("Unable to open database!");
	$query="CREATE TABLE IF NOT EXISTS `user`(mem_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, firstname TEXT, lastname TEXT, address TEXT)";
	
	$conn->exec($query);
?>