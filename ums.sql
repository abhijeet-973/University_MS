-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 08:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE `add_student` (
  `Name` text NOT NULL,
  `dob` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Course/Branch` varchar(40) NOT NULL,
  `Roll_no` int(12) NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`Name`, `dob`, `Gender`, `Course/Branch`, `Roll_no`, `email`, `phone`, `dt`) VALUES
('Abhijeet Kumar Singh', '2002-07-03', 'Male', 'B.tech/CSE', 2020011003, 'abhiganu973@gmail.com', '8400632834', '2022-06-05 14:03:47'),
('Devesh Verma', '2000-07-03', 'Male', 'B.tech/CSE', 2020011058, 'ab@xoxo', '6598231470', '2022-06-05 15:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `password`) VALUES
('Abhijeet Kumar Singh', 'abhiganu973@gmail.com', 'sasaabhi'),
('Pankaj Chaurasiya', 'chaurasiyapankaj01@gmail.com', 'pankajbhai');

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

CREATE TABLE `attend` (
  `Roll_no` int(11) NOT NULL,
  `Semester` int(9) NOT NULL,
  `Month` text NOT NULL,
  `Avg_Attendance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`Roll_no`, `Semester`, `Month`, `Avg_Attendance`) VALUES
(2020011003, 2, 'February', 76);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `Roll_no` int(11) NOT NULL,
  `Semester` int(9) NOT NULL,
  `Marks Obtained` int(255) NOT NULL,
  `Total Marks` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`Roll_no`, `Semester`, `Marks Obtained`, `Total Marks`) VALUES
(2020011003, 2, 89, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_student`
--
ALTER TABLE `add_student`
  ADD PRIMARY KEY (`Roll_no`);

--
-- Indexes for table `attend`
--
ALTER TABLE `attend`
  ADD KEY `Test1` (`Roll_no`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD KEY `Test2` (`Roll_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attend`
--
ALTER TABLE `attend`
  ADD CONSTRAINT `Test1` FOREIGN KEY (`Roll_no`) REFERENCES `add_student` (`Roll_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `Test2` FOREIGN KEY (`Roll_no`) REFERENCES `add_student` (`Roll_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
