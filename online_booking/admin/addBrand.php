<?php 
    error_reporting(1);
    session_start();

    include("config.php");
    if (isset($_SESSION['admin_id'])) { 
?>
<div class="update-box">
	<form>
        <div class="update-header">
            <h2>Add Brand</h2>
        </div>
        <div class="input-box"> 
            <label for="brand-name">Brand name:</label> 
            <input id="brand-name" type="text" class="input-field" placeholder="Enter brand name" required> 
        </div>
        <div class="input-box"> 
            <label for="brand-image">Choose Image:</label> 
            <input id="brand-image" type="file" class="image-input" required> 
        </div>
        <div class="input-submit-brand">
            <input id="add-brand-button" type="submit" value="Confirm" onclick="return addBrandBtn()">
        </div>
    </form>
</div>
<?php 
    } else {
        echo "<script>
                alert('You have no access to this page.');
                window.location.href='admin_login.php';
            </script>";
    }
?>