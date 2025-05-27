<?php 
error_reporting(1);
session_start();

function sidebar() {
    ?>
    <ul>
        <?php 
        include("config.php");
        if (isset($_SESSION['admin_id'])) { 
            if ($admin_id === $sa) {
                ?>
                <li>
                    <a href="?sidebar=log_history">Log History</a>
                </li>
                <li>
                    <a href="?sidebar=admins">Admins</a>
                </li>
                <li>
                    <a href="?sidebar=drivers">Drivers</a>
                </li>
                <li>
                    <a href="?sidebar=tour_guides">Tour Guides</a>
                </li>
                <li>
                    <a href="?sidebar=customers">Customers</a>
                </li>
                <li>
                    <a href="?sidebar=update_account">Update Account</a>
                </li>
                <?php
            } else { 
                ?>
                <li>
                    <a href="?sidebar=booking">Bookings</a>
                </li>
                <li>
                    <a href="?sidebar=booking_history">Booking History</a>
                </li>
                <li>
                    <a href="?sidebar=brand">Brands</a>
                </li>
                <li>
                    <a href="?sidebar=vehicles">Vehicles</a>
                </li>
                <li>
                    <a href="?sidebar=tour_packages">Tour Packages</a>
                </li>
                <li>
                    <a href="?sidebar=update_account">Update Account</a>
                </li>
                <?php
            }
        } else {
            echo "<li>Please log in to access this section.</li>"; 
        }
        ?>
    </ul>
    <?php
}
?>