<?php 
	error_reporting(1);
	session_start();
	$conn = mysqli_connect('localhost','root','','online_20250309_booking');

    $timeout_duration = 600;

    if (isset($_SESSION['LAST_ACTIVITY'])) {
        if (time() - $_SESSION['LAST_ACTIVITY'] > $timeout_duration) {
            session_unset(); 
            session_destroy(); 
            header("Location: admin_login.php"); 
            exit();
        }
    }

    $_SESSION['LAST_ACTIVITY'] = time();

    $admin_id = $_SESSION['admin_id'];
    $sa = hex2bin('6d65092efd4e11ef93f6088fc3857e5c');

	if (isset($_POST['loBtn'])) {
    $usn = $conn->real_escape_string($_POST['usn']);
    $pw = $conn->real_escape_string($_POST['pw']);

    $sql = "SELECT * FROM login WHERE username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $usn);
    $stmt->execute();
    $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $data = $result->fetch_assoc();
            $id = $data['id'];
            $storedPassword = $data['password']; 
            if (password_verify($pw, $storedPassword)) {
                session_start();
                $_SESSION['admin_id'] = $id;

            $logSql = "INSERT INTO loghistory ( action) VALUES (?)";
            $logStmt = $conn->prepare($logSql);
            $actionDescription = "User logged in";
            $sessionName = session_id();
            $logStmt->bind_param("s", $actionDescription);
            $logStmt->execute();
            $logStmt->close();

                echo "1"; 
            } else {
                echo "Incorrect password!";
            }
        } else {
            echo "User  does not exist!";
        }
    $stmt->close();
    $conn->close();
    }

	if (isset($_POST['upBtn'])) {
        $usn = $conn->real_escape_string($_POST['usn']);
        $pw = $conn->real_escape_string($_POST['pw']);
        $id = $_SESSION['admin_id'];

        $sql = "SELECT password FROM login WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $id); 
        $stmt->execute();
        $stmt->bind_result($currentHashedPassword);
        $stmt->fetch();
        $stmt->close();

        $sql = "UPDATE login SET username = ?";
        
        if (!empty($pw)) {
            $hashedPass = password_hash($pw, PASSWORD_DEFAULT);
            $sql .= ", password = ?";
        }
        
        $sql .= " WHERE id = ?";
        $stmt = $conn->prepare($sql);

        if ($stmt === false) {
            die('Prepare failed: ' . htmlspecialchars($conn->error));
        }

        if (!empty($pw)) {
            $stmt->bind_param("sss", $usn, $hashedPass, $id); 
        } else {
            $stmt->bind_param("ss", $usn, $id);
        }

        $stmt->execute();

        if ($stmt->affected_rows > 0) {
            $logSql = "INSERT INTO loghistory ( action) VALUES (?)";
            $logStmt = $conn->prepare($logSql);
            $actionDescription = "User updated their profile.";
            $sessionName = session_id();
            $logStmt->bind_param("s", $actionDescription);
            $logStmt->execute();
            $logStmt->close();
            echo "Update successful!";
        } else {
            echo "No changes made or update failed.";
        }
        $stmt->close();
    }

    if (isset($_POST['adBtn'])) {
        $bname = $conn->real_escape_string($_POST['bName']);
        $bimg = $_FILES['bImage']['name'];
        $bimgtemp = $_FILES['bImage']['tmp_name']; 
        $folder = "images/brands/" . uniqid() . "_" . $bimg; 

        if (move_uploaded_file($bimgtemp, $folder)) {

            $id = bin2hex(random_bytes(16));

            $sql = "INSERT INTO brand (id, name, brand_image) VALUES (?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sss", $id, $bname, $bimg); 
            $stmt->execute();

            if ($stmt->affected_rows > 0) {

                $logSql = "INSERT INTO loghistory ( action) VALUES (?)";
                $logStmt = $conn->prepare($logSql);
                $actionDescription = "User added a Brand.";
                $sessionName = session_id();
                $logStmt->bind_param("s", $actionDescription);
                $logStmt->execute();
                $logStmt->close();

                echo "Brand added successfully!";
            } else {
                echo "Error adding brand.";
            }
            $stmt->close();
        } else {
            echo "Upload failed. Temp: $bimgtemp, Destination: $folder";
        }
    }

    if (isset($_POST['delBImgBtn'])) {
        $brandName = $_POST['brandName'];
        $imageName = $_POST['imageName'];

        $sql = "SELECT brand_image FROM brand WHERE name = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $brandName);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $imagePath = "admin/images/brands/" . $row['brand_image'];

            if (file_exists($imagePath)) {
                if (unlink($imagePath)) { 
                    $deleteSql = "DELETE FROM brand WHERE name = ?";
                    $deleteStmt = $conn->prepare($deleteSql);
                    $deleteStmt->bind_param("s", $brandName);
                    $deleteStmt->execute();

                    if ($deleteStmt->affected_rows > 0) {

                        $logSql = "INSERT INTO loghistory (action) VALUES (?)";
                        $logStmt = $conn->prepare($logSql);
                        $actionDescription = "User  deleted the brand: " . htmlspecialchars($brandName);
                        $logStmt->bind_param("s", $actionDescription);
                        $logStmt->execute();
                        $logStmt->close();

                        echo "Brand and image deleted successfully!";
                    } else {
                        echo "Error deleting brand from database.";
                    }
                    $deleteStmt->close();
                } else {
                    echo "Error deleting image file.";
                }
            } else {
                $deleteSql = "DELETE FROM brand WHERE name = ?";
                $deleteStmt = $conn->prepare($deleteSql);
                $deleteStmt->bind_param("s", $brandName);
                $deleteStmt->execute();

                if ($deleteStmt->affected_rows > 0) {
                    $logSql = "INSERT INTO loghistory (action) VALUES (?)";
                    $logStmt = $conn->prepare($logSql);
                    $actionDescription = "User  deleted the brand: " . htmlspecialchars($brandName);
                    $logStmt->bind_param("s", $actionDescription);
                    $logStmt->execute();
                    $logStmt->close();

                    echo "Brand deleted successfully, but image file not found.";
                } else {
                    echo "Error deleting brand from database.";
                }
                $deleteStmt->close();
            }
        } else {
            echo "Brand not found.";
        }
        $stmt->close();
    }
?>