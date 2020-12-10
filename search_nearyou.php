<?php
	require'conn.php';
	
	if(ISSET($_POST['search'])){
        $long = $_POST['long'];
        $lat = $_POST['lat'];
		$query=$conn->query("SELECT s_name, s_constellation, l_locationkey, l_longitude, l_latitude, l_ascension, l_declination 
                            FROM Location, Stars  
        WHERE l_locationkey = s_locationkey
        and l_latitude <= $lat + 25 
        and l_latitude >= $lat - 25
        and l_longitude <= $long + 25 
        and l_longitude >= $long - 25
        -- AND l_longitude LIKE '%$long%'
        -- AND l_latitude LIKE '%$lat%'
        ") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
            echo"<tr>
            <td>".$fetch['s_name']."</td>
            <td>".$fetch['s_constellation']."</td>
			<td>".$fetch['l_locationkey']."</td>
			<td>".$fetch['l_longitude']."</td>
			<td>".$fetch['l_latitude']."</td>
			<td>".$fetch['l_ascension']."</td>
			<td>".$fetch['l_declination']."</td>
			</tr>";
		}
	}
?>