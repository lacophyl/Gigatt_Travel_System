<?php 
    error_reporting(1);
    session_start();

    include("config.php");
    if (isset($_SESSION['admin_id'])) { 
?>
<div class="main">
    <table id="display-list-table"> 
    </table>

    <div class="input-submit-brand">
        <input id="add-brand-button" type="button" value="Add Tour Guide" onclick="loadAddTourGuide()">
    </div>
    <br>
    <br>
</div>
<?php 
    } else {
        echo "<script>
                alert('You have no access to this page.');
                window.location.href='admin_login.php';
            </script>";
    }
?>