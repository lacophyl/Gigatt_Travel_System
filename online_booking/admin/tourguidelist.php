<?php
	error_reporting(1);
	include('config.php');

	$display = "
		<tr>
            <th>ID</th>
            <th>NAME</th>
            <th>Action</th>
        </tr>
	";

	$list_sql = mysqli_query($conn,"SELECT * FROM login WHERE usertype_id = 3");
	$list_row = mysqli_num_rows($list_sql);
	if ($list_row>0) {
		while ($data = mysqli_fetch_assoc($list_sql)) {
			$id = htmlspecialchars($data['id']); 
	        $name = htmlspecialchars($data['username']); 
	        $display .= "
	            <tr>
	                <td></td>
	                <td>$name</td>
	                <td>
	                    <div class='act-btn-box'>
	                        <button id='edit-admin' class='action-btn' onclick='return editAdmin()'><i class='bx bx-pen'></i></button>	
	                        <button id='delete-admin' class='action-btn' onclick='return delAdmin()'><i class='bx bx-trash'></i></button>
	                    </div>
	                </td>
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