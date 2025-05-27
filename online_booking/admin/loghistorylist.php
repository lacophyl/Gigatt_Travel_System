<?php
	error_reporting(1);
	include('config.php');

	$display = "
		<tr>
            <th>ID</th>
            <th>ACTION</th>
            <th>Date</th>
        </tr>
	";

	$list_sql = mysqli_query($conn,"SELECT * FROM loghistory ORDER BY recorded_at DESC LIMIT 10");
	$list_row = mysqli_num_rows($list_sql);
	if ($list_row>0) {
		while ($data = mysqli_fetch_assoc($list_sql)) {
			$id = htmlspecialchars($data['id']); 
	        $action = htmlspecialchars($data['action']);
	        $date = htmlspecialchars($data['recorded_at']);
	        $display .= "
	            <tr>
	                <td></td>
	                <td>$action</td>
	                <td>$date</td>
	            </tr>
	        ";
	    }
	} else {
		$display .= "
			<tr>
	            <td></td>
	            <td>N/A</td>
	            <td>N/A</td>
        	</tr>
		";
	}

	echo $display;
?>