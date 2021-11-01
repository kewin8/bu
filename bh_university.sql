-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2021 at 08:42 AM
-- Server version: 8.0.21
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bh_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_data`
--

CREATE TABLE `department_data` (
  `sno` int NOT NULL,
  `department_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yaer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_data`
--

INSERT INTO `department_data` (`sno`, `department_name`, `department_id`, `telephone`, `faculty_name`, `degree`, `yaer`, `course_name`) VALUES
(6, 'CSE', '104', 'ryrtryrt', 'GAYAL', 'BE', '213', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_aadhar` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_department` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_degree` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_pincode` text NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_aadhar`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_department`, `u_degree`, `u_pincode`, `u_mother`, `u_family`, `staff_id`, `uploaded`) VALUES
(104, 'ABCD12345677', 'Kush ghgj', 'Singh', '', 'xxxxxxxxxxxx', '2021-01-22', 'Male', 'emmyluckytech@gmail.com', '1234567890', 'Himachal Pra', 'Rohtas', 'Dehri', 'Dehri', '111111111', '', '', '111111111111', '2021-01-16 13:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `AY`, `SEMESTER`) VALUES
(1, 'Spiral Filipino', 'Filipino for Grade 7 - Spiral Filipino', 3, '', 47, '2013-2014', 'First'),
(2, 'Spiral English', 'English for Grade 7', 3, '', 47, '2013-2014', 'First'),
(3, 'Spiral Mathematics', 'Mathematics for Grade 7 - Spiral Math', 3, '', 47, '2013-2014', 'First'),
(4, 'Spiral Science', 'Science for Grade 7', 3, '', 47, '2013-2014', 'First'),
(5, 'Spiral T.L.E', 'T.L.E for Grade 7', 3, '', 47, '2013-2014', 'First'),
(6, 'Spiral A.P', 'Araling Panlipunan for Grade 7', 3, '', 47, '2013-2014', 'First'),
(7, 'Spiral Religion', 'rekligion for Grade 7', 3, '', 47, '2013-2014', 'First'),
(8, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 47, '2013-2014', 'First'),
(9, 'MAPEH', 'MAPEH for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(10, 'MAPEH', 'MAPEH for Grade 7', 3, '', 47, '2013-2014', 'First'),
(11, 'Religion', 'Religion for Grade 8', 3, '', 48, '2013-2014', 'First'),
(12, 'Spiral Filipino', 'Filipino for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(13, 'Spiral English', 'English for Grade 8', 3, '', 48, '2013-2014', 'First'),
(14, 'Spiral Mathematics', 'Mathematics for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(15, 'Spiral Science', 'Science for Grade ', 3, '', 48, '2013-2014', 'First'),
(16, 'Spiral T.L.E.', 'T.L.E for Grade 7 ', 3, '', 48, '2013-2014', 'First'),
(17, 'Spiral A.P.', 'Araling Panlipunan for Grade 8', 3, '', 48, '2013-2014', 'First'),
(18, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 48, '2013-2014', 'First'),
(19, 'Spiral Filipino', 'Filipino for Grade 9', 3, '', 49, '2013-2014', 'First'),
(20, 'Spiral English', 'English for Grade 9', 3, '', 49, '2013-2014', 'First'),
(21, 'Spiral Mathematics', 'Mathematics for Grade 9', 3, '', 49, '2013-2014', 'First'),
(22, 'Spiral Science', 'Science for Grade 9', 3, '', 49, '2013-2014', 'First'),
(23, 'Spiral A.P.', 'Araling Panlipunan for Grade 9', 3, '', 49, '2013-2014', 'First'),
(24, 'Spiral T.L.E.', 'T.L.E for Grade 9', 3, '', 49, '2013-2014', 'First'),
(25, 'Spiral MAPEH', 'MAPEH for Grade 9', 3, '', 49, '2013-2014', 'First'),
(26, 'Values Education', 'Values Education for Grade 9', 3, '', 49, '2013-2014', 'First'),
(27, 'Computer', 'Computer for grade 9', 3, '', 49, '2013-2014', 'First'),
(28, 'Religion IV', 'Religion for Grade 10', 3, '', 50, '2013-2014', 'First'),
(29, 'Spiral Filipino', 'Filipino for Grade 10', 3, '', 50, '2013-2014', 'First'),
(30, 'Spiral Mathematics', 'Mathematics for Grade 10', 3, '', 50, '2013-2014', 'First'),
(31, 'Spiral Science', 'Science for Grade 10', 3, '', 50, '2013-2014', 'First'),
(32, 'Spiral T.L.E.', 'T.L.E for Grade 10', 3, '', 50, '2013-2014', 'First'),
(33, 'Spiral MAPEH', 'MAPEH for Grade 10', 3, '', 50, '2013-2014', 'First'),
(34, 'Values Education', 'Values Education for Grade 10', 3, '', 50, '2013-2014', 'First'),
(35, 'CAT', 'Citizens Advancement Training', 3, '', 50, '2013-2014', 'First'),
(36, 'Computer', 'Computer for grade 10', 3, '', 50, '2013-2014', 'First'),
(37, 'hjgjhggh', 'gj', 3, '', 51, '2013-2014', 'First'),
(38, 'Spiral Filipino', 'Filipino for Grade 7 - Spiral Filipino', 3, '', 47, '2013-2014', 'First'),
(39, 'Spiral English', 'English for Grade 7', 3, '', 47, '2013-2014', 'First'),
(40, 'Spiral Mathematics', 'Mathematics for Grade 7 - Spiral Math', 3, '', 47, '2013-2014', 'First'),
(41, 'Spiral Science', 'Science for Grade 7', 3, '', 47, '2013-2014', 'First'),
(42, 'Spiral T.L.E', 'T.L.E for Grade 7', 3, '', 47, '2013-2014', 'First'),
(43, 'Spiral A.P', 'Araling Panlipunan for Grade 7', 3, '', 47, '2013-2014', 'First'),
(44, 'Spiral Religion', 'rekligion for Grade 7', 3, '', 47, '2013-2014', 'First'),
(45, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 47, '2013-2014', 'First'),
(46, 'MAPEH', 'MAPEH for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(47, 'MAPEH', 'MAPEH for Grade 7', 3, '', 47, '2013-2014', 'First'),
(48, 'Religion', 'Religion for Grade 8', 3, '', 48, '2013-2014', 'First'),
(49, 'Spiral Filipino', 'Filipino for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(50, 'Spiral English', 'English for Grade 8', 3, '', 48, '2013-2014', 'First'),
(51, 'Spiral Mathematics', 'Mathematics for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(52, 'Spiral Science', 'Science for Grade ', 3, '', 48, '2013-2014', 'First'),
(53, 'Spiral T.L.E.', 'T.L.E for Grade 7 ', 3, '', 48, '2013-2014', 'First'),
(54, 'Spiral A.P.', 'Araling Panlipunan for Grade 8', 3, '', 48, '2013-2014', 'First'),
(55, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 48, '2013-2014', 'First'),
(56, 'Spiral Filipino', 'Filipino for Grade 9', 3, '', 49, '2013-2014', 'First'),
(57, 'Spiral English', 'English for Grade 9', 3, '', 49, '2013-2014', 'First'),
(58, 'Spiral Mathematics', 'Mathematics for Grade 9', 3, '', 49, '2013-2014', 'First'),
(59, 'Spiral Science', 'Science for Grade 9', 3, '', 49, '2013-2014', 'First'),
(60, 'Spiral A.P.', 'Araling Panlipunan for Grade 9', 3, '', 49, '2013-2014', 'First'),
(61, 'Spiral T.L.E.', 'T.L.E for Grade 9', 3, '', 49, '2013-2014', 'First'),
(62, 'Spiral MAPEH', 'MAPEH for Grade 9', 3, '', 49, '2013-2014', 'First'),
(63, 'Values Education', 'Values Education for Grade 9', 3, '', 49, '2013-2014', 'First'),
(64, 'Computer', 'Computer for grade 9', 3, '', 49, '2013-2014', 'First'),
(65, 'Religion IV', 'Religion for Grade 10', 3, '', 50, '2013-2014', 'First'),
(66, 'Spiral Filipino', 'Filipino for Grade 10', 3, '', 50, '2013-2014', 'First'),
(67, 'Spiral Mathematics', 'Mathematics for Grade 10', 3, '', 50, '2013-2014', 'First'),
(68, 'Spiral Science', 'Science for Grade 10', 3, '', 50, '2013-2014', 'First'),
(69, 'Spiral T.L.E.', 'T.L.E for Grade 10', 3, '', 50, '2013-2014', 'First'),
(70, 'Spiral MAPEH', 'MAPEH for Grade 10', 3, '', 50, '2013-2014', 'First'),
(71, 'Values Education', 'Values Education for Grade 10', 3, '', 50, '2013-2014', 'First'),
(72, 'CAT', 'Citizens Advancement Training', 3, '', 50, '2013-2014', 'First'),
(73, 'Computer', 'Computer for grade 10', 3, '', 50, '2013-2014', 'First'),
(74, 'hjgjhggh', 'gj', 3, '', 51, '2013-2014', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(5, 'kushkush', '$2y$10$pkgNOc0r6DaiDnCTIVT/VubRm0LqncpPgipzdARaH/9wZto.zmYLu', '2021-05-22 00:30:03'),
(6, '123123', '$2y$10$AwA0obkWAdzF6Z6zCqZ3Xu5QinFNWhL89iAUde8YYfYorruaxOjCm', '2021-07-17 16:49:54'),
(7, 'admin', 'admin123', '2021-10-28 14:52:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_data`
--
ALTER TABLE `department_data`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_data`
--
ALTER TABLE `department_data`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
