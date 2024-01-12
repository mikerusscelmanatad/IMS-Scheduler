-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 11:03 AM
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
(1, 'admin', '$2y$10$b//ZG23JU3u7WGZdhSUBpO3n5a8ywpsBTrzlKauL/qjYdK.A8ySG6'),
(2, 'test', '$2y$10$EuGPRJ.FWTdFpWtNUSmH.e5bCiV2M2x.rPTTIOfCs.6rnU0uFCn0C');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(1000) NOT NULL,
  `course` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `book_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `course`, `level`, `book_type`) VALUES
(3, 'Reading Advantage 1', 'PREMIUM', 'Beginner 1', '1.1 READING'),
(4, 'Reading Advantage 1', 'PREMIUM', 'Elementary 2', '1.1 READING'),
(5, 'Reading Advantage 1', 'PREMIUM', 'Elementary 3', '1.1 READING'),
(6, 'Reading Advantage 2', 'PREMIUM', 'Pre Intermediate 4', '1.1 READING'),
(7, 'Reading Advantage 3', 'PREMIUM', 'Intermediate 5', '1.1 READING'),
(8, 'Reading Advantage 3', 'PREMIUM', 'Intermediate 6', '1.1 READING'),
(9, 'Reading Advantage 4', 'PREMIUM', 'Upper Intermediate 7', '1.1 READING'),
(10, 'Reading Advantage 4', 'PREMIUM', 'Upper Intermediate 8', '1.1 READING'),
(11, 'Reading Explorer 4', 'PREMIUM', 'Advanced 9', '1.1 READING'),
(12, 'Reading Explorer 4', 'PREMIUM', 'Advanced 10', '1.1 READING'),
(13, 'Reading Explorer 4', 'PREMIUM', 'Advanced 11', '1.1 READING'),
(14, 'Reading Explorer 4', 'PREMIUM', 'Advanced 12', '1.1 READING'),
(15, 'Speaking Juice 1', 'PREMIUM', 'Beginner 1', '1.1 SPEAKING'),
(16, 'Speaking Juice 1', 'PREMIUM', 'Elementary 2', '1.1 SPEAKING'),
(17, 'Speaking Juice 1', 'PREMIUM', 'Elementary 3', '1.1 SPEAKING'),
(18, 'SLE 1', 'PREMIUM', 'Pre Intermediate 4', '1.1 SPEAKING'),
(19, 'SLE 2', 'PREMIUM', 'Intermediate 5', '1.1 SPEAKING'),
(20, 'SLE 2', 'PREMIUM', 'Intermediate 6', '1.1 SPEAKING'),
(21, 'SLE 3', 'PREMIUM', 'Upper Intermediate 7', '1.1 SPEAKING'),
(22, 'SLE 3', 'PREMIUM', 'Upper Intermediate 8', '1.1 SPEAKING'),
(23, 'Express yourself 1', 'PREMIUM', 'Advanced 9', '1.1 SPEAKING'),
(24, 'Express yourself 1', 'PREMIUM', 'Advanced 10', '1.1 SPEAKING'),
(25, 'Express yourself 1', 'PREMIUM', 'Advanced 11', '1.1 SPEAKING'),
(26, 'Express yourself 1', 'PREMIUM', 'Advanced 12', '1.1 SPEAKING'),
(27, 'Side by Side 1', 'PREMIUM', 'Beginner 1', '1.1 Grammar'),
(28, 'Side by Side 1', 'PREMIUM', 'Elementary 2', '1.1 Grammar'),
(29, 'Side by Side 1', 'PREMIUM', 'Elementary 3', '1.1 Grammar'),
(30, 'Basic Grammar In use', 'PREMIUM', 'Pre Intermediate 4', '1.1 Grammar'),
(31, 'Grammar in use Intermediate', 'PREMIUM', 'Intermediate 5', '1.1 Grammar'),
(32, 'Grammar in use Intermediate', 'PREMIUM', 'Intermediate 6', '1.1 Grammar'),
(33, 'Grammar in use Advanced', 'PREMIUM', 'Upper Intermediate 7', '1.1 Grammar'),
(34, 'Grammar in use Advanced', 'PREMIUM', 'Upper Intermediate 8', '1.1 Grammar'),
(35, 'Destination C1', 'PREMIUM', 'Advanced 9', '1.1 Grammar'),
(36, 'Destination C1', 'PREMIUM', 'Advanced 10', '1.1 Grammar'),
(37, 'Destination C1', 'PREMIUM', 'Advanced 11', '1.1 Grammar'),
(38, 'Destination C1', 'PREMIUM', 'Advanced 12', '1.1 Grammar'),
(39, 'Elementary Vocabulary', 'PREMIUM', 'Beginner 1', '1.1 Vocabulary'),
(40, 'Elementary Vocabulary', 'PREMIUM', 'Elementary 2', '1.1 Vocabulary'),
(41, 'Elementary Vocabulary', 'PREMIUM', 'Elementary 3', '1.1 Vocabulary'),
(42, 'Inter Vocabulary', 'PREMIUM', 'Pre Intermediate 4', '1.1 Vocabulary'),
(43, 'Inter vocabulary', 'PREMIUM', 'Intermediate 5', '1.1 Vocabulary'),
(44, 'Inter vocabulary', 'PREMIUM', 'Intermediate 6', '1.1 Vocabulary'),
(45, '4000 words 5', 'PREMIUM', 'Upper Intermediate 7', '1.1 Vocabulary'),
(46, '4000 words 5', 'PREMIUM', 'Upper Intermediate 8', '1.1 Vocabulary'),
(47, 'Destination C1', 'PREMIUM', 'Advanced 9', '1.1 Vocabulary'),
(48, 'Destination C1', 'PREMIUM', 'Advanced 10', '1.1 Vocabulary'),
(49, 'Destination C1', 'PREMIUM', 'Advanced 11', '1.1 Vocabulary'),
(50, 'Destination C1', 'PREMIUM', 'Advanced 12', '1.1 Vocabulary'),
(51, 'Real Writing 1', 'PREMIUM', 'Beginner 1', 'G  Writing'),
(52, 'Real Writing 1', 'PREMIUM', 'Elementary 2', 'G Listening'),
(53, 'Real Writing 1', 'PREMIUM', 'Elementary 3', 'G  Writing'),
(54, 'Real Writing 2', 'PREMIUM', 'Pre Intermediate 4', 'G  Writing'),
(55, 'Real Writing 3', 'PREMIUM', 'Intermediate 5', 'G  Writing'),
(56, 'Real Writing 3', 'PREMIUM', 'Intermediate 6', 'G  Writing'),
(57, 'Real Writing 4', 'PREMIUM', 'Upper Intermediate 7', 'G  Writing'),
(58, 'Real Writing 4', 'PREMIUM', 'Upper Intermediate 8', 'G  Writing'),
(59, 'Real Writing 4', 'PREMIUM', 'Advanced 9', 'G  Writing'),
(60, 'Real Writing 4', 'PREMIUM', 'Advanced 10', 'G  Writing'),
(61, 'Real Writing 4', 'PREMIUM', 'Advanced 11', 'G  Writing'),
(62, 'Real Writing 4', 'PREMIUM', 'Advanced 12', 'G  Writing'),
(63, 'Real Listening and Speaking 1', 'PREMIUM', 'Beginner 1', 'G  Listening'),
(64, 'Real Listening and Speaking 1', 'PREMIUM', 'Elementary 2', 'G Listening'),
(65, 'Real Listening and Speaking 1', 'PREMIUM', 'Elementary 3', 'G  Listening'),
(66, 'Real Listening and Speaking 1', 'PREMIUM', 'Pre Intermediate 4', 'G Listening'),
(67, 'Real Listening 2', 'PREMIUM', 'Intermediate 5', 'G  Listening'),
(68, 'Real Listening 2', 'PREMIUM', 'Intermediate 6', 'G Listening'),
(69, 'Real Listening 3', 'PREMIUM', 'Upper Intermediate 7', 'G  Listening'),
(70, 'Real Listening 3', 'PREMIUM', 'Upper Intermediate 8', 'G Listening'),
(71, 'Listening 5', 'PREMIUM', 'Advanced 9', 'G  Listening'),
(72, 'Listening 5', 'PREMIUM', 'Advanced 10', 'G Listening'),
(73, 'Listening 5', 'PREMIUM', 'Advanced 11', 'G  Listening'),
(74, 'Listening 5', 'PREMIUM', 'Advanced 12', 'G Listening'),
(75, 'Reading Advantage 1', 'INTENSIVE', 'Beginner 1', '1.1 READING'),
(76, 'Reading Advantage 1', 'INTENSIVE', 'Elementary 2', '1.1 READING'),
(77, 'Reading Advantage 1', 'INTENSIVE', 'Elementary 3', '1.1 READING'),
(78, 'Reading Advantage 2', 'PREMIUM', 'Pre Intermediate 4', '1.1 READING'),
(79, 'Reading Advantage 3', 'INTENSIVE', 'Intermediate 5', '1.1 READING'),
(80, 'Reading Advantage 3', 'INTENSIVE', 'Intermediate 6', '1.1 READING'),
(81, 'Reading Advantage 4', 'INTENSIVE', 'Upper Intermediate 7', '1.1 READING'),
(82, 'Reading Advantage 4', 'INTENSIVE', 'Upper Intermediate 8', '1.1 READING'),
(83, 'Reading explorer 4', 'INTENSIVE', 'Advanced 9', '1.1 READING'),
(84, 'Reading explorer 4', 'INTENSIVE', 'Advanced 10', '1.1 READING'),
(85, 'Reading explorer 4', 'INTENSIVE', 'Advanced 11', '1.1 READING'),
(86, 'Reading explorer 4', 'INTENSIVE', 'Advanced 12', '1.1 READING'),
(87, 'Side by Side 1', 'INTENSIVE', 'Beginner 1', '1.1 Grammar'),
(88, 'Side by Side 1', 'INTENSIVE', 'Elementary 2', '1.1 Grammar'),
(89, 'Side by Side 1', 'INTENSIVE', 'Elementary 3', '1.1 Grammar'),
(90, 'Basic Grammar In use', 'INTENSIVE', 'Pre Intermediate 4', '1.1 Grammar'),
(91, 'Grammar in use Inter', 'INTENSIVE', 'Intermediate 5', '1.1 Grammar'),
(92, 'Grammar in use Inter', 'INTENSIVE', 'Intermediate 6', '1.1 Grammar'),
(93, 'Grammar in use Advanced', 'INTENSIVE', 'Upper Intermediate 7', '1.1 Grammar'),
(94, 'Grammar in use Advanced', 'INTENSIVE', 'Upper Intermediate 8', '1.1 Grammar'),
(95, 'Destination C1', 'INTENSIVE', 'Advanced 9', '1.1 Grammar'),
(96, 'Destination C1', 'INTENSIVE', 'Advanced 10', '1.1 Grammar'),
(97, 'Destination C1', 'INTENSIVE', 'Advanced 11', '1.1 Grammar'),
(98, 'Destination C1', 'INTENSIVE', 'Advanced 12', '1.1 Grammar'),
(99, 'Elementary Vocabulary', 'INTENSIVE', 'Beginner 1', '1.1 Vocabulary'),
(100, 'Elementary Vocabulary', 'INTENSIVE', 'Elementary 2', '1.1 Vocabulary'),
(101, 'Elementary Vocabulary', 'INTENSIVE', 'Elementary 3', '1.1 Vocabulary'),
(102, 'Inter Vocabulary', 'INTENSIVE', 'Pre Intermediate 4', '1.1 Vocabulary'),
(103, 'Inter Vocabulary', 'INTENSIVE', 'Intermediate 5', '1.1 Vocabulary'),
(104, 'Inter Vocabulary', 'INTENSIVE', 'Intermediate 6', '1.1 Vocabulary'),
(105, '4000 words 5', 'INTENSIVE', 'Upper Intermediate 7', '1.1 Vocabulary'),
(106, '4000 words 5', 'INTENSIVE', 'Upper Intermediate 8', '1.1 Vocabulary'),
(107, 'Destination C1', 'INTENSIVE', 'Advanced 9', '1.1 Vocabulary'),
(108, 'Destination C1', 'INTENSIVE', 'Advanced 10', '1.1 Vocabulary'),
(109, 'Destination C1', 'INTENSIVE', 'Advanced 11', '1.1 Vocabulary'),
(110, 'Destination C1', 'INTENSIVE', 'Advanced 12', '1.1 Vocabulary'),
(111, 'Speaking Juice 1', 'INTENSIVE', 'Beginner 1', '1.1 SPEAKING'),
(112, 'Speaking Juice 1', 'INTENSIVE', 'Elementary 2', '1.1 SPEAKING'),
(113, 'Speaking Juice 1', 'INTENSIVE', 'Elementary 3', '1.1 SPEAKING'),
(114, 'SLE 1', 'INTENSIVE', 'Pre Intermediate 4', '1.1 SPEAKING'),
(115, 'SLE 2', 'INTENSIVE', 'Intermediate 5', '1.1 SPEAKING'),
(116, 'SLE 2', 'INTENSIVE', 'Intermediate 6', '1.1 SPEAKING'),
(117, 'SLE 3', 'INTENSIVE', 'Upper Intermediate 7', '1.1 SPEAKING'),
(118, 'SLE 3', 'INTENSIVE', 'Upper Intermediate 8', '1.1 SPEAKING'),
(119, 'Express yourself 1', 'INTENSIVE', 'Advanced 9', '1.1 SPEAKING'),
(120, 'Express yourself 1', 'INTENSIVE', 'Advanced 10', '1.1 SPEAKING'),
(121, 'Express yourself 1', 'INTENSIVE', 'Advanced 11', '1.1 SPEAKING'),
(122, 'Express yourself 1', 'INTENSIVE', 'Advanced 12', '1.1 SPEAKING'),
(123, 'Real Writing 1', 'INTENSIVE', 'Beginner 1', 'G  Writing'),
(124, 'Real Writing 1', 'INTENSIVE', 'Elementary 2', 'G  Writing'),
(125, 'Real Writing 1', 'INTENSIVE', 'Elementary 3', 'G  Writing'),
(126, 'Real Writing 2', 'INTENSIVE', 'Pre Intermediate 4', 'G  Writing'),
(127, 'Real Writing 3', 'INTENSIVE', 'Intermediate 5', 'G  Writing'),
(128, 'Real Writing 3', 'INTENSIVE', 'Intermediate 6', 'G  Writing'),
(129, 'Real Writing 4', 'INTENSIVE', 'Upper Intermediate 7', 'G  Writing'),
(130, 'Real Writing 4', 'INTENSIVE', 'Upper Intermediate 8', 'G  Writing'),
(131, 'Real Writing 4', 'INTENSIVE', 'Advanced 9', 'G  Writing'),
(132, 'Real Writing 4', 'INTENSIVE', 'Advanced 10', 'G  Writing'),
(133, 'Real Writing 4', 'INTENSIVE', 'Advanced 11', 'G  Writing'),
(134, 'Real Writing 4', 'INTENSIVE', 'Advanced 12', 'G  Writing'),
(135, 'Real Listening and Speaking 1', 'INTENSIVE', 'Beginner 1', 'G  Listening'),
(136, 'Real Listening and Speaking 1', 'INTENSIVE', 'Elementary 2', 'G Listening'),
(138, 'Real Listening and Speaking 1', 'INTENSIVE', 'Elementary 3', 'G  Listening'),
(139, 'Real Listening and Speaking 1', 'INTENSIVE', 'Pre Intermediate 4', 'G Listening'),
(140, 'Real Listening 2', 'INTENSIVE', 'Intermediate 5', 'G   Listening'),
(141, 'Real Listening 2', 'INTENSIVE', 'Intermediate 6', 'G Listening'),
(142, 'Real Listening 3', 'INTENSIVE', 'Upper Intermediate 7', 'G  Listening'),
(143, 'Real Listening 3', 'INTENSIVE', 'Upper Intermediate 8', 'G Listening'),
(144, 'Listening 5', 'INTENSIVE', 'Advanced 9', 'G  Listening'),
(145, 'Listening 5', 'INTENSIVE', 'Advanced 10', 'G Listening'),
(146, 'Listening 5', 'INTENSIVE', 'Advanced 11', 'G  Listening'),
(147, 'Listening 5', 'INTENSIVE', 'Advanced 12', 'G Listening'),
(148, 'Speaking Juice 1', 'POWER SPEAKING', 'Beginner 1', '1.1 SPEAKING'),
(149, 'Speaking Juice 1', 'POWER SPEAKING', 'Elementary 2', '1.1 SPEAKING'),
(150, 'Speaking Juice 1', 'POWER SPEAKING', 'Elementary 3', '1.1 SPEAKING'),
(151, 'Speaking Juice 3', 'POWER SPEAKING', 'Pre Intermediate 4', '1.1 SPEAKING'),
(152, 'SLE 1', 'POWER SPEAKING', 'Intermediate 5', '1.1 SPEAKING'),
(153, 'SLE 1', 'POWER SPEAKING', 'Intermediate 6', '1.1 SPEAKING'),
(154, 'SLE 2', 'POWER SPEAKING', 'Upper Intermediate 7', '1.1 SPEAKING'),
(155, 'SLE 2', 'POWER SPEAKING', 'Upper Intermediate 8', '1.1 SPEAKING'),
(156, 'SLE 3', 'POWER SPEAKING', 'Advanced 9', '1.1 SPEAKING'),
(157, 'SLE 3', 'POWER SPEAKING', 'Advanced 10', '1.1 SPEAKING'),
(158, 'SLE 3', 'POWER SPEAKING', 'Advanced 11', '1.1 SPEAKING'),
(159, 'SLE 3', 'POWER SPEAKING', 'Advanced 12', '1.1 SPEAKING');

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
  `designation` varchar(250) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `designation`, `room`) VALUES
(0, 'No Teacher', 'No faculty', 0),
(35, 'Teacher Marie', 'ESL', 501),
(36, 'Teacher Dioni', 'ESL', 502),
(37, 'Teacher Nathan', 'ESL', 503),
(38, 'Teacher Sophia', 'Esl\r\n', 504),
(39, 'Teacher Juliet', 'ESL\r\n', 505),
(40, 'Teacher Marilou\r\n', 'ESL', 506),
(41, 'Teacher August', 'ESL', 507),
(42, 'Teacher Mary Joy\r\n', 'ESL', 508),
(43, 'Teacher Flora', 'ESL', 509),
(44, 'Teacher Gail', 'ESL', 510),
(45, 'Teacher Jem\r\n', 'ESL', 511),
(50, 'Teacher Shannyn', 'ESL', 512),
(51, 'Teacher Mariel', 'ESL', 515),
(52, 'Teacher Bebelyn', 'ESL', 516),
(53, 'Teacher Lloyd', 'ESL', 518),
(54, 'Teacher Estella', 'ESL ', 519),
(55, 'Teacher Kaye', 'ESL', 520),
(56, 'Teacher Ninn', 'ESL', 521),
(57, 'Teacher Dayvis', 'ESL', 522),
(58, 'Teacher Rose', 'ESL', 523),
(59, 'Teacher Lyle', 'ESL', 524),
(60, 'Teacher Vin', 'ESL', 525),
(61, 'Teacher Chariss', 'ESL', 526),
(62, 'Teacher Jessabel', 'ESL', 527),
(63, 'Teacher Fatima', 'ESL', 528),
(64, 'Teacher Carl', 'ESL', 529),
(65, 'Teacher Shera', 'ESL', 530),
(66, 'Teacher Maria', 'ESL', 531),
(67, 'Teacher Windy', 'ESL', 532),
(68, 'Teacher Alora', 'ESL', 533),
(69, 'Teacher Kentlee', 'ESL', 535),
(70, 'Teacher Sherlyn', 'ESL', 536),
(71, 'Teacher Jeal', 'ESL', 543),
(72, 'Teacher Elme', 'ESL', 544),
(73, 'Teacher Juvy', 'ESL', 545),
(74, 'Teacher Menchu', 'ESL', 546),
(75, 'Teacher Jia', 'ESL', 547),
(76, 'Teacher Marivel', 'ESL', 548),
(77, 'Teacher Tom', 'ESL', 549),
(78, 'Teacher Kent', 'ESL', 550),
(79, 'Teacher Anziel', 'ESL', 551),
(80, 'Teacher Limberlie', 'ESL', 552),
(81, 'Teacher Kryshia', 'ESL', 553),
(82, 'Teacher Cheryl', 'ESL', 554);

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
(71, '---'),
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
(82, 'G - 570'),
(83, 'NO ROOM');

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
  `student_status` enum('NEW STUDENT','OLD STUDENT','NO STATUS') NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `course_id`, `level_id`, `student_status`, `start_date`, `end_date`) VALUES
(157, '1', 141, 1, 'NEW STUDENT', '2024-01-15', '2024-01-19'),
(158, '2', 142, 1, 'NEW STUDENT', '2024-01-15', '2024-01-19'),
(159, '3', 141, 1, 'NEW STUDENT', '2024-01-15', '2024-01-19'),
(160, '4', 141, 1, 'NEW STUDENT', '2024-01-15', '2024-01-19'),
(161, '5', 142, 2, 'NEW STUDENT', '2024-01-15', '2024-01-19'),
(162, 'Lee Dooyoung', 141, 1, 'NEW STUDENT', '2024-01-15', '2024-01-19'),
(163, 'Lee Dooyoung', 141, 3, 'NEW STUDENT', '2024-01-15', '2024-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `timer_id` int(11) NOT NULL,
  `books` varchar(1000) NOT NULL,
  `teachers_name` varchar(1000) NOT NULL,
  `deleted` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`subject_id`, `student_id`, `room_id`, `faculty_id`, `timer_id`, `books`, `teachers_name`, `deleted`, `created_at`, `created_by`) VALUES
(1, 1, 18, 0, 3, 'Reading Advantage 1', 'Teacher Marie', 0, '2024-01-11 06:50:06', '1'),
(1, 102, 19, 0, 3, 'Reading Advantage 1', 'Teacher Marie', 0, '2024-01-11 06:57:15', '102'),
(1, 103, 35, 0, 3, 'Reading advantage 1', 'Teacher Marie', 0, '2024-01-12 02:08:50', '103'),
(1, 162, 20, 0, 3, '', 'Teacher Sophia', 0, '2024-01-12 09:02:40', '162'),
(1, 163, 20, 0, 3, '', 'Teacher Juliet', 0, '2024-01-12 09:03:16', '163'),
(2, 1, 71, 0, 16, '---', '---', 0, '2024-01-11 06:50:06', '1'),
(2, 102, 19, 0, 4, 'speaking 101', 'Teacher Marie', 0, '2024-01-11 06:57:15', '102'),
(2, 103, 19, 0, 4, '', '', 0, '2024-01-12 02:08:50', '103'),
(2, 162, 20, 0, 4, '', 'Teacher Sophia', 0, '2024-01-12 09:02:40', '162'),
(2, 163, 17, 0, 4, '', '', 0, '2024-01-12 09:03:16', '163'),
(168, 1, 26, 0, 6, '', '', 0, '2024-01-11 06:50:06', '1'),
(168, 102, 21, 0, 6, 'Grammar 101\r\n', 'Teacher Marie', 0, '2024-01-11 06:57:15', '102'),
(168, 103, 26, 0, 6, '', '', 0, '2024-01-12 02:08:50', '103'),
(168, 162, 20, 0, 6, '', 'Teacher Sophia', 0, '2024-01-12 09:02:40', '162'),
(168, 163, 21, 0, 6, '', 'Teacher Juliet', 0, '2024-01-12 09:03:16', '163'),
(169, 1, 21, 0, 7, '', '', 0, '2024-01-11 06:50:06', '1'),
(169, 102, 21, 0, 7, 'Vocabulary 1\r\n', 'Teacher Marie', 0, '2024-01-11 06:57:15', '102'),
(169, 103, 21, 0, 7, '', '', 0, '2024-01-12 02:08:50', '103'),
(169, 162, 20, 0, 7, '', 'Teacher Sophia', 0, '2024-01-12 09:02:40', '162'),
(169, 163, 21, 0, 7, '', 'Teacher Juliet', 0, '2024-01-12 09:03:16', '163'),
(170, 1, 71, 0, 8, '', '', 0, '2024-01-11 06:50:06', '1'),
(170, 102, 71, 0, 8, '---', '---', 0, '2024-01-11 06:57:15', '102'),
(170, 103, 71, 0, 8, '', '', 0, '2024-01-12 02:08:50', '103'),
(170, 162, 71, 0, 8, '', '', 0, '2024-01-12 09:02:40', '162'),
(170, 163, 71, 0, 8, '', '', 0, '2024-01-12 09:03:16', '163'),
(171, 1, 73, 0, 9, '', '', 0, '2024-01-11 06:50:06', '1'),
(171, 102, 73, 0, 9, '---', 'Teacher Marie', 0, '2024-01-11 06:57:15', '102'),
(171, 103, 73, 0, 9, '', '', 0, '2024-01-12 02:08:50', '103'),
(171, 162, 19, 0, 9, '', 'Teacher Nathan', 0, '2024-01-12 09:02:40', '162'),
(171, 163, 20, 0, 9, '', 'Teacher Sophia', 0, '2024-01-12 09:03:16', '163'),
(172, 1, 74, 0, 10, '', '', 0, '2024-01-11 06:50:06', '1'),
(172, 102, 74, 0, 10, '---', 'Teacher Marie', 0, '2024-01-11 06:57:15', '102'),
(172, 103, 74, 0, 10, '', '', 0, '2024-01-12 02:08:50', '103'),
(172, 162, 21, 0, 10, '', 'Teacher Juliet', 0, '2024-01-12 09:02:40', '162'),
(172, 163, 22, 0, 10, '', 'Teacher Marilou\r\n', 0, '2024-01-12 09:03:16', '163'),
(173, 1, 75, 0, 11, '', '', 0, '2024-01-11 06:50:06', '1'),
(173, 102, 75, 0, 11, '---', 'Teacher Marie', 0, '2024-01-11 06:57:15', '102'),
(173, 103, 75, 0, 11, '', '', 0, '2024-01-12 02:08:50', '103'),
(173, 162, 20, 0, 11, '', 'Teacher Sophia', 0, '2024-01-12 09:02:40', '162'),
(173, 163, 21, 0, 11, '', 'Teacher Juliet', 0, '2024-01-12 09:03:16', '163'),
(178, 1, 78, 0, 12, '', '', 0, '2024-01-11 06:50:06', '1'),
(178, 102, 71, 0, 16, '---', '---', 0, '2024-01-11 06:57:15', '102'),
(178, 103, 78, 0, 12, '', '', 0, '2024-01-12 02:08:50', '103'),
(178, 162, 20, 0, 12, '', 'Teacher Sophia', 0, '2024-01-12 09:02:40', '162'),
(178, 163, 21, 0, 12, '', 'Teacher Juliet', 0, '2024-01-12 09:03:16', '163'),
(179, 104, 23, 0, 16, '', '', 0, '2024-01-12 02:11:36', '104'),
(180, 104, 24, 0, 4, '', '', 0, '2024-01-12 02:11:36', '104'),
(181, 104, 25, 0, 6, '', '', 0, '2024-01-12 02:11:36', '104'),
(182, 104, 60, 0, 7, '', '', 0, '2024-01-12 02:11:36', '104'),
(183, 104, 71, 0, 8, '', '', 0, '2024-01-12 02:11:36', '104'),
(184, 104, 67, 0, 10, '', '', 0, '2024-01-12 02:11:36', '104'),
(187, 104, 36, 0, 10, '', '', 0, '2024-01-12 02:11:36', '104'),
(188, 104, 80, 0, 3, '22222222222', '', 0, '2024-01-12 02:11:36', '104'),
(189, 104, 73, 0, 12, '', '', 0, '2024-01-12 02:11:36', '104'),
(190, 104, 82, 0, 13, '', '', 0, '2024-01-12 02:11:36', '104'),
(219, 101, 19, 0, 3, 'hhhhh', 'Teacher Marie', 0, '2024-01-11 06:52:29', '101'),
(220, 101, 71, 0, 16, '---', '---', 0, '2024-01-11 06:52:29', '101'),
(222, 101, 33, 0, 4, 'vocabulary 101', 'Teacher Marie', 0, '2024-01-11 06:52:29', '101'),
(223, 101, 35, 0, 7, '101\r\n\r\n', 'Teacher Marie', 0, '2024-01-11 06:52:29', '101');

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
(1, 'PREMIUM', 'Reading', '1.1', NULL, 35, 3, 141, 0, 0),
(2, 'PREMIUM', 'Speaking', '1.1', NULL, 19, 4, 141, 0, 0),
(168, 'PREMIUM', 'Grammar', '1.1', NULL, 26, 6, 141, 0, 0),
(169, 'PREMIUM', 'Vocabulary', '1.1', NULL, 21, 7, 141, 0, 0),
(170, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 141, 0, 0),
(171, 'PREMIUM', 'Native', 'G', NULL, 73, 9, 141, 0, 0),
(172, 'PREMIUM', 'Writing', 'G', NULL, 74, 10, 141, 0, 0),
(173, 'PREMIUM', 'Listening', 'G', NULL, 75, 11, 141, 0, 0),
(178, 'PREMIUM', 'Reading', 'G', NULL, 78, 12, 141, 0, 0),
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
-- Table structure for table `teacher_timer`
--

CREATE TABLE `teacher_timer` (
  `teacher_id` int(11) NOT NULL,
  `timer_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_timer`
--

INSERT INTO `teacher_timer` (`teacher_id`, `timer_id`, `student_id`, `subject_id`) VALUES
(35, 3, 157, 1),
(37, 3, 159, 1),
(38, 3, 162, 1),
(39, 3, 163, 1),
(35, 4, 157, 2),
(37, 4, 159, 2),
(38, 4, 162, 2),
(39, 4, 163, 2),
(35, 6, 157, 168),
(37, 6, 159, 168),
(38, 6, 162, 168),
(39, 6, 163, 168),
(35, 7, 157, 169),
(37, 7, 159, 169),
(38, 7, 162, 169),
(39, 7, 163, 169),
(35, 9, 157, 171),
(36, 9, 159, 171),
(37, 9, 162, 171),
(38, 9, 163, 171),
(35, 10, 157, 172),
(38, 10, 159, 172),
(39, 10, 162, 172),
(40, 10, 163, 172),
(35, 11, 157, 173),
(37, 11, 159, 173),
(38, 11, 162, 173),
(39, 11, 163, 173),
(35, 12, 157, 178),
(37, 12, 159, 178),
(38, 12, 162, 178),
(39, 12, 163, 178),
(36, 3, 158, 179),
(36, 4, 158, 180),
(36, 6, 158, 181),
(36, 7, 158, 182),
(36, 10, 158, 184),
(37, 10, 158, 187),
(36, 11, 158, 188),
(36, 12, 158, 189),
(35, 13, 158, 190);

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
(15, 'NO TIME', 'NO TIME'),
(16, '---', '---');

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
  ADD KEY `fk_ss_room_id` (`room_id`),
  ADD KEY `fk_ss_timer_id` (`timer_id`),
  ADD KEY `fk_ss_faculty_id` (`faculty_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_id` (`subject_id`),
  ADD KEY `fk_room_id` (`room_id`),
  ADD KEY `fk_period_id` (`timer_id`),
  ADD KEY `fk_course_id` (`course_id`) USING BTREE,
  ADD KEY `fk_book_id` (`book_id`) USING BTREE,
  ADD KEY `fk_faculty_id` (`faculty_id`);

--
-- Indexes for table `teacher_timer`
--
ALTER TABLE `teacher_timer`
  ADD PRIMARY KEY (`teacher_id`,`timer_id`,`student_id`),
  ADD KEY `fk_tt_teacher_id` (`teacher_id`),
  ADD KEY `fk_tt_timer_id` (`timer_id`),
  ADD KEY `fk_tt_student_id` (`student_id`),
  ADD KEY `fk_tt_subject_id` (`subject_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

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
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `fk_ss_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `fk_ss_room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `fk_ss_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `fk_ss_timer_id` FOREIGN KEY (`timer_id`) REFERENCES `timer` (`id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `fk_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `fk_period_id` FOREIGN KEY (`timer_id`) REFERENCES `timer` (`id`),
  ADD CONSTRAINT `fk_room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `teacher_timer`
--
ALTER TABLE `teacher_timer`
  ADD CONSTRAINT `fk_tt_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `fk_tt_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `fk_tt_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `fk_tt_timer_id` FOREIGN KEY (`timer_id`) REFERENCES `timer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
