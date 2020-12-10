<?php
	require'conn.php';
	
	if(ISSET($_POST['search'])){
		$keyword = $_POST['keyword'];
		$query=$conn->query("SELECT * FROM `StarClusters` 
        WHERE `sc_name` LIKE '%$keyword%' 
        OR `sc_nickname` LIKE '%$keyword%'
        OR `sc_constellation` LIKE '%$keyword%'
        OR `sc_type` LIKE '%$keyword%'
        ") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
			echo"<tr>
			<td>".$fetch['sc_key']."</td>
			<td>".$fetch['sc_name']."</td>
			<td>".$fetch['sc_nickname']."</td>
			<td>".$fetch['sc_constellation']."</td>
			<td>".$fetch['sc_type']."</td>
			</tr>";
		}
	}else{
		$query=$conn->query("SELECT * FROM `StarClusters`") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
			echo"<tr>
			<td>".$fetch['sc_key']."</td>
			<td>".$fetch['sc_name']."</td>
			<td>".$fetch['sc_nickname']."</td>
			<td>".$fetch['sc_constellation']."</td>
			<td>".$fetch['sc_type']."</td>
			</tr>";
		}
	}
?>