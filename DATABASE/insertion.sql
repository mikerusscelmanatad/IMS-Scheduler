-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 10:06 AM
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
(141, 'ESL - Premium', 'ESL - Premium', 'ESL - Premium', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'ESL Intensive', 'ESL Intensive', 'ESL Intensive', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'ESL Essential', 'ESL Essential', 'ESL Essential', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'POWER SPEAKING', 'POWER SPEAKING', 'POWER SPEAKING', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'IELTS ACADEMIC', 'IELTS ACADEMIC', 'IELTS ACADEMIC', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'IELTS GENERAL', 'IELTS GENERAL', 'IELTS GENERAL', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'PRE - IELTS ACADEMIC', 'PRE - IELTS ACADEMIC', 'PRE - IELTS ACADEMIC', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'PRE - IELTS GENERAL', 'PRE - IELTS GENERAL', 'PRE - IELTS GENERAL', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'PRE TOEIC', 'PRE TOEIC', 'PRE TOEIC', 7, '2023-12-29 10:57:12', '0000-00-00 00:00:00'),
(152, 'TOEIC', 'TOEIC', 'TOEIC', 7, '2023-12-29 10:57:12', '0000-00-00 00:00:00'),
(153, 'BUSINESS', 'BUSINESS', 'BUSINESS', 7, '2023-12-29 10:57:12', '0000-00-00 00:00:00'),
(156, 'Null', 'Null', 'Null', 13, '2024-01-02 08:00:21', NULL);

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
(12, 'Master 12', '2023-12-29 09:58:48', ''),
(13, 'NULL LEVEL', '2024-01-01 10:12:39', '');

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
(70, '554'),
(71, 'NO ROOM'),
(72, 'G - 560'),
(73, 'G - 561'),
(74, 'G - 562'),
(75, 'G - 563'),
(76, 'G - 564'),
(77, 'G - 565'),
(78, 'G - 567'),
(79, 'G - 568'),
(80, 'G - 568'),
(81, 'G - 569'),
(82, 'G - 570');

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
  `course_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `student_status` enum('NEW','OLD','NO STATUS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `course_id`, `level_id`, `student_status`) VALUES
(231, 'Lee min hoo    ', 141, 2, 'OLD'),
(232, 'kykle  manny', 142, 2, 'OLD'),
(233, 'johjoha', 143, 1, 'NEW'),
(234, 'John Cortes', 145, 3, 'NEW'),
(235, 'Manny Pacman', 150, 4, 'NEW');

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
(1, 'PREMIUM', 'Reading', '1.1', NULL, 18, 3, 141),
(2, 'PREMIUM', 'Speaking', '1.1', NULL, 19, 4, 141),
(168, 'PREMIUM', 'Grammar', '1.1', NULL, 20, 6, 141),
(169, 'PREMIUM', 'Vocabulary', '1.1', NULL, 21, 7, 141),
(170, 'PREMIUM', 'Native', 'G', NULL, 72, 9, 141),
(171, 'PREMIUM', 'Writing', 'G', NULL, 73, 10, 141),
(172, 'PREMIUM', 'Listening', 'G', NULL, 74, 11, 141),
(173, 'PREMIUM', 'Conversation', 'G', NULL, 75, 12, 141),
(178, 'INTENSIVE', 'Reading', '1.1', NULL, 22, 3, 142),
(179, 'INTENSIVE', 'Grammar', '1.1', NULL, 23, 4, 142),
(180, 'INTENSIVE', 'Vocabulary', '1.1', NULL, 24, 6, 142),
(181, 'INTENSIVE', 'Speaking', '1.1', NULL, 25, 7, 142),
(182, 'INTENSIVE', 'Writing', 'G', NULL, 76, 10, 142),
(183, 'INTENSIVE', 'Listening', 'G', NULL, 77, 11, 142),
(184, 'INTENSIVE', 'Native', 'G', NULL, 78, 12, 142),
(187, 'POWER SPEAKING', 'Speaking', '1.1', NULL, 26, 3, 144),
(188, 'POWER SPEAKING', 'Speaking Drill', '1.1', NULL, 27, 4, 144),
(189, 'POWER SPEAKING', 'Grammar', '1.1', NULL, 28, 6, 144),
(190, 'POWER SPEAKING', 'Vocabulary', '1.1', NULL, 29, 7, 144),
(192, 'POWER SPEAKING', 'Listening', 'G', NULL, 79, 8, 144),
(193, 'POWER SPEAKING', 'Native', 'G', NULL, 79, 10, 144),
(194, 'POWER SPEAKING', 'Discussion', 'G', NULL, 80, 13, 144),
(195, 'TOEIC', 'Reading', '1.1', NULL, 26, 3, 152),
(196, 'TOEIC', 'Speaking', '1.1', NULL, 29, 4, 152),
(197, 'TOEIC', 'Grammar', '1.1', NULL, 37, 6, 152),
(198, 'TOEIC', 'Vocabulary', '1.1', NULL, 37, 7, 152),
(199, 'TOEIC', 'Reading P56', 'G', NULL, 80, 10, 152),
(200, 'TOEIC', 'Reading P7', 'G', NULL, 81, 11, 152),
(201, 'TOEIC', 'Listening', 'G', NULL, 82, 12, 152),
(202, 'PRE - TOEIC', 'Reading', '1.1', NULL, 45, 3, 151),
(203, 'PRE - TOEIC ', 'Listening', '1.1', NULL, 47, 4, 151),
(204, 'PRE - TOEIC ', 'Grammar', '1.1', NULL, 49, 6, 151),
(205, 'PRE - TOEIC ', 'Vocabulary', '1.1', NULL, 47, 7, 151),
(206, 'PRE - TOEIC ', 'Native', 'G', NULL, 51, 10, 151),
(207, 'PRE - TOEIC ', 'Writing', 'G', NULL, 54, 11, 151),
(208, 'PRE - TOEIC ', 'Listening', 'G', NULL, 58, 12, 151),
(209, 'PRE - TOEIC', 'Conversation', 'G', NULL, 60, 13, 151),
(210, 'ESSENTIAL', 'Reading', '1.1', NULL, 18, 3, 143),
(211, 'ESSENTIAL', 'Speaking', '1.1', NULL, 36, 4, 143),
(212, 'ESSENTIAL', 'Grammar', '1.1', NULL, 30, 6, 143),
(213, 'ESSENTIAL', 'Vocabulary', '1.1', NULL, 33, 7, 143),
(214, 'IELTS - ACAD', 'Reading', '1.1', NULL, 40, 3, 145),
(215, 'IELTS - ACAD', 'Writing t1', '1.1', NULL, 49, 4, 145),
(216, 'IELTS - ACAD', 'Pronunciation', '1.1', NULL, 24, 6, 145),
(217, 'IELTS - ACAD', 'Speaking', '1.1', NULL, 59, 7, 145),
(218, 'IELTS - ACAD', 'Reading (IELTS INTEG)', 'G', NULL, 73, 9, 145),
(219, 'IELTS - ACAD', 'Listening', 'G', NULL, 76, 10, 145),
(220, 'IELTS - ACAD', 'Writing T2', 'G', NULL, 80, 11, 145),
(222, 'IELTS - ACAD', 'Grammar Vocabulary', 'G', NULL, 79, 12, 145),
(223, 'IELTS - GEN', 'Reading', '1.1', NULL, 22, 3, 146),
(224, 'IELTS - GEN', 'Writing T1', '1.1', NULL, 39, 4, 146),
(225, 'IELTS - GEN', 'Pronunciation', '1.1', NULL, 29, 6, 146),
(226, 'IELTS - GEN', 'Speaking', '1.1', NULL, 56, 7, 146),
(227, 'IELTS - GEN', 'Reading (IELTS INTEG)', 'G', NULL, 80, 9, 146),
(228, 'IELTS - GEN', 'Listening', 'G', NULL, 78, 10, 146),
(229, 'IELTS - GEN', 'Writing T2', 'G', NULL, 73, 11, 146),
(230, 'IELTS - GEN', 'Grammar Vocabulary', 'G', NULL, 77, 12, 146),
(231, 'PRE - IELTS - ACAD', 'Reading', '1.1', NULL, 24, 3, 147),
(232, 'PRE - IELTS - ACAD', 'Writing', '1.1', NULL, 26, 4, 147),
(233, 'PRE - IELTS - ACAD', 'Listening', '1.1', NULL, 26, 6, 147),
(234, 'PRE - IELTS - ACAD', 'Speaking', '1.1', NULL, 32, 7, 147),
(235, 'PRE - IELTS - ACAD', 'Native', 'G', NULL, 73, 9, 147),
(236, 'PRE - IELTS - ACAD', 'Writing', 'G', NULL, 74, 10, 147),
(237, 'PRE - IELTS - ACAD', 'Listening', 'G', NULL, 74, 11, 147),
(238, 'PRE - IELTS - ACAD', 'Conversation', 'G', NULL, 78, 12, 147),
(239, 'PRE - IELTS - GEN', 'Reading', '1.1', NULL, 20, 3, 150),
(240, 'PRE - IELTS - GEN', 'Writing', '1.1', NULL, 22, 4, 150),
(241, 'PRE - IELTS - GEN', 'Listening', '1.1', NULL, 31, 6, 150),
(242, 'PRE - IELTS - GEN', 'Speaking', '1.1', NULL, 34, 7, 150),
(243, 'PRE - IELTS - GEN', 'Native', 'G', NULL, 74, 9, 150),
(244, 'PRE - IELTS - GEN', 'Writing', 'G', NULL, 78, 10, 150),
(245, 'PRE - IELTS - GEN', 'Listening', 'G', NULL, 78, 11, 150),
(246, 'PRE - IELTS - GEN', 'Conversation', 'G', NULL, 73, 12, 150),
(247, 'BUSINESS', 'Speaking', '1.1', NULL, 28, 3, 153),
(248, 'BUSINESS', 'Business Grammar and Vocabulary', '1.1', NULL, 27, 4, 153),
(249, 'BUSINESS', 'Business Writing', '1.1', NULL, 31, 6, 153),
(250, 'BUSINESS', 'Professional English', '1.1', NULL, 32, 7, 153),
(251, 'BUSINESS', 'Business Integration 1', 'G', NULL, 72, 9, 153),
(252, 'BUSINESS', 'Business Integration 2', 'G', NULL, 79, 10, 153),
(253, 'BUSINESS', 'Presentation and Socialization', 'G', NULL, 80, 11, 153),
(254, 'BUSINESS', 'Native', 'G', NULL, 77, 8, 153),
(255, 'Null', 'Null ', 'Null ', NULL, 71, 15, 142);

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
(3, 'Period 1 - 8:30 am', '9:15 am'),
(4, 'Period 2 - 9:25 am', '10:10 am'),
(6, 'Period 3 - 10:20 am', '11:05 am'),
(7, 'Period 4 - 11:15 am', '12:00 pm'),
(8, 'Lunch - 12:00 pm', '1:00 pm'),
(9, 'Period 5 - 1:00 pm', '1:45 pm'),
(10, 'Period 6 - 1:55 pm', '2:40 pm'),
(11, 'Period 7 - 2:50 pm', '3:35 pm'),
(12, 'Period 8 - 3:45 pm', '4:30 pm'),
(13, 'Period 9 - 4:40 pm', '5:25 pm'),
(14, '6:00 pm', '7:00 pm'),
(15, 'NULL TIME', 'NULL TIME');

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
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_course_id` (`course_id`),
  ADD KEY `fk_level_key` (`level_id`);

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
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

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
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_level_id` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `fk_level_key` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`);

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
