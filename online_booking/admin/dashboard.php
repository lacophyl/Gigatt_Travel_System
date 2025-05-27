<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="a_style.css">
    <script type="text/javascript" src="main.js"></script>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <title>Dashboard</title>
</head>
<body>
    <?php
    include('config.php');

    if (!isset($_SESSION['admin_id'])) {
        echo "<script>
                alert('Please log in to access this page.');
                window.location.href = 'admin_login.php';
              </script>";
        exit();
    }
    ?>
    
    <div class="wrapper">
        <div class="header">
            <div class="admin_header">
                <button onclick="toggleSidebar()">≡</button>
                <a href="logout.php">Logout</a>
            </div>
        </div>
        
        <div class="main-content">
            <?php
            include('sidebar.php');

            $defaultPage = 'booking.php'; 
            if ($admin_id === $sa) {
                $defaultPage = 'log_history.php'; 
            }

            $sidebar_page = $_GET['sidebar'] ?? null;

            switch ($sidebar_page) {
                case 'booking':
                    include "booking.php";
                    break;
                case 'booking_history':
                    include "booking_history.php";
                    break;
                case 'brand':
                    include "brand.php";
                    break;
                case 'vehicles':
                    include "vehicles.php";
                    break;
                case 'tour_packages':
                    include "tour_packages.php";
                    break;
                case 'log_history':
                    include "log_history.php";
                    break;
                case 'admins':
                    include "admins.php";
                    break;
                case 'drivers':
                    include "drivers.php";
                    break;
                case 'tour_guides':
                    include "tour_guides.php";
                    break;
                case 'customers':
                    include "customers.php";
                    break;
                case 'update_account':
                    include "update_account.php";
                    break;
                default:
                    include $defaultPage;
                    break;
            }
            ?>
        </div>

        <div id="sidebar" class="sidebar">
            <h2>Admin Dashboard</h2>
            <?php sidebar(); ?>
        </div>

        <div class="footer">
            2025 © GAT
        </div>
    </div>
</body>
</html>