-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 02:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_20250309_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` binary(16) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `barangay_id` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `auto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `country_id`, `state_id`, `city_id`, `barangay_id`, `street`, `auto_id`) VALUES
(0x6d5b83f0fd4e11ef93f6088fc3857e5c, 1, 1, 1, 1, 'Salazar street', 1),
(0x6d5c5b32fd4e11ef93f6088fc3857e5c, 1, 1, 1, 2, 'Soledad street', 2);

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`id`, `name`, `country_id`, `state_id`, `city_id`) VALUES
(1, '44-A', 1, 1, 1),
(2, '100 Utap', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookingstatus`
--

CREATE TABLE `bookingstatus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookingstatus`
--

INSERT INTO `bookingstatus` (`id`, `name`) VALUES
(1, 'Completed'),
(2, 'On-going'),
(3, 'Reserved'),
(4, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `auto_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `auto_id`, `address_id`) VALUES
(0x6d60dca9fd4e11ef93f6088fc3857e5c, 'GigAtt Travel', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `display_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carab`
--

CREATE TABLE `carab` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carab`
--

INSERT INTO `carab` (`id`, `name`) VALUES
(1, 'Available'),
(2, 'Unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `carac`
--

CREATE TABLE `carac` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carac`
--

INSERT INTO `carac` (`id`, `name`) VALUES
(1, 'Available'),
(2, 'Unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `country_id`, `state_id`) VALUES
(1, 'Tacloban', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `damageassessment`
--

CREATE TABLE `damageassessment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `damageassessment`
--

INSERT INTO `damageassessment` (`id`, `name`) VALUES
(1, 'Interior'),
(2, 'Exterior'),
(3, 'Engine');

-- --------------------------------------------------------

--
-- Table structure for table `enginetype`
--

CREATE TABLE `enginetype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fueltype`
--

CREATE TABLE `fueltype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fueltype`
--

INSERT INTO `fueltype` (`id`, `name`) VALUES
(1, 'Leaded'),
(2, 'Un-leaded'),
(3, 'Diesel');

-- --------------------------------------------------------

--
-- Table structure for table `inductiontype`
--

CREATE TABLE `inductiontype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loghistory`
--

CREATE TABLE `loghistory` (
  `id` int(11) NOT NULL,
  `profile_id` binary(16) DEFAULT NULL,
  `action` text DEFAULT NULL,
  `recorded_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` binary(16) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usertype_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `last_login`, `usertype_id`, `branch_id`) VALUES
(0x00000000000000000000000000000000, 'Cha', '1111', '2025-03-13 00:52:41', 1, 1),
(0x39f5ec8fff1511efb1a4088fc3857e5c, 'Charles', '$2y$10$v5E7uiPL.5sGOHfPgsB1puOJsaWBF5/rcm5iqaamK3zywzUUzHRnW', '2025-03-27 03:49:27', 1, 1),
(0x6d65092efd4e11ef93f6088fc3857e5c, 'S_Admin', '$2y$10$z9k85f.MHFwVCw1ee39BqeND1AJL3JpRSNNjP0Mf85BUmCB0QUO22', '2025-03-13 01:09:52', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype`
--

CREATE TABLE `paymenttype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymenttype`
--

INSERT INTO `paymenttype` (`id`, `name`) VALUES
(1, 'Cash'),
(2, 'Gcash'),
(3, 'Paypal'),
(4, 'Credit card'),
(5, 'Debit card');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` binary(16) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(55) DEFAULT NULL,
  `phone_num` varchar(30) DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `login_id` binary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returncondition`
--

CREATE TABLE `returncondition` (
  `id` int(11) NOT NULL,
  `vehiclebooking_id` binary(16) DEFAULT NULL,
  `damageassessment_id` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `country_id`) VALUES
(1, 'Leyte', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tourbooking`
--

CREATE TABLE `tourbooking` (
  `id` binary(16) NOT NULL,
  `profile_id` binary(16) NOT NULL,
  `tourpackage_id` binary(16) NOT NULL,
  `pickup_location` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `total_pax` int(10) UNSIGNED DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `paymenttype_id` int(11) DEFAULT NULL,
  `bookingstatus_id` int(11) NOT NULL,
  `approval_id` binary(16) NOT NULL,
  `guide_id` binary(16) DEFAULT NULL,
  `auto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourexclusions`
--

CREATE TABLE `tourexclusions` (
  `id` int(11) NOT NULL,
  `tourpackage_id` binary(16) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourinclusions`
--

CREATE TABLE `tourinclusions` (
  `id` int(11) NOT NULL,
  `tourpackage_id` binary(16) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `touritinerary`
--

CREATE TABLE `touritinerary` (
  `id` int(11) NOT NULL,
  `tourpackage_id` binary(16) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourpackage`
--

CREATE TABLE `tourpackage` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `destination` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `duration_hours` varchar(16) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `tourtype_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT curdate(),
  `auto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourrouts`
--

CREATE TABLE `tourrouts` (
  `id` int(11) NOT NULL,
  `tourpackage_id` binary(16) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourtype`
--

CREATE TABLE `tourtype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourtype`
--

INSERT INTO `tourtype` (`id`, `name`) VALUES
(2, 'International'),
(1, 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `tour_image`
--

CREATE TABLE `tour_image` (
  `id` int(11) NOT NULL,
  `tourpackage_id` binary(16) NOT NULL,
  `tour_images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transmissiontype`
--

CREATE TABLE `transmissiontype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transmissiontype`
--

INSERT INTO `transmissiontype` (`id`, `name`) VALUES
(1, 'Automatic'),
(2, 'Manual');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `auto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `name`, `auto_id`) VALUES
(0x6d43c57ffd4e11ef93f6088fc3857e5c, 'admin', 1),
(0x6d4500a2fd4e11ef93f6088fc3857e5c, 'driver', 2),
(0x6d45d84cfd4e11ef93f6088fc3857e5c, 'guide', 3),
(0x6d46a1a8fd4e11ef93f6088fc3857e5c, 'client', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand_id` binary(16) DEFAULT NULL,
  `vehicletype_id` int(11) NOT NULL,
  `seating_capacity` int(10) UNSIGNED DEFAULT NULL,
  `fueltype_id` int(11) DEFAULT NULL,
  `year_model` varchar(10) DEFAULT NULL,
  `transmissiontype_id` int(11) DEFAULT NULL,
  `enginetype_id` int(11) DEFAULT NULL,
  `inductiontype_id` int(11) DEFAULT NULL,
  `km_driven` decimal(10,1) DEFAULT NULL,
  `daily_price` decimal(10,2) NOT NULL,
  `plate_number` varchar(20) DEFAULT NULL,
  `carac_id` int(11) DEFAULT NULL,
  `carab_id` int(11) DEFAULT NULL,
  `orcr_image` varchar(255) DEFAULT NULL,
  `vehiclestatus_id` int(11) DEFAULT NULL,
  `car_image` varchar(255) DEFAULT NULL,
  `auto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclebooking`
--

CREATE TABLE `vehiclebooking` (
  `id` binary(16) NOT NULL,
  `profile_id` binary(16) DEFAULT NULL,
  `vehicle_id` binary(16) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `pickup_location` varchar(255) DEFAULT NULL,
  `dropoff_location` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `paymenttype_id` int(11) DEFAULT NULL,
  `contract_image` varchar(255) DEFAULT NULL,
  `bookingstatus_id` int(11) DEFAULT NULL,
  `approvel_id` binary(16) DEFAULT NULL,
  `driver_id` binary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclestatus`
--

CREATE TABLE `vehiclestatus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehiclestatus`
--

INSERT INTO `vehiclestatus` (`id`, `name`) VALUES
(1, 'Available'),
(2, 'Booked'),
(3, 'Under maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `vehicletype`
--

CREATE TABLE `vehicletype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicletype`
--

INSERT INTO `vehicletype` (`id`, `name`) VALUES
(1, 'Sedan'),
(2, 'Van'),
(3, 'Motorcycle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auto_id` (`auto_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `barangay_id` (`barangay_id`);

--
-- Indexes for table `barangay`
--
ALTER TABLE `barangay`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auto_id` (`auto_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `display_id` (`display_id`);

--
-- Indexes for table `carab`
--
ALTER TABLE `carab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carac`
--
ALTER TABLE `carac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `damageassessment`
--
ALTER TABLE `damageassessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enginetype`
--
ALTER TABLE `enginetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fueltype`
--
ALTER TABLE `fueltype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inductiontype`
--
ALTER TABLE `inductiontype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loghistory`
--
ALTER TABLE `loghistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `usertype_id` (`usertype_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gmail` (`gmail`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `returncondition`
--
ALTER TABLE `returncondition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiclebooking_id` (`vehiclebooking_id`),
  ADD KEY `damageassessment_id` (`damageassessment_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `tourbooking`
--
ALTER TABLE `tourbooking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auto_id` (`auto_id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `tourpackage_id` (`tourpackage_id`),
  ADD KEY `paymenttype_id` (`paymenttype_id`),
  ADD KEY `bookingstatus_id` (`bookingstatus_id`),
  ADD KEY `approval_id` (`approval_id`),
  ADD KEY `guide_id` (`guide_id`);

--
-- Indexes for table `tourexclusions`
--
ALTER TABLE `tourexclusions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourpackage_id` (`tourpackage_id`);

--
-- Indexes for table `tourinclusions`
--
ALTER TABLE `tourinclusions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourpackage_id` (`tourpackage_id`);

--
-- Indexes for table `touritinerary`
--
ALTER TABLE `touritinerary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourpackage_id` (`tourpackage_id`);

--
-- Indexes for table `tourpackage`
--
ALTER TABLE `tourpackage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auto_id` (`auto_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `tourtype_id` (`tourtype_id`);

--
-- Indexes for table `tourrouts`
--
ALTER TABLE `tourrouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourpackage_id` (`tourpackage_id`);

--
-- Indexes for table `tourtype`
--
ALTER TABLE `tourtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tour_image`
--
ALTER TABLE `tour_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourpackage_id` (`tourpackage_id`);

--
-- Indexes for table `transmissiontype`
--
ALTER TABLE `transmissiontype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `auto_id` (`auto_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auto_id` (`auto_id`),
  ADD UNIQUE KEY `plate_number` (`plate_number`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `vehicletype_id` (`vehicletype_id`),
  ADD KEY `fueltype_id` (`fueltype_id`),
  ADD KEY `transmissiontype_id` (`transmissiontype_id`),
  ADD KEY `enginetype_id` (`enginetype_id`),
  ADD KEY `inductiontype_id` (`inductiontype_id`),
  ADD KEY `carac_id` (`carac_id`),
  ADD KEY `carab_id` (`carab_id`),
  ADD KEY `vehiclestatus_id` (`vehiclestatus_id`);

--
-- Indexes for table `vehiclebooking`
--
ALTER TABLE `vehiclebooking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `paymenttype_id` (`paymenttype_id`),
  ADD KEY `bookingstatus_id` (`bookingstatus_id`),
  ADD KEY `approvel_id` (`approvel_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `vehiclestatus`
--
ALTER TABLE `vehiclestatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicletype`
--
ALTER TABLE `vehicletype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barangay`
--
ALTER TABLE `barangay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `display_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `carab`
--
ALTER TABLE `carab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carac`
--
ALTER TABLE `carac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `damageassessment`
--
ALTER TABLE `damageassessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enginetype`
--
ALTER TABLE `enginetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fueltype`
--
ALTER TABLE `fueltype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inductiontype`
--
ALTER TABLE `inductiontype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loghistory`
--
ALTER TABLE `loghistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `returncondition`
--
ALTER TABLE `returncondition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tourbooking`
--
ALTER TABLE `tourbooking`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourexclusions`
--
ALTER TABLE `tourexclusions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourinclusions`
--
ALTER TABLE `tourinclusions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `touritinerary`
--
ALTER TABLE `touritinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourpackage`
--
ALTER TABLE `tourpackage`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourrouts`
--
ALTER TABLE `tourrouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourtype`
--
ALTER TABLE `tourtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tour_image`
--
ALTER TABLE `tour_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transmissiontype`
--
ALTER TABLE `transmissiontype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehiclestatus`
--
ALTER TABLE `vehiclestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicletype`
--
ALTER TABLE `vehicletype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `address_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `address_ibfk_4` FOREIGN KEY (`barangay_id`) REFERENCES `barangay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barangay`
--
ALTER TABLE `barangay`
  ADD CONSTRAINT `barangay_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barangay_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barangay_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`auto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `city_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loghistory`
--
ALTER TABLE `loghistory`
  ADD CONSTRAINT `loghistory_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`auto_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`auto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `returncondition`
--
ALTER TABLE `returncondition`
  ADD CONSTRAINT `returncondition_ibfk_1` FOREIGN KEY (`vehiclebooking_id`) REFERENCES `vehiclebooking` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `returncondition_ibfk_2` FOREIGN KEY (`damageassessment_id`) REFERENCES `damageassessment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourbooking`
--
ALTER TABLE `tourbooking`
  ADD CONSTRAINT `tourbooking_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tourbooking_ibfk_2` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tourbooking_ibfk_3` FOREIGN KEY (`paymenttype_id`) REFERENCES `paymenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tourbooking_ibfk_4` FOREIGN KEY (`bookingstatus_id`) REFERENCES `bookingstatus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tourbooking_ibfk_5` FOREIGN KEY (`approval_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tourbooking_ibfk_6` FOREIGN KEY (`guide_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourexclusions`
--
ALTER TABLE `tourexclusions`
  ADD CONSTRAINT `tourexclusions_ibfk_1` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourinclusions`
--
ALTER TABLE `tourinclusions`
  ADD CONSTRAINT `tourinclusions_ibfk_1` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `touritinerary`
--
ALTER TABLE `touritinerary`
  ADD CONSTRAINT `touritinerary_ibfk_1` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourpackage`
--
ALTER TABLE `tourpackage`
  ADD CONSTRAINT `tourpackage_ibfk_1` FOREIGN KEY (`tourtype_id`) REFERENCES `tourtype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourrouts`
--
ALTER TABLE `tourrouts`
  ADD CONSTRAINT `tourrouts_ibfk_1` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tour_image`
--
ALTER TABLE `tour_image`
  ADD CONSTRAINT `tour_image_ibfk_1` FOREIGN KEY (`tourpackage_id`) REFERENCES `tourpackage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`vehicletype_id`) REFERENCES `vehicletype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`fueltype_id`) REFERENCES `fueltype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_4` FOREIGN KEY (`transmissiontype_id`) REFERENCES `transmissiontype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_5` FOREIGN KEY (`enginetype_id`) REFERENCES `enginetype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_6` FOREIGN KEY (`inductiontype_id`) REFERENCES `inductiontype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_7` FOREIGN KEY (`carac_id`) REFERENCES `carac` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_8` FOREIGN KEY (`carab_id`) REFERENCES `carab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_9` FOREIGN KEY (`vehiclestatus_id`) REFERENCES `vehiclestatus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehiclebooking`
--
ALTER TABLE `vehiclebooking`
  ADD CONSTRAINT `vehiclebooking_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiclebooking_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiclebooking_ibfk_3` FOREIGN KEY (`paymenttype_id`) REFERENCES `paymenttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiclebooking_ibfk_4` FOREIGN KEY (`bookingstatus_id`) REFERENCES `bookingstatus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiclebooking_ibfk_5` FOREIGN KEY (`approvel_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiclebooking_ibfk_6` FOREIGN KEY (`driver_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
