-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 09:50 AM
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
(35, 4, 157, 2),
(37, 4, 159, 2),
(35, 6, 157, 168),
(37, 6, 159, 168),
(35, 7, 157, 169),
(37, 7, 159, 169),
(35, 9, 157, 171),
(36, 9, 159, 171),
(35, 10, 157, 172),
(38, 10, 159, 172),
(35, 11, 157, 173),
(37, 11, 159, 173),
(35, 12, 157, 178),
(37, 12, 159, 178),
(36, 3, 158, 179),
(36, 4, 158, 180),
(36, 6, 158, 181),
(36, 7, 158, 182),
(36, 10, 158, 184),
(37, 10, 158, 187),
(36, 11, 158, 188),
(36, 12, 158, 189),
(35, 13, 158, 190);

--
-- Indexes for dumped tables
--

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
-- Constraints for dumped tables
--

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
