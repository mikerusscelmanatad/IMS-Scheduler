-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 11:52 AM
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
(69, 'example1', 'Computer Engineering ', 'Computer Programming 1', 'SB14', '5:30 pm', '7:30 pm'),
(70, 'ESL - Premium', 'MIKE', 'Reading', '502', '5:30 pm', '7:30 pm');

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
(1, 'admin', 'admin'),
(2, 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_code` varchar(259) NOT NULL,
  `course_name` varchar(250) NOT NULL,
  `course` varchar(250) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_code`, `course_name`, `course`, `level_id`, `created_at`, `updated_at`) VALUES
(141, '1456', 'MIKE', 'ESL - Premium', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '1456', 'MIKE', 'ESL - Premium', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '1456', 'MIKE', 'ESL - Premium', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '1456', 'baaabbiu', 'IELTS - ACADEMIC', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '1456', 'John Empinado', 'ESL - Essential', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '1456', 'ANNE ', 'IELTS - ACADEMIC', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '1456', 'ANNE ', 'IELTS - ACADEMIC', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '1456', 'ANNE  ', 'IELTS - ACADEMIC', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`, `created_at`, `created_by`) VALUES
(1, 'Beginner 1', '2023-12-29 09:57:06', ''),
(2, 'Elementary 2', '2023-12-29 09:58:48', ''),
(3, 'Elementary 3', '2023-12-29 09:58:48', ''),
(4, 'Preintermediate 4', '2023-12-29 09:58:48', ''),
(5, 'Intermediate 5', '2023-12-29 09:58:48', ''),
(6, 'Intermediate 6', '2023-12-29 09:58:48', ''),
(7, 'Upper-Intermediate 7', '2023-12-29 09:58:48', ''),
(8, 'Upper-Intermediate 8', '2023-12-29 09:58:48', ''),
(9, 'Advance 9', '2023-12-29 09:58:48', ''),
(10, 'Advance 10', '2023-12-29 09:58:48', ''),
(11, 'Advance 11', '2023-12-29 09:58:48', ''),
(12, 'Master 12', '2023-12-29 09:58:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room`) VALUES
(17, '501'),
(18, '502'),
(19, '503'),
(20, '504'),
(21, '505'),
(22, '506'),
(23, '507'),
(24, '508'),
(25, '509'),
(26, '510'),
(27, '511'),
(28, '512'),
(29, '513'),
(30, '514'),
(31, '515'),
(32, '516'),
(33, '517'),
(34, '518'),
(35, '519'),
(36, '520'),
(37, '521'),
(38, '522'),
(39, '523'),
(40, '524'),
(41, '525'),
(42, '526'),
(43, '527'),
(44, '528'),
(45, '529'),
(46, '530'),
(47, '531'),
(48, '532'),
(49, '533'),
(50, '534'),
(51, '535'),
(52, '536'),
(53, '537'),
(54, '538'),
(55, '539'),
(56, '540'),
(57, '541'),
(58, '542'),
(59, '543'),
(60, '544'),
(61, '545'),
(62, '546'),
(63, '547'),
(64, '548'),
(65, '549'),
(66, '550'),
(67, '551'),
(68, '552'),
(69, '553'),
(70, '554');

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
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `student_course` varchar(250) NOT NULL,
  `student_level` varchar(250) NOT NULL,
  `student_status` enum('NEW','OLD','NO STATUS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_course`, `student_level`, `student_status`) VALUES
(123, 'Pedro Penduko', 'ESL Intensive', 'elementary3', 'NEW'),
(200, 'Lee min hoo ', 'ESL Essential', 'elementary2', 'NEW'),
(201, 'John Doe', 'baaabbiu', 'Elementary 3', 'NEW'),
(202, 'Michael', 'MIKE', 'Elementary 3', 'NEW'),
(212, 'Joseph Makabli', 'John Empinado', 'Master 12', 'OLD');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `deleted` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`subject_id`, `student_id`, `deleted`, `created_at`, `created_by`) VALUES
(1, 123, 0, '0000-00-00 00:00:00', 'ADMIN'),
(1, 200, 0, '0000-00-00 00:00:00', 'ADMIN'),
(2, 123, 0, '0000-00-00 00:00:00', 'ADMIN'),
(2, 200, 0, '0000-00-00 00:00:00', 'ADMIN'),
(123, 200, 0, '2023-12-28 08:44:53', 'ADMIN'),
(168, 123, 0, '0000-00-00 00:00:00', 'ADMIN'),
(168, 200, 0, '0000-00-00 00:00:00', 'ADMIN'),
(169, 123, 0, '0000-00-00 00:00:00', 'ADMIN'),
(169, 200, 0, '0000-00-00 00:00:00', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `studyload`
--

CREATE TABLE `studyload` (
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_type` varchar(250) NOT NULL,
  `subject_description` varchar(250) NOT NULL,
  `subject_code` varchar(500) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `timer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_type`, `subject_description`, `subject_code`, `updated_at`, `room_id`, `timer_id`, `course_id`) VALUES
(1, 'PREEMIUM', 'Reading', '1.1', NULL, 17, 3, 141),
(2, 'PREEMIUM', 'Speaking', '1.1', NULL, 18, 4, 141),
(168, 'PREEMIUM', 'Grammar', '1.1', NULL, 57, 6, 141),
(169, 'PREEMIUM', 'Vocabulary', '1.1', NULL, 57, 7, 141);

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
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `fk_level_id` (`level_id`);

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
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `setschedule`
--
ALTER TABLE `setschedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`subject_id`,`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_id` (`subject_id`),
  ADD KEY `fk_room_id` (`room_id`),
  ADD KEY `fk_period_id` (`timer_id`),
  ADD KEY `course_id` (`course_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_level_id` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `fk_period_id` FOREIGN KEY (`timer_id`) REFERENCES `timer` (`id`),
  ADD CONSTRAINT `fk_room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
