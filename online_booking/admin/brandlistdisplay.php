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

	$list_sql = mysqli_query($conn,"SELECT * FROM brand");
	$list_row = mysqli_num_rows($list_sql);
	if ($list_row>0) {
		while ($data = mysqli_fetch_assoc($list_sql)) {
			$id = htmlspecialchars($data['id']); 
	        $name = htmlspecialchars($data['name']); 
	        $image = htmlspecialchars($data['brand_image']); 
	        $display .= "
	            <tr>
	                <td></td>
	                <td>$name</td>
	                <td>
	                    <div class='act-btn-box'>
	                        <button id='view-image' class='action-btn' onclick='return showBrandImgBtn(\"$id\")'><i class='bx bx-show'></i></button>	
	                        <button id='delete-image' class='action-btn' onclick='return delBrandBtn(\"$name\", \"$image\")'><i class='bx bx-trash'></i></button>
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
	            <td></td>
        	</tr>
		";
	}

	echo $display;
?>