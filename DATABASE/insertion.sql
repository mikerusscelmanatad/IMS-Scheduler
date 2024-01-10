-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 02:23 AM
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
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(250) NOT NULL,
  `book_type` varchar(35) NOT NULL,
  `book_course` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `book_type`, `book_course`) VALUES
(1, 'Reading Advantage 1', '1.1 READING', 'PREMIUM'),
(2, 'Reading Advantage 2', '1.1 READING', 'PREMIUM'),
(3, 'Reading Advantage 3', '1.1 READING', 'PREMIUM'),
(4, 'Reading Advantage 4', '1.1 READING', 'PREMIUM'),
(5, 'Reading Explorer 4', '1.1 READING', 'PREMIUM'),
(6, 'Speaking Juice 1', '1.1 SPEAKING', 'PREMIUM'),
(7, 'SLE 1', '1.1 SPEAKING', 'PREMIUM'),
(8, 'SLE 2 ', '1.1 SPEAKING', 'PREMIUM'),
(9, 'SLE 3', '1.1 SPEAKING', 'PREMIUM'),
(10, 'Express Yourself 1', '1.1 SPEAKING', 'PREMIUM'),
(11, 'Side by Side 1 ', '1.1 Grammar', 'PREMIUM'),
(12, 'Best Grammar in use', '1.1 Grammar', 'PREMIUM'),
(13, 'Grammar in use Inter', '1.1 Grammar', 'PREMIUM'),
(14, 'Grammar in advance', '1.1 Grammar', 'PREMIUM'),
(15, 'Destination C1', '1.1 Grammar', 'PREMIUM'),
(16, 'Elementary Vocabulary', '1.1 Grammar', 'PREMIUM'),
(17, 'Inter Vocabulary', '1.1 Grammar', 'PREMIUM'),
(18, '4000 words 5', '1.1 Grammar', 'PREMIUM'),
(19, 'Destination C1', '1.1 Grammar', 'PREMIUM'),
(20, 'Real Writing 1', 'G  Writing', 'PREMIUM'),
(21, 'Real Writing 2', 'G  Writing', 'PREMIUM'),
(23, 'Real Writing 3', 'G  Writing', 'PREMIUM'),
(24, 'Real Writing 4', 'G  Writing', 'PREMIUM'),
(25, 'Real Writing 4', 'G  Writing', 'PREMIUM'),
(26, 'Real Listening and Speaking', 'G Listening', 'PREMIUM'),
(27, 'Real Listening and Speaking 1', 'G   Listening', 'PREMIUM'),
(28, 'Real Listening and Speaking 2', 'G  Listening', 'PREMIUM'),
(29, 'Real Listening 2', 'G Listening', 'PREMIUM'),
(30, 'Real Listening 3', 'G  Listening', 'PREMIUM'),
(31, 'Listening 5', 'G  Listening', 'INTENSIVE'),
(32, 'Reading Advantage 1', '1.1 READING', 'INTENSIVE'),
(33, 'Reading Advantage 2', '1.1 READING', 'INTENSIVE'),
(34, 'Reading Advantage 3', '1.1 READING', 'INTENSIVE'),
(35, 'Reading Advantage 4', '1.1 READING', 'INTENSIVE'),
(36, 'Reading Explorer 4', '1.1 READING', 'INTENSIVE'),
(37, 'Side by Side 1', '1.1 Grammar', 'INTENSIVE'),
(38, 'Basic Grammar in use', '1.1 Grammar', 'INTENSIVE'),
(39, 'Grammar in use Inter', '1.1 Grammar', 'INTENSIVE'),
(40, 'Grammar in use Advance', '1.1 Grammar', 'INTENSIVE'),
(41, 'Destination C1', '1.1 Grammar', 'INTENSIVE'),
(42, 'Elementary Vocabulary', '1.1 Vocabulary', 'INTENSIVE'),
(43, 'Inter Vocabulary', '1.1 Vocabulary', 'INTENSIVE'),
(44, 'Inter Vocabulary', '1.1 Vocabulary', 'INTENSIVE'),
(45, '4000 words by 5', '1.1 Vocabulary', 'INTENSIVE'),
(46, 'Destination C1', '1.1 Vocabulary', 'INTENSIVE'),
(47, 'Speaking Juice 1', '1.1 SPEAKING', 'INTENSIVE'),
(48, 'SLE 1 ', '1.1 SPEAKING', 'INTENSIVE'),
(49, 'SLE 2 ', '1.1 SPEAKING', 'INTENSIVE'),
(50, 'SLE 3', '1.1 SPEAKING', 'INTENSIVE'),
(51, 'Express yourself 1', '1.1 SPEAKING', 'INTENSIVE'),
(52, 'Real Writing 1', 'G  Writing', 'INTENSIVE'),
(53, 'Real Writing 2', 'G  Writing', 'INTENSIVE'),
(54, 'Real Writing 3', 'G  Writing', 'INTENSIVE'),
(55, 'Real Writing 4', 'G  Writing', 'INTENSIVE'),
(56, 'Real Writing 4', 'G  Writing', 'INTENSIVE'),
(57, 'Real Listening and Speaking 1', 'G Listening', 'INTENSIVE'),
(58, 'Real Listening and Speaking 2', 'G  Listening', 'INTENSIVE'),
(59, 'Real Listening 2', 'G Listening', 'INTENSIVE'),
(60, 'Real listening 3', 'G  Listening', 'INTENSIVE'),
(61, 'Listening 5 ', 'G Listening', 'INTENSIVE');

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
(156, 'NO COURSE', 'NO COURSE', 'NO COURSE', 13, '2024-01-02 08:00:21', NULL);

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
(35, 'Teacher Marie', 'ESL'),
(36, 'Teacher cheryl', 'ESL'),
(37, 'Teacher Jem', 'ESL'),
(38, 'Teacher Dioni', 'Esl\r\n'),
(39, 'Teacher Nathan', 'ESL\r\n'),
(40, 'Teacher Sophia\r\n', 'ESL'),
(41, 'Teacher Nathan', 'ESL'),
(42, 'Teacher Juliet\r\n', 'ESL'),
(43, 'Teacher Marilou ', 'ESL'),
(44, 'Teacher August', 'ESL'),
(45, 'Teacher Mary joy\r\n', 'ESL');

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
(13, 'NO LEVEL', '2024-01-01 10:12:39', '');

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
  `student_status` enum('NEW STUDENT','OLD STUDENT','NO STATUS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `course_id`, `level_id`, `student_status`) VALUES
(238, 'John Cortes  ', 141, 10, 'NEW STUDENT'),
(239, 'kykle  manny ', 152, 1, 'OLD STUDENT'),
(242, 'kykle  manny', 142, 4, 'NEW STUDENT'),
(243, 'John Cortes ', 151, 3, 'NEW STUDENT'),
(244, 'Janjan ceniza  ', 150, 5, 'NEW STUDENT'),
(245, 'Pedro penbbukouko   ', 152, 2, 'NEW STUDENT'),
(251, 'manny pakaayaww ', 147, 9, 'NEW STUDENT'),
(254, 'John Cortes   ', 144, 11, 'OLD STUDENT'),
(255, 'Ryu zen ', 144, 3, 'NEW STUDENT'),
(258, 'ANN CURTIS ', 141, 3, 'NEW STUDENT');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_description` varchar(200) NOT NULL,
  `course_id` int(25) NOT NULL,
  `timer_id` int(25) NOT NULL,
  `room_id` int(11) NOT NULL,
  `faculty_id` int(25) NOT NULL,
  `book_id` int(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`subject_id`, `student_id`, `subject_description`, `course_id`, `timer_id`, `room_id`, `faculty_id`, `book_id`, `created_at`, `created_by`) VALUES
(1, 0, 'Reading', 141, 3, 19, 0, 0, '2024-01-10 01:02:46', ''),
(2, 0, 'Business Writing', 141, 4, 72, 0, 0, '2024-01-10 01:02:46', ''),
(168, 0, 'Grammmar', 141, 6, 26, 0, 0, '2024-01-10 01:02:46', ''),
(169, 0, 'Vocabulary', 141, 7, 21, 0, 0, '2024-01-10 01:02:46', ''),
(170, 0, 'LUNCH', 141, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(171, 0, 'Native', 141, 9, 73, 0, 0, '2024-01-10 01:02:46', ''),
(172, 0, 'Writing', 141, 10, 74, 0, 0, '2024-01-10 01:02:46', ''),
(173, 0, 'Listening', 141, 11, 75, 0, 0, '2024-01-10 01:02:46', ''),
(178, 0, 'Conversation', 141, 12, 78, 0, 0, '2024-01-10 01:02:46', ''),
(179, 0, 'Reading', 142, 3, 23, 0, 0, '2024-01-10 01:02:46', ''),
(180, 0, 'Grammar', 142, 4, 24, 0, 0, '2024-01-10 01:02:46', ''),
(181, 0, 'Vocabulary', 142, 6, 25, 0, 0, '2024-01-10 01:02:46', ''),
(182, 0, 'Vocabulary', 142, 7, 60, 0, 0, '2024-01-10 01:02:46', ''),
(183, 0, 'LUNCH', 142, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(184, 0, 'Speaking', 142, 10, 67, 0, 0, '2024-01-10 01:02:46', ''),
(187, 0, 'Speaking', 142, 10, 36, 0, 0, '2024-01-10 01:02:46', ''),
(188, 0, 'Writing', 142, 11, 80, 0, 0, '2024-01-10 01:02:46', ''),
(189, 0, 'Listening', 142, 12, 78, 0, 0, '2024-01-10 01:02:46', ''),
(190, 0, 'Native', 142, 13, 82, 0, 0, '2024-01-10 01:02:46', ''),
(192, 0, 'Native', 144, 3, 24, 0, 0, '2024-01-10 01:02:46', ''),
(193, 0, 'Speaking Drill', 144, 4, 38, 0, 0, '2024-01-10 01:02:46', ''),
(194, 0, 'Grammar', 144, 6, 27, 0, 0, '2024-01-10 01:02:46', ''),
(195, 0, 'Vocabulary', 144, 7, 66, 0, 0, '2024-01-10 01:02:46', ''),
(196, 0, 'LUNCH', 144, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(197, 0, 'Listening', 144, 9, 78, 0, 0, '2024-01-10 01:02:46', ''),
(198, 0, 'Listening', 144, 10, 80, 0, 0, '2024-01-10 01:02:46', ''),
(199, 0, 'Native', 144, 11, 78, 0, 0, '2024-01-10 01:02:46', ''),
(200, 0, 'Discussion\r\n', 144, 12, 80, 0, 0, '2024-01-10 01:02:46', ''),
(201, 0, 'Reading', 152, 3, 37, 0, 0, '2024-01-10 01:02:46', ''),
(202, 0, 'Speaking', 152, 4, 40, 0, 0, '2024-01-10 01:02:46', ''),
(203, 0, 'Grammar', 152, 6, 40, 0, 0, '2024-01-10 01:02:46', ''),
(204, 0, 'Vocabulary', 152, 7, 51, 0, 0, '2024-01-10 01:02:46', ''),
(205, 0, 'LUNCH', 152, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(206, 0, 'Reading P56', 152, 9, 80, 0, 0, '2024-01-10 01:02:46', ''),
(207, 0, 'Reading P7', 152, 10, 79, 0, 0, '2024-01-10 01:02:46', ''),
(208, 0, 'Listening', 152, 11, 79, 0, 0, '2024-01-10 01:02:46', ''),
(209, 0, 'Listening', 152, 12, 80, 0, 0, '2024-01-10 01:02:46', ''),
(210, 0, 'Reading', 151, 3, 18, 0, 0, '2024-01-10 01:02:46', ''),
(211, 0, 'Listening', 151, 4, 36, 0, 0, '2024-01-10 01:02:46', ''),
(212, 0, 'Grammar', 151, 6, 30, 0, 0, '2024-01-10 01:02:46', ''),
(213, 0, 'Vocabulary', 151, 7, 33, 0, 0, '2024-01-10 01:02:46', ''),
(214, 0, 'LUNCH', 151, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(215, 0, 'Native', 151, 9, 78, 0, 0, '2024-01-10 01:02:46', ''),
(216, 0, 'Writing', 151, 10, 79, 0, 0, '2024-01-10 01:02:46', ''),
(217, 0, 'Listening', 151, 11, 80, 0, 0, '2024-01-10 01:02:46', ''),
(218, 0, 'Conversation', 151, 12, 73, 0, 0, '2024-01-10 01:02:46', ''),
(219, 0, 'Reading', 143, 3, 19, 0, 0, '2024-01-10 01:02:46', ''),
(220, 0, 'Speaking', 143, 4, 25, 0, 0, '2024-01-10 01:02:46', ''),
(222, 0, 'Grammar', 143, 6, 33, 0, 0, '2024-01-10 01:02:46', ''),
(223, 0, 'Vocabulary', 143, 7, 35, 0, 0, '2024-01-10 01:02:46', ''),
(224, 0, 'Reading', 145, 3, 39, 0, 0, '2024-01-10 01:02:46', ''),
(225, 0, 'Writing T1', 145, 4, 29, 0, 0, '2024-01-10 01:02:46', ''),
(226, 0, 'Pronunciation', 145, 6, 56, 0, 0, '2024-01-10 01:02:46', ''),
(227, 0, 'Speaking', 145, 7, 65, 0, 0, '2024-01-10 01:02:46', ''),
(228, 0, 'LUNCH', 145, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(229, 0, 'Reading (IELTS INTEG)', 145, 9, 73, 0, 0, '2024-01-10 01:02:46', ''),
(230, 0, 'Listening', 145, 10, 77, 0, 0, '2024-01-10 01:02:46', ''),
(231, 0, 'Writing T2', 145, 11, 76, 0, 0, '2024-01-10 01:02:46', ''),
(232, 0, 'Grammar Voca', 145, 12, 80, 0, 0, '2024-01-10 01:02:46', ''),
(233, 0, 'Reading', 146, 3, 26, 0, 0, '2024-01-10 01:02:46', ''),
(234, 0, 'Writing T1', 146, 4, 32, 0, 0, '2024-01-10 01:02:46', ''),
(235, 0, 'Pronunciation', 146, 6, 34, 0, 0, '2024-01-10 01:02:46', ''),
(236, 0, 'Speaking', 146, 7, 36, 0, 0, '2024-01-10 01:02:46', ''),
(237, 0, 'LUNCH', 146, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(238, 0, 'Reading (IELTS INTEG)', 146, 9, 78, 0, 0, '2024-01-10 01:02:46', ''),
(239, 0, 'Listening', 146, 10, 78, 0, 0, '2024-01-10 01:02:46', ''),
(240, 0, 'Writing T2', 146, 11, 74, 0, 0, '2024-01-10 01:02:46', ''),
(241, 0, 'Grammar Voca', 146, 12, 77, 0, 0, '2024-01-10 01:02:46', ''),
(243, 0, 'Reading', 147, 3, 34, 0, 0, '2024-01-10 01:02:46', ''),
(244, 0, 'Writing', 147, 4, 33, 0, 0, '2024-01-10 01:02:46', ''),
(245, 0, 'Listening', 147, 6, 37, 0, 0, '2024-01-10 01:02:46', ''),
(246, 0, 'Speaking', 147, 7, 55, 0, 0, '2024-01-10 01:02:46', ''),
(247, 0, 'LUNCH', 147, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(248, 0, 'Native', 147, 9, 78, 0, 0, '2024-01-10 01:02:46', ''),
(249, 0, 'Writing', 147, 10, 77, 0, 0, '2024-01-10 01:02:46', ''),
(250, 0, 'Listening', 147, 11, 78, 0, 0, '2024-01-10 01:02:46', ''),
(251, 0, 'Conversation', 147, 12, 72, 0, 0, '2024-01-10 01:02:46', ''),
(252, 0, 'Reading', 150, 3, 29, 0, 0, '2024-01-10 01:02:46', ''),
(253, 0, 'Writing', 150, 4, 34, 0, 0, '2024-01-10 01:02:46', ''),
(254, 0, 'Listening', 150, 6, 52, 0, 0, '2024-01-10 01:02:46', ''),
(255, 0, 'Speaking', 150, 7, 56, 0, 0, '2024-01-10 01:02:46', ''),
(256, 0, 'LUNCH', 150, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(257, 0, 'Native', 150, 9, 73, 0, 0, '2024-01-10 01:02:46', ''),
(258, 0, 'Writing', 150, 10, 74, 0, 0, '2024-01-10 01:02:46', ''),
(259, 0, 'Listening', 150, 11, 80, 0, 0, '2024-01-10 01:02:46', ''),
(260, 0, 'Conversation', 150, 12, 75, 0, 0, '2024-01-10 01:02:46', ''),
(261, 0, 'Speaking', 153, 3, 18, 0, 0, '2024-01-10 01:02:46', ''),
(262, 0, 'Business Grammar and Vocabulary', 153, 4, 25, 0, 0, '2024-01-10 01:02:46', ''),
(263, 0, 'Business Writing', 153, 6, 30, 0, 0, '2024-01-10 01:02:46', ''),
(264, 0, 'Professional English', 153, 7, 32, 0, 0, '2024-01-10 01:02:46', ''),
(265, 0, 'LUNCH', 153, 8, 71, 0, 0, '2024-01-10 01:02:46', ''),
(266, 0, 'Business Integration 1', 153, 9, 73, 0, 0, '2024-01-10 01:02:46', ''),
(267, 0, 'Business Integration 2', 153, 10, 75, 0, 0, '2024-01-10 01:02:46', ''),
(268, 0, 'Presentation and Socialization', 153, 11, 79, 0, 0, '2024-01-10 01:02:46', ''),
(269, 0, 'Native', 153, 12, 80, 0, 0, '2024-01-10 01:02:46', '');

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
  `course_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_type`, `subject_description`, `subject_code`, `updated_at`, `room_id`, `timer_id`, `course_id`, `faculty_id`, `book_id`) VALUES
(1, 'PREMIUM', 'Reading', '1.1', NULL, 26, 3, 141, 0, 0),
(2, 'PREMIUM', 'Speaking', '1.1', NULL, 19, 4, 141, 0, 0),
(168, 'PREMIUM', 'Grammmar', '1.1', NULL, 26, 6, 141, 0, 0),
(169, 'PREMIUM', 'Vocabulary', '1.1', NULL, 21, 7, 141, 0, 0),
(170, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 141, 0, 0),
(171, 'PREMIUM', 'Native', 'G', NULL, 73, 9, 141, 0, 0),
(172, 'PREMIUM', 'Writing', 'G', NULL, 74, 10, 141, 0, 0),
(173, 'PREMIUM', 'Listening', 'G', NULL, 75, 11, 141, 0, 0),
(178, 'PREMIUM', 'Conversation', 'G', NULL, 78, 12, 141, 0, 0),
(179, 'INTENSIVE', 'Reading', '1.1', NULL, 23, 3, 142, 0, 0),
(180, 'INTENSIVE', 'Grammar', '1.1', NULL, 24, 4, 142, 0, 0),
(181, 'INTENSIVE', 'Vocabulary', '1.1', NULL, 25, 6, 142, 0, 0),
(182, 'INTENSIVE', 'Vocabulary', '1.1', NULL, 60, 7, 142, 0, 0),
(183, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 142, 0, 0),
(184, 'INTENSIVE', 'Speaking', '1.1', NULL, 67, 10, 142, 0, 0),
(187, 'INTENSIVE', 'Speaking', '1.1', NULL, 36, 10, 142, 0, 0),
(188, 'INTENSIVE', 'Writing', 'G', NULL, 80, 11, 142, 0, 0),
(189, 'INTENSIVE', 'Listening', 'G', NULL, 78, 12, 142, 0, 0),
(190, 'INTENSIVE', 'Native', 'G', NULL, 82, 13, 142, 0, 0),
(192, 'POWER SPEAKING', 'Speaking', '1.1', NULL, 24, 3, 144, 0, 0),
(193, 'POWER SPEAKING', 'Speaking Drill', '1.1', NULL, 38, 4, 144, 0, 0),
(194, 'POWER SPEAKING', 'Grammar', '1.1', NULL, 27, 6, 144, 0, 0),
(195, 'POWER SPEAKING', 'Vocabulary', '1.1', NULL, 66, 7, 144, 0, 0),
(196, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 144, 0, 0),
(197, 'POWER SPEAKING', 'Listening', 'G', NULL, 78, 9, 144, 0, 0),
(198, 'POWER SPEAKING', 'Listening', 'G', NULL, 80, 10, 144, 0, 0),
(199, 'POWER SPEAKING', 'Native', 'G', NULL, 78, 11, 144, 0, 0),
(200, 'POWER SPEAKING', 'Discussion\r\n', 'G', NULL, 80, 12, 144, 0, 0),
(201, 'TOEIC', 'Reading', '1.1', NULL, 37, 3, 152, 0, 0),
(202, 'TOEIC', 'Speaking', '1.1', NULL, 40, 4, 152, 0, 0),
(203, 'TOEIC ', 'Grammar', '1.1', NULL, 40, 6, 152, 0, 0),
(204, 'TOEIC ', 'Vocabulary', '1.1', NULL, 51, 7, 152, 0, 0),
(205, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 152, 0, 0),
(206, 'TOEIC ', 'Reading P56', 'G', NULL, 80, 9, 152, 0, 0),
(207, 'TOEIC ', 'Reading P7', 'G', NULL, 79, 10, 152, 0, 0),
(208, 'TOEIC ', 'Listening', 'G', NULL, 79, 11, 152, 0, 0),
(209, 'TOEIC', 'Listening', 'G', NULL, 80, 12, 152, 0, 0),
(210, 'PRE - TOEIC', 'Reading', '1.1', NULL, 18, 3, 151, 0, 0),
(211, 'PRE - TOEIC', 'Listening', '1.1', NULL, 36, 4, 151, 0, 0),
(212, 'PRE - TOEIC', 'Grammar', '1.1', NULL, 30, 6, 151, 0, 0),
(213, 'PRE - TOEIC', 'Vocabulary', '1.1', NULL, 33, 7, 151, 0, 0),
(214, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 151, 0, 0),
(215, 'PRE - TOEIC', 'Native', 'G', NULL, 78, 9, 151, 0, 0),
(216, 'PRE - TOEIC', 'Writing', 'G', NULL, 79, 10, 151, 0, 0),
(217, 'PRE - TOEIC', 'Listening', 'G', NULL, 80, 11, 151, 0, 0),
(218, 'PRE - TOEIC ', 'Conversation', 'G', NULL, 73, 12, 151, 0, 0),
(219, 'ESSENTIALS', 'Reading', '1.1', NULL, 19, 3, 143, 0, 0),
(220, 'ESSENTIALS', 'Speaking', '1.1', NULL, 25, 4, 143, 0, 0),
(222, 'ESSENTIALS', 'Grammar', '1.1', NULL, 33, 6, 143, 0, 0),
(223, 'ESSENTIALS', 'Vocabulary', '1.1', NULL, 35, 7, 143, 0, 0),
(224, 'IELTS - ACAD', 'Reading', '1.1', NULL, 39, 3, 145, 0, 0),
(225, 'IELTS - ACAD', 'Writing T1', '1.1', NULL, 29, 4, 145, 0, 0),
(226, 'IELTS - ACAD', 'Pronunciation', '1.1', NULL, 56, 6, 145, 0, 0),
(227, 'IELTS - ACAD', 'Speaking', '1.1', NULL, 65, 7, 145, 0, 0),
(228, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 145, 0, 0),
(229, 'IELTS - ACAD', 'Reading (IELTS INTEG)', 'G', NULL, 73, 9, 145, 0, 0),
(230, 'IELTS - ACAD', 'Listening', 'G', NULL, 77, 10, 145, 0, 0),
(231, 'IELTS - ACAD', 'Writing T2', 'G', NULL, 76, 11, 145, 0, 0),
(232, 'IELTS - ACAD', 'Grammar Voca', 'G', NULL, 80, 12, 145, 0, 0),
(233, 'IELTS - GEN', 'Reading', '1.1', NULL, 26, 3, 146, 0, 0),
(234, 'IELTS - GEN', 'Writing T1', '1.1', NULL, 32, 4, 146, 0, 0),
(235, 'IELTS - GEN', 'Pronunciation', '1.1', NULL, 34, 6, 146, 0, 0),
(236, 'IELTS - GEN', 'Speaking', '1.1', NULL, 36, 7, 146, 0, 0),
(237, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 146, 0, 0),
(238, 'IELTS - GEN', 'Reading (IELTS INTEG)', 'G', NULL, 78, 9, 146, 0, 0),
(239, 'IELTS - GEN', 'Listening', 'G', NULL, 78, 10, 146, 0, 0),
(240, 'IELTS - GEN', 'Writing T2', 'G', NULL, 74, 11, 146, 0, 0),
(241, 'IELTS - GEN', 'Grammar Voca', 'G', NULL, 77, 12, 146, 0, 0),
(243, 'PRE - IELTS - ACAD', 'Reading', '1.1', NULL, 34, 3, 147, 0, 0),
(244, 'PRE - IELTS - ACAD', 'Writing', '1.1', NULL, 33, 4, 147, 0, 0),
(245, 'PRE - IELTS - ACAD', 'Listening', '1.1', NULL, 37, 6, 147, 0, 0),
(246, 'PRE - IELTS - ACAD', 'Speaking', '1.1', NULL, 55, 7, 147, 0, 0),
(247, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 147, 0, 0),
(248, 'PRE - IELTS - ACAD', 'Native', 'G', NULL, 78, 9, 147, 0, 0),
(249, 'PRE - IELTS - ACAD', 'Writing', 'G', NULL, 77, 10, 147, 0, 0),
(250, 'PRE - IELTS - ACAD', 'Listening', 'G', NULL, 78, 11, 147, 0, 0),
(251, 'PRE - IELTS - ACAD', 'Conversation', 'G', NULL, 72, 12, 147, 0, 0),
(252, 'PRE - IELTS - GEN', 'Reading', '1.1', NULL, 29, 3, 150, 0, 0),
(253, 'PRE - IELTS - GEN', 'Writing', '1.1', NULL, 34, 4, 150, 0, 0),
(254, 'PRE - IELTS - GEN', 'Listening', '1.1', NULL, 52, 6, 150, 0, 0),
(255, 'PRE - IELTS - GEN', 'Speaking', '1.1', NULL, 56, 7, 150, 0, 0),
(256, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 150, 0, 0),
(257, 'PRE - IELTS - GEN', 'Native', 'G', NULL, 73, 9, 150, 0, 0),
(258, 'PRE - IELTS - GEN', 'Writing', 'G', NULL, 74, 10, 150, 0, 0),
(259, 'PRE - IELTS - GEN', 'Listening', 'G', NULL, 80, 11, 150, 0, 0),
(260, 'PRE - IELTS - GEN', 'Conversation', 'G', NULL, 75, 12, 150, 0, 0),
(261, 'BUSINESS', 'Speaking', '1.1', NULL, 18, 3, 153, 0, 0),
(262, 'BUSINESS', 'Business Grammar and Vocabulary', '1.1', NULL, 25, 4, 153, 0, 0),
(263, 'BUSINESS', 'Business Writing', '1.1', NULL, 30, 6, 153, 0, 0),
(264, 'BUSINESS', 'Professional English', '1.1', NULL, 32, 7, 153, 0, 0),
(265, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 153, 0, 0),
(266, 'BUSINESS', 'Business Integration 1', 'G', NULL, 73, 9, 153, 0, 0),
(267, 'BUSINESS', 'Business Integration 2', 'G', NULL, 75, 10, 153, 0, 0),
(268, 'BUSINESS', 'Presentation and Socialization', 'G', NULL, 79, 11, 153, 0, 0),
(269, 'BUSINESS', 'Native', 'G', NULL, 80, 12, 153, 0, 0);

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
(3, '8:30', '9:15'),
(4, '9:25', '10:10'),
(6, '10:20', '11:05'),
(7, '11:15', '12:00'),
(8, 'LUNCH', 'TIME'),
(9, '1:00', '1:45'),
(10, '1:55', '2:40'),
(11, '2:50', '3:35'),
(12, '3:45', '4:30'),
(13, '4:40', '5:25'),
(14, '6:00 pm', '7:00 pm'),
(15, 'NO TIME', 'NO TIME');

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
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

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
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `faculty_id` (`faculty_id`);

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
  ADD PRIMARY KEY (`subject_id`,`student_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `timer_id` (`timer_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_id` (`subject_id`),
  ADD KEY `fk_room_id` (`room_id`),
  ADD KEY `fk_period_id` (`timer_id`),
  ADD KEY `fk_faculty_id` (`faculty_id`) USING BTREE,
  ADD KEY `fk_course_id` (`course_id`) USING BTREE,
  ADD KEY `fk_book_id` (`book_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

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
