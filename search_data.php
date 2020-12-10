<?php
	require'conn.php';
	
	if(ISSET($_POST['search'])){
		$keyword = $_POST['keyword'];
		$query=$conn->query("SELECT * FROM `Stars` WHERE `s_name` LIKE '%$keyword%' OR `s_constellation` LIKE '%$keyword%'") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
			echo"<tr><td>".$fetch['s_starkey']."</td>
			<td>".$fetch['s_name']."</td>
			<td>".$fetch['s_locationkey']."</td>
			<td>".$fetch['s_constellation']."</td>
			<td>".$fetch['s_distance']."</td>
			<td>".$fetch['s_category']."</td>
			<td>".$fetch['s_cluster']."</td>
			</tr>";
		}
	}else{
		$query=$conn->query("SELECT * FROM `Stars`") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
			echo"<tr><td>".$fetch['s_starkey']."</td>
			<td>".$fetch['s_name']."</td>
			<td>".$fetch['s_locationkey']."</td>
			<td>".$fetch['s_constellation']."</td>
			<td>".$fetch['s_distance']."</td>
			<td>".$fetch['s_category']."</td>
			<td>".$fetch['s_cluster']."</td>
			</tr>";
		}
	}
?>