<?php
	require'conn.php';
	
	if(ISSET($_POST['search'])){
		$keyword = $_POST['keyword'];
		$query=$conn->query("SELECT s_name, l_locationkey, l_longitude, l_latitude, l_ascension, l_declination 
                            FROM Location, Stars  
        WHERE l_locationkey = s_locationkey
        AND s_name LIKE '%$keyword%'
        OR l_locationkey LIKE '%$keyword%' 
        OR l_longitude LIKE '%$keyword%'
        OR l_latitude LIKE '%$keyword%'
        OR l_ascension LIKE '%$keyword%'
        OR l_declination LIKE '%$keyword%'
        ") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
            echo"<tr>
            <td>".$fetch['s_name']."</td>
			<td>".$fetch['l_locationkey']."</td>
			<td>".$fetch['l_longitude']."</td>
			<td>".$fetch['l_latitude']."</td>
			<td>".$fetch['l_ascension']."</td>
			<td>".$fetch['l_declination']."</td>
			</tr>";
		}
	}else{
		$query=$conn->query("SELECT s_name, l_locationkey, l_longitude, l_latitude, l_ascension, l_declination 
                            FROM Stars, Location
                            WHERE l_locationkey = s_locationkey;
                            ") or die("Failed to fetch row!");
		while($fetch=$query->fetchArray()){
            echo"<tr>
            <td>".$fetch['s_name']."</td>
			<td>".$fetch['l_locationkey']."</td>
			<td>".$fetch['l_longitude']."</td>
			<td>".$fetch['l_latitude']."</td>
			<td>".$fetch['l_ascension']."</td>
			<td>".$fetch['l_declination']."</td>
			</tr>";
		}
	}
?>