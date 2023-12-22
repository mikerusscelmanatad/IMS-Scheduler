-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 06:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `addtable`
--

CREATE TABLE `addtable` (
  `id` int(11) NOT NULL,
  `faculty` varchar(250) NOT NULL,
  `course` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `start_time` varchar(250) NOT NULL,
  `end_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `addtable`
--

INSERT INTO `addtable` (`id`, `faculty`, `course`, `subject`, `room`, `start_time`, `end_time`) VALUES
(55, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(56, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(57, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(58, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(59, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(60, 'Management Studies', 'Computer Security ', 'Web Programming 1', 'CP19', '1:00 pm', '2:00 pm'),
(61, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(62, '', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(63, 'example1', 'Computer Science', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(64, 'example1', 'Computer Engineering ', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(65, 'example1', 'Computer Engineering ', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(66, 'example1', 'Computer Engineering ', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(67, 'example1', 'Computer Engineering ', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(68, '', 'Computer Engineering ', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(69, 'example1', 'Computer Engineering ', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_code` varchar(259) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `course` varchar(250) NOT NULL,
  `level` varchar(250) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_code`, `course_name`, `course`, `level`, `created_at`, `updated_at`) VALUES
(87, '1456', 'ANNE', 'IELTS - ACADEMIC', 'beginner1', 0, 0),
(88, '1456', 'Vitaly shmuck', 'IELTS - ACADEMIC', 'elementary2', 0, 0),
(90, 'LS123', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(91, '1456', 'Vitaly shmuck ', 'IELTS - PRE-GUARANTEE', 'Select', 0, 0),
(92, '8888888', 'ANNE', 'ESL - Premium', 'elementary2', 0, 0),
(94, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(95, '213awd', 'wa', 'ESL - Premium', 'beginner1', 0, 0),
(97, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(98, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(99, '1456', 'wa', 'ESL - Premium', 'beginner1', 0, 0),
(100, '1456', 'ANNE', 'ESL - Intensive', 'beginner1', 0, 0),
(101, '1456', 'ANNE', 'ESL - Premium', 'beginner1', 0, 0),
(102, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(103, '789', 'Mark', 'ESL - Premium', 'advance11', 0, 0),
(104, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(105, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(106, '000000000', 'MIKE', 'ESL - Intensive', 'preintermediate4', 0, 0),
(107, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(108, '000000000', 'MIKE', 'ESL - Intensive', 'beginner1', 0, 0),
(110, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(111, '1456', 'MIKE', 'ESL - Premium', 'beginner1', 0, 0),
(112, '8888888', 'ANNE ', 'ESL - Premium', 'beginner1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `faculty` varchar(250) NOT NULL,
  `course` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `start_time` varchar(250) NOT NULL,
  `end_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `designation`) VALUES
(35, 'ESL - Premium', 'ESL'),
(36, 'ESL - Intensive', 'ESL'),
(37, 'ESL - Essential', 'ESL'),
(38, 'POWERS PEAKING', 'POWER SPEAKING'),
(39, 'IELTS - ACADEMIC', 'IELTS'),
(40, 'IELTS - GENERAL', 'IELTS'),
(41, 'IELTS - PRE-GUARANTEE', 'IELTS'),
(42, 'IELTS - GUARANTEE', 'IELTS'),
(43, 'PRE - TOEIC', 'TOEIC'),
(44, 'TOEIC', 'TOEIC'),
(45, 'BUSINESS', 'BUSINESS');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room`) VALUES
(3, 'SB14'),
(8, 'CP09'),
(9, 'SB11'),
(10, 'CP19'),
(11, 'DM28'),
(12, 'NB15'),
(13, 'SS36'),
(14, 'PK22'),
(15, '555');

-- --------------------------------------------------------

--
-- Table structure for table `setschedule`
--

CREATE TABLE `setschedule` (
  `schedule_id` int(11) NOT NULL,
  `schedule_code` varchar(250) DEFAULT NULL,
  `schedule_stuname` varchar(250) NOT NULL,
  `schedule_course` varchar(250) NOT NULL,
  `schedule_level` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(250) NOT NULL,
  `subject_description` varchar(250) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_description`, `updated_at`) VALUES
(43, '2144', 'Listening 3', NULL),
(44, '2121', 'Reading 1 ', NULL),
(45, '2121', '21awd', NULL),
(46, '2121', 'Listening 3', NULL),
(47, '2121', 'Listening 3', NULL),
(48, '2144', 'Reading 1 ', NULL),
(49, '2121', 'Reading 1 ', NULL),
(50, '212121', 'Listening 3', NULL),
(51, '5555', 'Listening 3', NULL),
(54, '2121', '21awd', NULL),
(64, '2121  ', 'Listening 4', NULL),
(65, '2121', 'Listening 4', NULL),
(66, '2121', 'Reading 1 ', NULL),
(67, '2144 ', 'reeeeeee', NULL),
(68, '2144 ', 'Listening 21', NULL),
(86, '2121', 'Reading 1 ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int(11) NOT NULL,
  `start_time` varchar(250) NOT NULL,
  `end_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`id`, `start_time`, `end_time`) VALUES
(3, '5:30 pm', '7:30 pm'),
(4, '1:00 pm', '5:30 pm'),
(6, '10:00 am', '12:00 pm'),
(7, '6:00 pm', '7:00 pm'),
(8, '7:30 am', '10:30 am'),
(9, '9:20 am', '1:40 pm'),
(10, '6:30 am', '9:00 am'),
(11, '8:00 am', '2:00 pm'),
(12, '10:30 am', '3:00 pm'),
(13, '2:00 pm', '5:00 pm'),
(14, '3:00 pm', '6:00 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtable`
--
ALTER TABLE `addtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setschedule`
--
ALTER TABLE `setschedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtable`
--
ALTER TABLE `addtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
