<?php
	require'conn.php';
	
	if(ISSET($_POST['search'])){
		$keyword = $_POST['keyword'];
		$query=$conn->query("SELECT * FROM `Constellations` 
        WHERE `c_constellationkey` LIKE '%$keyword%'
		OR `c_name` LIKE '%$keyword%' 
        OR `c_starsign` LIKE '%$keyword%'
        OR `c_yearofDiscovery` LIKE '%$keyword%'
        OR `c_family` LIKE '%$keyword%'
		OR `c_visibility` LIKE '%$keyword%'
		OR `c_area` LIKE '%$keyword%'
		OR `c_quadrant` LIKE '%$keyword%'
        ") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
			echo"<tr><td>".$fetch['c_constellationkey']."</td>
			<td>".$fetch['c_name']."</td>
			<td>".$fetch['c_starsign']."</td>
			<td>".$fetch['c_yearofDiscovery']."</td>
			<td>".$fetch['c_family']."</td>
            <td>".$fetch['c_visibility']."</td>
            <td>".$fetch['c_area']."</td>
            <td>".$fetch['c_quadrant']."</td>
			</tr>";
		}
	}else{
		$query=$conn->query("SELECT * FROM `Constellations`") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
			echo"<tr>
			<td>".$fetch['c_constellationkey']."</td>
			<td>".$fetch['c_name']."</td>
			<td>".$fetch['c_starsign']."</td>
			<td>".$fetch['c_yearofDiscovery']."</td>
			<td>".$fetch['c_family']."</td>
            <td>".$fetch['c_visibility']."</td>
            <td>".$fetch['c_area']."</td>
            <td>".$fetch['c_quadrant']."</td>
			</tr>";
		}
	}
?>