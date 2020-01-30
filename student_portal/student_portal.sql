-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2020 at 06:43 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(255) NOT NULL,
  `unique_id` int(10) NOT NULL,
  `teacher_email` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `unique_id`, `teacher_email`, `class_name`) VALUES
(1, 943615, 'waheed5@gmail.com', 'mscfinal1'),
(2, 780418, 'kalimullah@gmail.com', 'MSc final'),
(3, 726683, 'kalimullah@gmail.com', 'MSc(Previous)'),
(4, 636056, 'kalimullah@gmail.com', 'bs chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(255) NOT NULL,
  `class_id` int(100) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_path` varchar(50) NOT NULL,
  `file_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `class_id`, `file_name`, `file_path`, `file_type`) VALUES
(1, 943615, '', 'testfiles/', ''),
(2, 943615, 'MORA-Scholarship-Form.pdf', 'testfiles/MORA-Scholarship-Form.pdf', 'application/pdf'),
(3, 780418, 'login.php', 'testfiles/login.php', 'application/octet-stream'),
(4, 780418, 'basic formula.xlsx', 'testfiles/basic formula.xlsx', 'application/vnd.openxmlformats-officedocument.spre');

-- --------------------------------------------------------

--
-- Table structure for table `keytable`
--

CREATE TABLE `keytable` (
  `key_id` int(255) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `unique_key` int(10) NOT NULL,
  `class_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keytable`
--

INSERT INTO `keytable` (`key_id`, `student_email`, `unique_key`, `class_id`) VALUES
(1, 'ahsan1@gmail.com', 943615, ''),
(2, '', 780418, ''),
(3, 'amanullah@gmail.com', 780418, ''),
(4, 'amanullah@gmail.com', 780418, ''),
(5, 'amanullah@gmail.com', 726683, ''),
(6, 'amanullah@gmail.com', 726683, '');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`id`, `name`, `url`) VALUES
(4, 'HSSC Scholarship', 'https://www.eduvision.edu.pk/scholarships/merit.php'),
(5, 'HSSC Scholarship', 'https://www.eduvision.edu.pk/scholarships/merit.php');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(255) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `student_email` varchar(30) NOT NULL,
  `student_password` varchar(50) NOT NULL,
  `security_question` varchar(100) NOT NULL,
  `question_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_email`, `student_password`, `security_question`, `question_answer`) VALUES
(1, 'ahsan', 'ahsan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(2, 'ahsan', 'ahsan1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(3, 'Aman ullah', 'amanullah@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(4, 'Faisal', 'faisal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(5, 'faheem ullah', 'faheemullah@gmail.com', '123456', 'What Is your favorite book?', 'c++'),
(6, 'sajid khan', 'sajjid@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'What is your favorite food?', 'pizza'),
(7, 'Ihsan', 'ihsanullahadamzai1997@gmail.co', '12345678', 'What Is your favorite book?', 'c++'),
(8, 'kashif khan', 'kashif@gmail.com', 'asdfgh', 'What Is your favorite book?', 'java');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(30) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `teacher_email` varchar(30) NOT NULL,
  `teacher_password` varchar(50) NOT NULL,
  `security_question` varchar(100) NOT NULL,
  `question_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_name`, `teacher_email`, `teacher_password`, `security_question`, `question_answer`) VALUES
(1, 'waheed', 'waheed5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(2, 'Kalim ullah', 'kalimullah@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(3, 'Riaz khan', 'riazkhan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(4, 'waheedullah', 'waheed@gmail.com', '12345678', 'What Is your favorite book?', 'AI'),
(5, 'Imran khan', 'imran@gmail.com', '123456789', 'What Is your favorite book?', 'java');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `keytable`
--
ALTER TABLE `keytable`
  ADD PRIMARY KEY (`key_id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keytable`
--
ALTER TABLE `keytable`
  MODIFY `key_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
