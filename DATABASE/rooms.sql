-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 01:14 PM
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
-- Database: `insertion`
--

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room` varchar(250) NOT NULL,
  `is_group` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room`, `is_group`) VALUES
(17, '501', 0),
(18, '502', 0),
(19, '503', 0),
(20, '504', 0),
(21, '505', 0),
(22, '506', 0),
(23, '507', 0),
(24, '508', 0),
(25, '509', 0),
(26, '510', 0),
(27, '511', 0),
(28, '512', 0),
(29, '513', 0),
(30, '514', 0),
(31, '515', 0),
(32, '516', 0),
(33, '517', 0),
(34, '518', 0),
(35, '519', 0),
(36, '520', 0),
(37, '521', 0),
(38, '522', 0),
(39, '523', 0),
(40, '524', 0),
(41, '525', 0),
(42, '526', 0),
(43, '527', 0),
(44, '528', 0),
(45, '529', 0),
(46, '530', 0),
(47, '531', 0),
(48, '532', 0),
(49, '533', 0),
(50, '534', 0),
(51, '535', 0),
(52, '536', 0),
(53, '537', 0),
(54, '538', 0),
(55, '539', 0),
(56, '540', 0),
(57, '541', 0),
(58, '542', 0),
(59, '543', 0),
(60, '544', 0),
(61, '545', 0),
(62, '546', 0),
(63, '547', 0),
(64, '548', 0),
(65, '549', 0),
(66, '550', 0),
(67, '551', 0),
(68, '552', 0),
(69, '553', 0),
(70, '554', 0),
(71, '---', 0),
(72, 'G - 560', 1),
(73, 'G - 561', 1),
(74, 'G - 562', 1),
(75, 'G - 563', 1),
(76, 'G - 564', 1),
(77, 'G - 565', 1),
(78, 'G - 567', 1),
(79, 'G - 568', 1),
(80, 'G - 568', 1),
(81, 'G - 569', 1),
(82, 'G - 570', 1),
(83, 'NO ROOM', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
