-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 11:50 PM
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
  `book_type` varchar(50) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `course`, `level`, `book_type`, `subject`) VALUES
(3, 'Reading Advantage 1', 'PREMIUM', 'Beginner 1', '1.1', 'READING'),
(4, 'Reading Advantage 1', 'PREMIUM', 'Elementary 2', '1.1', 'READING'),
(5, 'Reading Advantage 1', 'PREMIUM', 'Elementary 3', '1.1', 'READING'),
(6, 'Reading Advantage 2', 'PREMIUM', 'Pre Intermediate 4', '1.1', 'READING'),
(7, 'Reading Advantage 3', 'PREMIUM', 'Intermediate 5', '1.1', 'READING'),
(8, 'Reading Advantage 3', 'PREMIUM', 'Intermediate 6', '1.1', 'READING'),
(9, 'Reading Advantage 4', 'PREMIUM', 'Upper Intermediate 7', '1.1', 'READING'),
(10, 'Reading Advantage 4', 'PREMIUM', 'Upper Intermediate 8', '1.1', 'READING'),
(11, 'Reading Explorer 4', 'PREMIUM', 'Advanced 9', '1.1', 'READING'),
(12, 'Reading Explorer 4', 'PREMIUM', 'Advanced 10', '1.1', 'READING'),
(13, 'Reading Explorer 4', 'PREMIUM', 'Advanced 11', '1.1', 'READING'),
(14, 'Reading Explorer 4', 'PREMIUM', 'Advanced 12', '1.1', 'READING'),
(15, 'Speaking Juice 1', 'PREMIUM', 'Beginner 1', '1.1', 'SPEAKING'),
(16, 'Speaking Juice 1', 'PREMIUM', 'Elementary 2', '1.1', 'SPEAKING'),
(17, 'Speaking Juice 1', 'PREMIUM', 'Elementary 3', '1.1', 'SPEAKING'),
(18, 'SLE 1', 'PREMIUM', 'Pre Intermediate 4', '1.1', 'SPEAKING'),
(19, 'SLE 2', 'PREMIUM', 'Intermediate 5', '1.1', 'SPEAKING'),
(20, 'SLE 2', 'PREMIUM', 'Intermediate 6', '1.1', 'SPEAKING'),
(21, 'SLE 3', 'PREMIUM', 'Upper Intermediate 7', '1.1', 'SPEAKING'),
(22, 'SLE 3', 'PREMIUM', 'Upper Intermediate 8', '1.1', 'SPEAKING'),
(23, 'Express yourself 1', 'PREMIUM', 'Advanced 9', '1.1', 'SPEAKING'),
(24, 'Express yourself 1', 'PREMIUM', 'Advanced 10', '1.1', 'SPEAKING'),
(25, 'Express yourself 1', 'PREMIUM', 'Advanced 11', '1.1', 'SPEAKING'),
(26, 'Express yourself 1', 'PREMIUM', 'Advanced 12', '1.1', 'SPEAKING'),
(27, 'Side by Side 1', 'PREMIUM', 'Beginner 1', '1.1', 'Grammar'),
(28, 'Side by Side 1', 'PREMIUM', 'Elementary 2', '1.1', 'Grammar'),
(29, 'Side by Side 1', 'PREMIUM', 'Elementary 3', '1.1', 'Grammar'),
(30, 'Basic Grammar In use', 'PREMIUM', 'Pre Intermediate 4', '1.1', 'Grammar'),
(31, 'Grammar in use Intermediate', 'PREMIUM', 'Intermediate 5', '1.1', 'Grammar'),
(32, 'Grammar in use Intermediate', 'PREMIUM', 'Intermediate 6', '1.1', 'Grammar'),
(33, 'Grammar in use Advanced', 'PREMIUM', 'Upper Intermediate 7', '1.1', 'Grammar'),
(34, 'Grammar in use Advanced', 'PREMIUM', 'Upper Intermediate 8', '1.1', 'Grammar'),
(35, 'Destination C1', 'PREMIUM', 'Advanced 9', '1.1', 'Grammar'),
(36, 'Destination C1', 'PREMIUM', 'Advanced 10', '1.1', 'Grammar'),
(37, 'Destination C1', 'PREMIUM', 'Advanced 11', '1.1', 'Grammar'),
(38, 'Destination C1', 'PREMIUM', 'Advanced 12', '1.1', 'Grammar'),
(39, 'Elementary Vocabulary', 'PREMIUM', 'Beginner 1', '1.1', 'Vocabulary'),
(40, 'Elementary Vocabulary', 'PREMIUM', 'Elementary 2', '1.1', 'Vocabulary'),
(41, 'Elementary Vocabulary', 'PREMIUM', 'Elementary 3', '1.1', 'Vocabulary'),
(42, 'Inter Vocabulary', 'PREMIUM', 'Pre Intermediate 4', '1.1', 'Vocabulary'),
(43, 'Inter vocabulary', 'PREMIUM', 'Intermediate 5', '1.1', 'Vocabulary'),
(44, 'Inter vocabulary', 'PREMIUM', 'Intermediate 6', '1.1', 'Vocabulary'),
(45, '4000 words 5', 'PREMIUM', 'Upper Intermediate 7', '1.1', 'Vocabulary'),
(46, '4000 words 5', 'PREMIUM', 'Upper Intermediate 8', '1.1', 'Vocabulary'),
(47, 'Destination C1', 'PREMIUM', 'Advanced 9', '1.1', 'Vocabulary'),
(48, 'Destination C1', 'PREMIUM', 'Advanced 10', '1.1', 'Vocabulary'),
(49, 'Destination C1', 'PREMIUM', 'Advanced 11', '1.1', 'Vocabulary'),
(50, 'Destination C1', 'PREMIUM', 'Advanced 12', '1.1', 'Vocabulary'),
(51, 'Real Writing 1', 'PREMIUM', 'Beginner 1', 'G', 'Writing'),
(52, 'Real Writing 1', 'PREMIUM', 'Elementary 2', 'G', 'Listening'),
(53, 'Real Writing 1', 'PREMIUM', 'Elementary 3', 'G', 'Writing'),
(54, 'Real Writing 2', 'PREMIUM', 'Pre Intermediate 4', 'G', 'Writing'),
(55, 'Real Writing 3', 'PREMIUM', 'Intermediate 5', 'G', 'Writing'),
(56, 'Real Writing 3', 'PREMIUM', 'Intermediate 6', 'G', 'Writing'),
(57, 'Real Writing 4', 'PREMIUM', 'Upper Intermediate 7', 'G', 'Writing'),
(58, 'Real Writing 4', 'PREMIUM', 'Upper Intermediate 8', 'G', 'Writing'),
(59, 'Real Writing 4', 'PREMIUM', 'Advanced 9', 'G', 'Writing'),
(60, 'Real Writing 4', 'PREMIUM', 'Advanced 10', 'G', 'Writing'),
(61, 'Real Writing 4', 'PREMIUM', 'Advanced 11', 'G', 'Writing'),
(62, 'Real Writing 4', 'PREMIUM', 'Advanced 12', 'G', 'Writing'),
(63, 'Real Listening and Speaking 1', 'PREMIUM', 'Beginner 1', 'G', 'Listening'),
(64, 'Real Listening and Speaking 1', 'PREMIUM', 'Elementary 2', 'G', 'Listening'),
(65, 'Real Listening and Speaking 1', 'PREMIUM', 'Elementary 3', 'G', 'Listening'),
(66, 'Real Listening and Speaking 1', 'PREMIUM', 'Pre Intermediate 4', 'G', 'Listening'),
(67, 'Real Listening 2', 'PREMIUM', 'Intermediate 5', 'G', 'Listening'),
(68, 'Real Listening 2', 'PREMIUM', 'Intermediate 6', 'G', 'Listening'),
(69, 'Real Listening 3', 'PREMIUM', 'Upper Intermediate 7', 'G', 'Listening'),
(70, 'Real Listening 3', 'PREMIUM', 'Upper Intermediate 8', 'G', 'Listening'),
(71, 'Listening 5', 'PREMIUM', 'Advanced 9', 'G', 'Listening'),
(72, 'Listening 5', 'PREMIUM', 'Advanced 10', 'G', 'Listening'),
(73, 'Listening 5', 'PREMIUM', 'Advanced 11', 'G', 'Listening'),
(74, 'Listening 5', 'PREMIUM', 'Advanced 12', 'G', 'Listening'),
(75, 'Reading Advantage 1', 'INTENSIVE', 'Beginner 1', '1.1', 'READING'),
(76, 'Reading Advantage 1', 'INTENSIVE', 'Elementary 2', '1.1', 'READING'),
(77, 'Reading Advantage 1', 'INTENSIVE', 'Elementary 3', '1.1', 'READING'),
(78, 'Reading Advantage 2', 'PREMIUM', 'Pre Intermediate 4', '1.1', 'READING'),
(79, 'Reading Advantage 3', 'INTENSIVE', 'Intermediate 5', '1.1', 'READING'),
(80, 'Reading Advantage 3', 'INTENSIVE', 'Intermediate 6', '1.1', 'READING'),
(81, 'Reading Advantage 4', 'INTENSIVE', 'Upper Intermediate 7', '1.1', 'READING'),
(82, 'Reading Advantage 4', 'INTENSIVE', 'Upper Intermediate 8', '1.1', 'READING'),
(83, 'Reading explorer 4', 'INTENSIVE', 'Advanced 9', '1.1', 'READING'),
(84, 'Reading explorer 4', 'INTENSIVE', 'Advanced 10', '1.1', 'READING'),
(85, 'Reading explorer 4', 'INTENSIVE', 'Advanced 11', '1.1', 'READING'),
(86, 'Reading explorer 4', 'INTENSIVE', 'Advanced 12', '1.1', 'READING'),
(87, 'Side by Side 1', 'INTENSIVE', 'Beginner 1', '1.1', 'Grammar'),
(88, 'Side by Side 1', 'INTENSIVE', 'Elementary 2', '1.1', 'Grammar'),
(89, 'Side by Side 1', 'INTENSIVE', 'Elementary 3', '1.1', 'Grammar'),
(90, 'Basic Grammar In use', 'INTENSIVE', 'Pre Intermediate 4', '1.1', 'Grammar'),
(91, 'Grammar in use Inter', 'INTENSIVE', 'Intermediate 5', '1.1', 'Grammar'),
(92, 'Grammar in use Inter', 'INTENSIVE', 'Intermediate 6', '1.1', 'Grammar'),
(93, 'Grammar in use Advanced', 'INTENSIVE', 'Upper Intermediate 7', '1.1', 'Grammar'),
(94, 'Grammar in use Advanced', 'INTENSIVE', 'Upper Intermediate 8', '1.1', 'Grammar'),
(95, 'Destination C1', 'INTENSIVE', 'Advanced 9', '1.1', 'Grammar'),
(96, 'Destination C1', 'INTENSIVE', 'Advanced 10', '1.1', 'Grammar'),
(97, 'Destination C1', 'INTENSIVE', 'Advanced 11', '1.1', 'Grammar'),
(98, 'Destination C1', 'INTENSIVE', 'Advanced 12', '1.1', 'Grammar'),
(99, 'Elementary Vocabulary', 'INTENSIVE', 'Beginner 1', '1.1', 'Vocabulary'),
(100, 'Elementary Vocabulary', 'INTENSIVE', 'Elementary 2', '1.1', 'Vocabulary'),
(101, 'Elementary Vocabulary', 'INTENSIVE', 'Elementary 3', '1.1', 'Vocabulary'),
(102, 'Inter Vocabulary', 'INTENSIVE', 'Pre Intermediate 4', '1.1', 'Vocabulary'),
(103, 'Inter Vocabulary', 'INTENSIVE', 'Intermediate 5', '1.1', 'Vocabulary'),
(104, 'Inter Vocabulary', 'INTENSIVE', 'Intermediate 6', '1.1', 'Vocabulary'),
(105, '4000 words 5', 'INTENSIVE', 'Upper Intermediate 7', '1.1', 'Vocabulary'),
(106, '4000 words 5', 'INTENSIVE', 'Upper Intermediate 8', '1.1', 'Vocabulary'),
(107, 'Destination C1', 'INTENSIVE', 'Advanced 9', '1.1', 'Vocabulary'),
(108, 'Destination C1', 'INTENSIVE', 'Advanced 10', '1.1', 'Vocabulary'),
(109, 'Destination C1', 'INTENSIVE', 'Advanced 11', '1.1', 'Vocabulary'),
(110, 'Destination C1', 'INTENSIVE', 'Advanced 12', '1.1', 'Vocabulary'),
(111, 'Speaking Juice 1', 'INTENSIVE', 'Beginner 1', '1.1', 'SPEAKING'),
(112, 'Speaking Juice 1', 'INTENSIVE', 'Elementary 2', '1.1', 'SPEAKING'),
(113, 'Speaking Juice 1', 'INTENSIVE', 'Elementary 3', '1.1', 'SPEAKING'),
(114, 'SLE 1', 'INTENSIVE', 'Pre Intermediate 4', '1.1', 'SPEAKING'),
(115, 'SLE 2', 'INTENSIVE', 'Intermediate 5', '1.1', 'SPEAKING'),
(116, 'SLE 2', 'INTENSIVE', 'Intermediate 6', '1.1', 'SPEAKING'),
(117, 'SLE 3', 'INTENSIVE', 'Upper Intermediate 7', '1.1', 'SPEAKING'),
(118, 'SLE 3', 'INTENSIVE', 'Upper Intermediate 8', '1.1', 'SPEAKING'),
(119, 'Express yourself 1', 'INTENSIVE', 'Advanced 9', '1.1', 'SPEAKING'),
(120, 'Express yourself 1', 'INTENSIVE', 'Advanced 10', '1.1', 'SPEAKING'),
(121, 'Express yourself 1', 'INTENSIVE', 'Advanced 11', '1.1', 'SPEAKING'),
(122, 'Express yourself 1', 'INTENSIVE', 'Advanced 12', '1.1', 'SPEAKING'),
(123, 'Real Writing 1', 'INTENSIVE', 'Beginner 1', 'G', 'Writing'),
(124, 'Real Writing 1', 'INTENSIVE', 'Elementary 2', 'G', 'Writing'),
(125, 'Real Writing 1', 'INTENSIVE', 'Elementary 3', 'G', 'Writing'),
(126, 'Real Writing 2', 'INTENSIVE', 'Pre Intermediate 4', 'G', 'Writing'),
(127, 'Real Writing 3', 'INTENSIVE', 'Intermediate 5', 'G', 'Writing'),
(128, 'Real Writing 3', 'INTENSIVE', 'Intermediate 6', 'G', 'Writing'),
(129, 'Real Writing 4', 'INTENSIVE', 'Upper Intermediate 7', 'G', 'Writing'),
(130, 'Real Writing 4', 'INTENSIVE', 'Upper Intermediate 8', 'G', 'Writing'),
(131, 'Real Writing 4', 'INTENSIVE', 'Advanced 9', 'G', 'Writing'),
(132, 'Real Writing 4', 'INTENSIVE', 'Advanced 10', 'G', 'Writing'),
(133, 'Real Writing 4', 'INTENSIVE', 'Advanced 11', 'G', 'Writing'),
(134, 'Real Writing 4', 'INTENSIVE', 'Advanced 12', 'G', 'Writing'),
(135, 'Real Listening and Speaking 1', 'INTENSIVE', 'Beginner 1', 'G', 'Listening'),
(136, 'Real Listening and Speaking 1', 'INTENSIVE', 'Elementary 2', 'G', 'Listening'),
(138, 'Real Listening and Speaking 1', 'INTENSIVE', 'Elementary 3', 'G', 'Listening'),
(139, 'Real Listening and Speaking 1', 'INTENSIVE', 'Pre Intermediate 4', 'G', 'Listening'),
(140, 'Real Listening 2', 'INTENSIVE', 'Intermediate 5', 'G', 'Listening'),
(141, 'Real Listening 2', 'INTENSIVE', 'Intermediate 6', 'G', 'Listening'),
(142, 'Real Listening 3', 'INTENSIVE', 'Upper Intermediate 7', 'G', 'Listening'),
(143, 'Real Listening 3', 'INTENSIVE', 'Upper Intermediate 8', 'G', 'Listening'),
(144, 'Listening 5', 'INTENSIVE', 'Advanced 9', 'G', 'Listening'),
(145, 'Listening 5', 'INTENSIVE', 'Advanced 10', 'G', 'Listening'),
(146, 'Listening 5', 'INTENSIVE', 'Advanced 11', 'G', 'Listening'),
(147, 'Listening 5', 'INTENSIVE', 'Advanced 12', 'G', 'Listening'),
(148, 'Speaking Juice 1', 'POWER SPEAKING', 'Beginner 1', '1.1', 'SPEAKING'),
(149, 'Speaking Juice 1', 'POWER SPEAKING', 'Elementary 2', '1.1', 'SPEAKING'),
(150, 'Speaking Juice 1', 'POWER SPEAKING', 'Elementary 3', '1.1', 'SPEAKING'),
(151, 'Speaking Juice 3', 'POWER SPEAKING', 'Pre Intermediate 4', '1.1', 'SPEAKING'),
(152, 'SLE 1', 'POWER SPEAKING', 'Intermediate 5', '1.1', 'SPEAKING'),
(153, 'SLE 1', 'POWER SPEAKING', 'Intermediate 6', '1.1', 'SPEAKING'),
(154, 'SLE 2', 'POWER SPEAKING', 'Upper Intermediate 7', '1.1', 'SPEAKING'),
(155, 'SLE 2', 'POWER SPEAKING', 'Upper Intermediate 8', '1.1', 'SPEAKING'),
(156, 'SLE 3', 'POWER SPEAKING', 'Advanced 9', '1.1', 'SPEAKING'),
(157, 'SLE 3', 'POWER SPEAKING', 'Advanced 10', '1.1', 'SPEAKING'),
(158, 'SLE 3', 'POWER SPEAKING', 'Advanced 11', '1.1', 'SPEAKING'),
(159, 'SLE 3', 'POWER SPEAKING', 'Advanced 12', '1.1', 'SPEAKING'),
(160, 'Stage 1 ', 'POWER SPEAKING', 'Beginner 1', '1.1', 'Speaking Drill'),
(161, 'Stage 1 ', 'POWER SPEAKING', 'Elementary 2', '1.1', 'Speaking Drill'),
(162, 'Stage 1', 'POWER SPEAKING', 'Elementary 3', '1.1', 'Speaking Drill'),
(163, 'Stage 1', 'POWER SPEAKING', 'Pre Intermediate 4', '1.1', 'Speaking Drill'),
(164, 'Stage 1', 'POWER SPEAKING', 'Intermediate 5', '1.1', 'Speaking Drill'),
(165, 'Stage 1', 'POWER SPEAKING', 'Intermediate 6', '1.1', 'Speaking Drill'),
(166, 'Stage 3', 'POWER SPEAKING', 'Upper Intermediate 7', '1.1', 'Speaking Drill'),
(167, 'Stage 3', 'POWER SPEAKING', 'Upper Intermediate 8', '1.1', 'Speaking Drill'),
(168, 'Stage 3', 'POWER SPEAKING', 'Advance 9', '1.1', 'Speaking Drill'),
(169, 'Stage 3', 'POWER SPEAKING', 'Advance 10', '1.1', 'Speaking Drill'),
(170, 'Stage 3', 'POWER SPEAKING', 'Advance 11', '1.1', 'Speaking Drill'),
(171, 'Stage 3', 'POWER SPEAKING', 'Advance 12', '1.1', 'Speaking Drill'),
(172, 'Side by Side 1', 'POWER SPEAKING', 'Beginner 1', '1.1', 'Grammar'),
(173, 'Side by Side 1', 'POWER SPEAKING', 'Elementary 2', '1.1', 'Grammar'),
(174, 'Side by Side 1', 'POWER SPEAKING', 'Elementary 3', '1.1', 'Grammar'),
(175, 'Basic Grammar In use', 'POWER SPEAKING', 'Pre Intermediate 4', '1.1', 'Grammar'),
(176, 'Grammar in use Intermediate', 'POWER SPEAKING', 'Intermediate 5', '1.1', 'Grammar'),
(177, 'Grammar in use Intermediate', 'POWER SPEAKING', 'Intermediate 6', '1.1', 'Grammar'),
(178, 'Grammar in use Advanced', 'POWER SPEAKING', 'Upper Intermediate 7', '1.1', 'Grammar'),
(179, 'Grammar in use Advanced', 'POWER SPEAKING', 'Upper Intermediate 8', '1.1', 'Grammar'),
(180, 'Destination C1', 'POWER SPEAKING', 'Advance 9', '1.1', 'Grammar'),
(181, 'Destination C1', 'POWER SPEAKING', 'Advance 10', '1.1', 'Grammar'),
(182, 'Destination C1', 'POWER SPEAKING', 'Advance 11', '1.1', 'Grammar'),
(183, 'Destination C1', 'POWER SPEAKING', 'Advance 12', '1.1', 'Grammar'),
(184, 'Lingua House A1 A2', 'POWER SPEAKING', 'Beginner 1', 'G', 'Listening'),
(185, 'Lingua House A1 A2', 'POWER SPEAKING', 'Elementary 2', 'G', 'Listening'),
(186, 'Lingua House A1 A2', 'POWER SPEAKING', 'Elementary 3', 'G', 'Listening'),
(187, 'Lingua House A1 A2', 'POWER SPEAKING', 'Pre Intermediate 4', 'G', 'Listening'),
(188, 'Lingua House B1 B2', 'POWER SPEAKING', 'Intermediate 5', 'G', 'Listening'),
(189, 'Lingua House B1 B2', 'POWER SPEAKING', 'Intermediate 6', 'G', 'Listening'),
(190, 'Lingua House B1 B2', 'POWER SPEAKING', 'Upper Intermediate 7', 'G', 'Listening'),
(191, 'Lingua House B1 B2', 'POWER SPEAKING', 'Upper Intermediate 8', 'G', 'Listening'),
(192, 'Linuga House C1', 'POWER SPEAKING', 'Advance 9', 'G', 'Listening'),
(193, 'Linuga House C1', 'POWER SPEAKING', 'Advance 10', 'G', 'Listening'),
(194, 'Linuga House C1', 'POWER SPEAKING', 'Advance 11', 'G', 'Listening'),
(195, 'Linuga House C1', 'POWER SPEAKING', 'Advance 12', 'G', 'Listening'),
(196, 'Economic TOEIC RC', 'TOEIC', 'NO LEVEL', '1.1', 'Reading'),
(197, 'Collins Business Speaking', 'TOEIC', 'NO LEVEL', '1.1', 'Speaking'),
(198, 'TOEIC Starter', 'TOEIC', 'NO LEVEL', '1.1', 'Grammar'),
(199, '600 TOEIC Vocabulary', 'TOEIC', 'NO LEVEL', '1.1', 'Vocabulary'),
(200, 'Economic TOEIC RC', 'TOEIC', 'NO LEVEL', 'G', 'Reading p56'),
(201, 'Economic TOEIC RC', 'TOEIC', 'NO LEVEL', 'G', 'Reading p7'),
(202, 'Economic TOEIC LC', 'TOEIC', 'NO LEVEL', 'G', 'Listening'),
(204, 'Economic TOEIC RC', 'PRE TOEIC', 'NO LEVEL', '1.1', 'Reading'),
(205, 'Economic TOEIC LC', 'PRE TOEIC', 'NO LEVEL', '1.1', 'Listening'),
(206, 'TOEIC Starter', 'PRE TOEIC', 'NO LEVEL', '1.1', 'Grammar'),
(207, '600 TOEIC Vocabulary', 'PRE TOEIC', 'NO LEVEL', '1.1', 'Vocabulary'),
(208, 'Ultimate Guide to academic Reading', 'IELTS  ACADEMIC', 'NO LEVEL', '1.1', 'Reading'),
(209, 'IELTS WRITING', 'IELTS  ACADEMIC', 'NO LEVEL', '1.1', 'Writing T1'),
(210, 'English Pronunciation Made Easy', 'IELTS  ACADEMIC', 'NO LEVEL', '1.1', 'Pronunciation'),
(211, 'IELTS Speaking Success', 'IELTS  ACADEMIC', 'NO LEVEL', '1.1', 'Speaking'),
(212, 'Cambridge Books - Academic', 'IELTS  ACADEMIC', 'NO LEVEL', 'G', 'Reading ( IELTS INTEG '),
(213, 'Cambridge Books - Academic', 'IELTS  ACADEMIC', 'NO LEVEL', 'G', 'Listening'),
(214, 'IELTS WRITING', 'IELTS  ACADEMIC', 'NO LEVEL', 'G', 'Writing T2'),
(215, 'Cambridge IELTS grammar Voca', 'IELTS  ACADEMIC', 'NO LEVEL', 'G', 'Grammar Vocabulary'),
(216, 'Improve IELTS Reading 6-7.5', 'IELTS  GENERAL', 'NO LEVEL', '1.1', 'Reading'),
(217, 'Barrons Writing IELTS', 'IELTS  GENERAL', 'NO LEVEL', '1.1', 'Writing T1'),
(218, 'English Pronunciation Made Easy', 'IELTS  GENERAL', 'NO LEVEL', '1.1', 'Pronunciation'),
(219, 'IELTS Speaking Success', 'IELTS  GENERAL', 'NO LEVEL', '1.1', 'Speaking'),
(220, 'Cambridge Books - General', 'IELTS  GENERAL', 'NO LEVEL', 'G', 'Reading ( IELTS INTEG '),
(221, 'Cambridge Books - General', 'IELTS  GENERAL', 'NO LEVEL', 'G', 'Listening'),
(222, 'IELTS WRITING', 'IELTS  GENERAL', 'NO LEVEL', 'G', 'Writing T2'),
(223, 'Cambridge IELTS grammar Voca', 'IELTS  GENERAL', 'NO LEVEL', 'G', 'Grammar Vocabulary'),
(224, 'Get ready for IELTS Reading', 'PRE - IELTS ACADEMIC', 'NO LEVEL', '1.1', 'Reading'),
(225, 'Get ready for IELTS Writing', 'PRE - IELTS ACADEMIC', 'NO LEVEL', '1.1', 'Writing'),
(226, 'Get ready for IELTS listening', 'PRE - IELTS ACADEMIC', 'NO LEVEL', '1.1', 'Listening'),
(227, 'Get ready for IELTS Speaking', 'PRE - IELTS ACADEMIC', 'NO LEVEL', '1.1', 'Speaking'),
(228, 'Collins Business Speaking', 'BUSINESS', 'NO LEVEL', '1.1', 'Speaking'),
(229, 'Delta Business Communication', 'BUSINESS', 'NO LEVEL', '1.1', 'Business Grammar and Vocabulary'),
(230, 'Emailing Busniness Communication skills)', 'BUSINESS', 'NO LEVEL', '1.1', 'Business Writing'),
(231, 'Depending on Major', 'BUSINESS', 'NO LEVEL', '1.1', 'Professional English'),
(232, 'Market Leader Intermediate', 'BUSINESS', 'NO LEVEL', 'G', 'Business Integration 1'),
(233, 'Market Leader Intermediate', 'BUSINESS', 'NO LEVEL', 'G', 'Business Integration 2'),
(234, 'English for Presentation; English for Socialization', 'BUSINESS', 'NO LEVEL', 'G', 'Presentation and Socialization');

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
(141, 'PREMIUM', 'PREMIUM', 'PREMIUM', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'INTENSIVE', 'INTENSIVE', 'INTENSIVE', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
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
(1, 'No Teacher', 'No faculty', 1),
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
(1, 176, 35, 1, 3, '', '', 0, '2024-01-12 17:06:36', '176'),
(2, 176, 19, 1, 4, '', '', 0, '2024-01-12 17:06:36', '176'),
(168, 176, 26, 1, 6, '', '', 0, '2024-01-12 17:06:36', '176'),
(169, 176, 21, 1, 7, '', '', 0, '2024-01-12 17:06:36', '176'),
(170, 176, 71, 1, 8, '', '', 0, '2024-01-12 17:06:36', '176'),
(171, 176, 73, 1, 9, '', '', 0, '2024-01-12 17:06:36', '176'),
(172, 176, 74, 1, 10, '', '', 0, '2024-01-12 17:06:36', '176'),
(173, 176, 75, 1, 11, '', '', 0, '2024-01-12 17:06:36', '176'),
(178, 176, 78, 1, 12, '', '', 0, '2024-01-12 17:06:36', '176');

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
(1, 'PREMIUM', 'Reading', '1.1', NULL, 35, 3, 141, 1, 0),
(2, 'PREMIUM', 'Speaking', '1.1', NULL, 19, 4, 141, 1, 0),
(168, 'PREMIUM', 'Grammar', '1.1', NULL, 26, 6, 141, 1, 0),
(169, 'PREMIUM', 'Vocabulary', '1.1', NULL, 21, 7, 141, 1, 0),
(170, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 141, 1, 0),
(171, 'PREMIUM', 'Native', 'G', NULL, 73, 9, 141, 1, 0),
(172, 'PREMIUM', 'Writing', 'G', NULL, 74, 10, 141, 1, 0),
(173, 'PREMIUM', 'Listening', 'G', NULL, 75, 11, 141, 1, 0),
(178, 'PREMIUM', 'Reading', 'G', NULL, 78, 12, 141, 1, 0),
(179, 'INTENSIVE', 'Reading', '1.1', NULL, 23, 3, 142, 1, 0),
(180, 'INTENSIVE', 'Grammar', '1.1', NULL, 24, 4, 142, 1, 0),
(181, 'INTENSIVE', 'Vocabulary', '1.1', NULL, 25, 6, 142, 1, 0),
(182, 'INTENSIVE', 'Vocabulary', '1.1', NULL, 60, 7, 142, 1, 0),
(183, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 142, 1, 0),
(184, 'INTENSIVE', 'Speaking', '1.1', NULL, 67, 10, 142, 1, 0),
(187, 'INTENSIVE', 'Speaking', '1.1', NULL, 36, 10, 142, 1, 0),
(188, 'INTENSIVE', 'Writing', 'G', NULL, 80, 11, 142, 1, 0),
(189, 'INTENSIVE', 'Listening', 'G', NULL, 78, 12, 142, 1, 0),
(190, 'INTENSIVE', 'Native', 'G', NULL, 82, 13, 142, 1, 0),
(192, 'POWER SPEAKING', 'Speaking', '1.1', NULL, 24, 3, 144, 1, 0),
(193, 'POWER SPEAKING', 'Speaking Drill', '1.1', NULL, 38, 4, 144, 1, 0),
(194, 'POWER SPEAKING', 'Grammar', '1.1', NULL, 27, 6, 144, 1, 0),
(195, 'POWER SPEAKING', 'Vocabulary', '1.1', NULL, 66, 7, 144, 1, 0),
(196, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 144, 1, 0),
(197, 'POWER SPEAKING', 'Listening', 'G', NULL, 78, 9, 144, 1, 0),
(198, 'POWER SPEAKING', 'Listening', 'G', NULL, 80, 10, 144, 1, 0),
(199, 'POWER SPEAKING', 'Native', 'G', NULL, 78, 11, 144, 1, 0),
(200, 'POWER SPEAKING', 'Discussion\r\n', 'G', NULL, 80, 12, 144, 1, 0),
(201, 'TOEIC', 'Reading', '1.1', NULL, 37, 3, 152, 1, 0),
(202, 'TOEIC', 'Speaking', '1.1', NULL, 40, 4, 152, 1, 0),
(203, 'TOEIC ', 'Grammar', '1.1', NULL, 40, 6, 152, 1, 0),
(204, 'TOEIC ', 'Vocabulary', '1.1', NULL, 51, 7, 152, 1, 0),
(205, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 152, 1, 0),
(206, 'TOEIC ', 'Reading P56', 'G', NULL, 80, 9, 152, 1, 0),
(207, 'TOEIC ', 'Reading P7', 'G', NULL, 79, 10, 152, 1, 0),
(208, 'TOEIC ', 'Listening', 'G', NULL, 79, 11, 152, 1, 0),
(209, 'TOEIC', 'Listening', 'G', NULL, 80, 12, 152, 1, 0),
(210, 'PRE - TOEIC', 'Reading', '1.1', NULL, 18, 3, 151, 1, 0),
(211, 'PRE - TOEIC', 'Listening', '1.1', NULL, 36, 4, 151, 1, 0),
(212, 'PRE - TOEIC', 'Grammar', '1.1', NULL, 30, 6, 151, 1, 0),
(213, 'PRE - TOEIC', 'Vocabulary', '1.1', NULL, 33, 7, 151, 1, 0),
(214, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 151, 1, 0),
(215, 'PRE - TOEIC', 'Native', 'G', NULL, 78, 9, 151, 1, 0),
(216, 'PRE - TOEIC', 'Writing', 'G', NULL, 79, 10, 151, 1, 0),
(217, 'PRE - TOEIC', 'Listening', 'G', NULL, 80, 11, 151, 1, 0),
(218, 'PRE - TOEIC ', 'Conversation', 'G', NULL, 73, 12, 151, 1, 0),
(219, 'ESSENTIALS', 'Reading', '1.1', NULL, 19, 3, 143, 1, 0),
(220, 'ESSENTIALS', 'Speaking', '1.1', NULL, 25, 4, 143, 1, 0),
(222, 'ESSENTIALS', 'Grammar', '1.1', NULL, 33, 6, 143, 1, 0),
(223, 'ESSENTIALS', 'Vocabulary', '1.1', NULL, 35, 7, 143, 1, 0),
(224, 'IELTS - ACAD', 'Reading', '1.1', NULL, 39, 3, 145, 1, 0),
(225, 'IELTS - ACAD', 'Writing T1', '1.1', NULL, 29, 4, 145, 1, 0),
(226, 'IELTS - ACAD', 'Pronunciation', '1.1', NULL, 56, 6, 145, 1, 0),
(227, 'IELTS - ACAD', 'Speaking', '1.1', NULL, 65, 7, 145, 1, 0),
(228, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 145, 1, 0),
(229, 'IELTS - ACAD', 'Reading (IELTS INTEG)', 'G', NULL, 73, 9, 145, 1, 0),
(230, 'IELTS - ACAD', 'Listening', 'G', NULL, 77, 10, 145, 1, 0),
(231, 'IELTS - ACAD', 'Writing T2', 'G', NULL, 76, 11, 145, 1, 0),
(232, 'IELTS - ACAD', 'Grammar Voca', 'G', NULL, 80, 12, 145, 1, 0),
(233, 'IELTS - GEN', 'Reading', '1.1', NULL, 26, 3, 146, 1, 0),
(234, 'IELTS - GEN', 'Writing T1', '1.1', NULL, 32, 4, 146, 1, 0),
(235, 'IELTS - GEN', 'Pronunciation', '1.1', NULL, 34, 6, 146, 1, 0),
(236, 'IELTS - GEN', 'Speaking', '1.1', NULL, 36, 7, 146, 1, 0),
(237, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 146, 1, 0),
(238, 'IELTS - GEN', 'Reading (IELTS INTEG)', 'G', NULL, 78, 9, 146, 1, 0),
(239, 'IELTS - GEN', 'Listening', 'G', NULL, 78, 10, 146, 1, 0),
(240, 'IELTS - GEN', 'Writing T2', 'G', NULL, 74, 11, 146, 1, 0),
(241, 'IELTS - GEN', 'Grammar Voca', 'G', NULL, 77, 12, 146, 1, 0),
(243, 'PRE - IELTS - ACAD', 'Reading', '1.1', NULL, 34, 3, 147, 1, 0),
(244, 'PRE - IELTS - ACAD', 'Writing', '1.1', NULL, 33, 4, 147, 1, 0),
(245, 'PRE - IELTS - ACAD', 'Listening', '1.1', NULL, 37, 6, 147, 1, 0),
(246, 'PRE - IELTS - ACAD', 'Speaking', '1.1', NULL, 55, 7, 147, 1, 0),
(247, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 147, 1, 0),
(248, 'PRE - IELTS - ACAD', 'Native', 'G', NULL, 78, 9, 147, 1, 0),
(249, 'PRE - IELTS - ACAD', 'Writing', 'G', NULL, 77, 10, 147, 1, 0),
(250, 'PRE - IELTS - ACAD', 'Listening', 'G', NULL, 78, 11, 147, 1, 0),
(251, 'PRE - IELTS - ACAD', 'Conversation', 'G', NULL, 72, 12, 147, 1, 0),
(252, 'PRE - IELTS - GEN', 'Reading', '1.1', NULL, 29, 3, 150, 1, 0),
(253, 'PRE - IELTS - GEN', 'Writing', '1.1', NULL, 34, 4, 150, 1, 0),
(254, 'PRE - IELTS - GEN', 'Listening', '1.1', NULL, 52, 6, 150, 1, 0),
(255, 'PRE - IELTS - GEN', 'Speaking', '1.1', NULL, 56, 7, 150, 1, 0),
(256, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 150, 1, 0),
(257, 'PRE - IELTS - GEN', 'Native', 'G', NULL, 73, 9, 150, 1, 0),
(258, 'PRE - IELTS - GEN', 'Writing', 'G', NULL, 74, 10, 150, 1, 0),
(259, 'PRE - IELTS - GEN', 'Listening', 'G', NULL, 80, 11, 150, 1, 0),
(260, 'PRE - IELTS - GEN', 'Conversation', 'G', NULL, 75, 12, 150, 1, 0),
(261, 'BUSINESS', 'Speaking', '1.1', NULL, 18, 3, 153, 1, 0),
(262, 'BUSINESS', 'Business Grammar and Vocabulary', '1.1', NULL, 25, 4, 153, 1, 0),
(263, 'BUSINESS', 'Business Writing', '1.1', NULL, 30, 6, 153, 1, 0),
(264, 'BUSINESS', 'Professional English', '1.1', NULL, 32, 7, 153, 1, 0),
(265, 'LUNCH', 'LUNCH', 'LUNCH', NULL, 71, 8, 153, 1, 0),
(266, 'BUSINESS', 'Business Integration 1', 'G', NULL, 73, 9, 153, 1, 0),
(267, 'BUSINESS', 'Business Integration 2', 'G', NULL, 75, 10, 153, 1, 0),
(268, 'BUSINESS', 'Presentation and Socialization', 'G', NULL, 79, 11, 153, 1, 0),
(269, 'BUSINESS', 'Native', 'G', NULL, 80, 12, 153, 1, 0);

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
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

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
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

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
