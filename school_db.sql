-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2017 at 02:57 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_board`
--

CREATE TABLE `tbl_board` (
  `board_id` int(50) NOT NULL,
  `board_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_board`
--

INSERT INTO `tbl_board` (`board_id`, `board_name`) VALUES
(1, 'WBBSE'),
(2, 'WBBHSE'),
(3, 'ICSE'),
(4, 'CBSE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_boarding`
--

CREATE TABLE `tbl_boarding` (
  `boarding_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_co_curricular_activities`
--

CREATE TABLE `tbl_co_curricular_activities` (
  `activity_id` int(50) NOT NULL,
  `activity_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_co_curricular_activities`
--

INSERT INTO `tbl_co_curricular_activities` (`activity_id`, `activity_name`) VALUES
(1, 'Dancing'),
(2, 'Singing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facilities`
--

CREATE TABLE `tbl_facilities` (
  `facility_id` int(50) NOT NULL,
  `transport` varchar(50) NOT NULL,
  `boarding` varchar(50) NOT NULL,
  `has_montessori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `gender_id` int(50) NOT NULL,
  `gender_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gender`
--

INSERT INTO `tbl_gender` (`gender_id`, `gender_name`) VALUES
(1, 'Girl'),
(2, 'Boy'),
(3, 'Co-Ed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_has_montessori`
--

CREATE TABLE `tbl_has_montessori` (
  `montessori_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medium`
--

CREATE TABLE `tbl_medium` (
  `medium_id` int(50) NOT NULL,
  `medium_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_medium`
--

INSERT INTO `tbl_medium` (`medium_id`, `medium_name`) VALUES
(1, 'English'),
(2, 'Hindi'),
(3, 'Bengali');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `school_master_id` int(50) NOT NULL,
  `school_id` int(200) NOT NULL,
  `teacher_stud_ratio` varchar(200) NOT NULL,
  `student_count` int(200) NOT NULL,
  `school_timing` varchar(100) NOT NULL,
  `classes` varchar(50) NOT NULL,
  `establish_in` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`school_master_id`, `school_id`, `teacher_stud_ratio`, `student_count`, `school_timing`, `classes`, `establish_in`) VALUES
(30, 32, '23:44', 454, '12:30am - 1:00am(nursery)', '5-12', '1999'),
(31, 33, '23:44', 454, '1:00am - 2:00am(nursery)', '5-12', '1999'),
(32, 34, '23:34', 4545, '12:00am - 1:00am(nursery)', '1-12', '1920'),
(33, 35, '23:34', 4545, '12:00am - 12:30am(nursery)', '1-12', '1920'),
(39, 41, '23:344433', 454, '12:30am - 12:30am(montessory)', '1-4', '4243');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_master`
--

CREATE TABLE `tbl_school_master` (
  `school_master_id` int(200) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(200) NOT NULL,
  `school_email` varchar(50) NOT NULL,
  `gender_id` int(50) NOT NULL,
  `medium_id` int(50) NOT NULL,
  `school_website` varchar(50) NOT NULL,
  `school_contact` varchar(50) NOT NULL,
  `board_id` varchar(50) NOT NULL,
  `activity_id` int(50) NOT NULL,
  `school_annual_fees` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school_master`
--

INSERT INTO `tbl_school_master` (`school_master_id`, `school_name`, `school_address`, `school_email`, `gender_id`, `medium_id`, `school_website`, `school_contact`, `board_id`, `activity_id`, `school_annual_fees`) VALUES
(30, 'DPS', 'Delhi', 'd@gmail.com', 1, 2, 'http://www.formvalidator.net', '5555566666,5465466546', '2, 4', 1, 233),
(31, 'DPS', 'Delhi', 'd@gmail.com', 1, 2, 'http://www.formvalidator.net', '9038066649,9007574059,8961166980', '2, 4', 1, 233),
(32, 'St. Xavier\'s School', 'taratala@123', 's@gmail.com', 1, 1, 'https://www.google.co.in', '5454654646,5646564564,4564564564', '4', 1, 344),
(33, 'St. Xavier\'s School', 'taratala@123', 's@gmail.com', 1, 1, 'https://www.google.co.in', '5454654654,5646564545,4564564511', '', 1, 344),
(39, 'St. Xavier\'s School', 'taratala@123', 'taratala@gmail.com', 2, 1, 'http://www.formvalidator.net', '6666666666,565464566,66', '2', 1, 344);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trasport`
--

CREATE TABLE `tbl_trasport` (
  `transport_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_board`
--
ALTER TABLE `tbl_board`
  ADD PRIMARY KEY (`board_id`);

--
-- Indexes for table `tbl_boarding`
--
ALTER TABLE `tbl_boarding`
  ADD PRIMARY KEY (`boarding_id`);

--
-- Indexes for table `tbl_co_curricular_activities`
--
ALTER TABLE `tbl_co_curricular_activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `tbl_facilities`
--
ALTER TABLE `tbl_facilities`
  ADD PRIMARY KEY (`facility_id`);

--
-- Indexes for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `tbl_has_montessori`
--
ALTER TABLE `tbl_has_montessori`
  ADD PRIMARY KEY (`montessori_id`);

--
-- Indexes for table `tbl_medium`
--
ALTER TABLE `tbl_medium`
  ADD PRIMARY KEY (`medium_id`);

--
-- Indexes for table `tbl_school`
--
ALTER TABLE `tbl_school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `tbl_school_master`
--
ALTER TABLE `tbl_school_master`
  ADD PRIMARY KEY (`school_master_id`);

--
-- Indexes for table `tbl_trasport`
--
ALTER TABLE `tbl_trasport`
  ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_board`
--
ALTER TABLE `tbl_board`
  MODIFY `board_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_boarding`
--
ALTER TABLE `tbl_boarding`
  MODIFY `boarding_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_co_curricular_activities`
--
ALTER TABLE `tbl_co_curricular_activities`
  MODIFY `activity_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_facilities`
--
ALTER TABLE `tbl_facilities`
  MODIFY `facility_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  MODIFY `gender_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_has_montessori`
--
ALTER TABLE `tbl_has_montessori`
  MODIFY `montessori_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_medium`
--
ALTER TABLE `tbl_medium`
  MODIFY `medium_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_school`
--
ALTER TABLE `tbl_school`
  MODIFY `school_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tbl_school_master`
--
ALTER TABLE `tbl_school_master`
  MODIFY `school_master_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tbl_trasport`
--
ALTER TABLE `tbl_trasport`
  MODIFY `transport_id` int(50) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
