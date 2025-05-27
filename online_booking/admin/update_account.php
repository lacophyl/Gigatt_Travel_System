<?php 
    session_start();
    include('config.php');
    $user_id = $_SESSION['admin_id'];


    $sql = "SELECT username FROM login WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $username = htmlspecialchars($row['username']);
    } else {
        $username = "";
    }

    $stmt->close();

    if (isset($_SESSION['admin_id'])) { 
?>

<wrapper class="update-box">
    <form class="update-form">
        <div class="update-header">
            <header>
                Update Account
            </header>
        </div>
        <div class="input-box"> 
            <label for="username">Username:</label> 
            <input id="username" type="text" class="input-field" value="<?php echo $username; ?>"> 
        </div>
        <div class="input-box">
            <label for="password">New Password:</label>
            <input id="password" type="password" class="input-field" placeholder="Enter new password">
        </div>
        <div class="input-box">
            <label for="password2">Confirm New Password:</label>
            <input id="password2" type="password" class="input-field" placeholder="Confirm new password">
        </div>
        <div class="input-submit">
            <input id="update-button" type="submit" class="submit-btn" value="Update Account" onclick="return updBtn()">
        </div>
    </form>
</wrapper>
<?php 
    } else {
        echo "<script>
                alert('You have no access to this page.');
                window.location.href='admin_login.php';
            </script>";
    }
?>