-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2017 at 02:47 PM
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
  `school_timing` varchar(50) NOT NULL,
  `classes` varchar(50) NOT NULL,
  `establish_in` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`school_master_id`, `school_id`, `teacher_stud_ratio`, `student_count`, `school_timing`, `classes`, `establish_in`) VALUES
(125, 81, '34:44', 4545, '03:12 - 03:50', '12', '1922'),
(126, 82, '34:44', 4545, '03:12 - 03:50', '12', '1922'),
(127, 83, '34:44', 4545, '03:12 - 03:50', '12', '1922'),
(128, 85, '34:44', 4545, '03:12 - 03:50', '12', '1922'),
(129, 87, '34:44', 4545, '03:12 - 03:50', '12', '1922'),
(130, 88, '23:34', 323, '03:12 - 03:50', '12', '1820'),
(131, 89, '2:4', 444, '03:12 - 03:50', '10', '1834'),
(132, 90, '2:4', 444, '03:12 - 03:50', '10', '1834'),
(133, 91, '23:34', 243, '03:12 - 03:50', '12', '1999'),
(134, 92, '23:34', 243, '03:12 - 03:50,04:50 - 04:30,02:50 - 05:15', '12', '1999'),
(135, 93, '23:34', 243, '03:12 - 03:50', '12', '1999'),
(136, 94, '23:34', 243, '03:12 - 03:50,04:50,04:30', '12', '1999'),
(137, 95, '23:34', 243, '03:12 - 03:50,04:50,04:30', '12', '1999'),
(138, 96, '23:34', 243, '03:12 - 03:50', '12', '1920'),
(139, 97, '23:34', 243, '03:12 - 03:50', '12', '1920'),
(140, 98, '23:34', 243, '03:12 - 03:50,04:50 - 04:30,02:09 - 05:15', '12', '1920'),
(141, 99, '23:34', 243, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory) ', '12', '1920'),
(142, 100, '23:34', 243, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory) ', '12', '1920'),
(143, 101, '23:34', 243, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory) ', '12', '1920'),
(144, 102, '23:34', 243, '03:12 - 03:50(nursery)', '12', '1920'),
(145, 103, '23:34', 243, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory) ', '12', '1920'),
(146, 104, '23:34', 243, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory) ', '12', '1920'),
(147, 105, '23:34', 243, '03:12 - 03:50(nursery)', '12', '1920'),
(148, 106, '23:34', 243, '03:12 - 03:50(nursery)', '12', '1920'),
(149, 107, '23:34', 243, '03:12 - 03:50(nursery)', '12', '1920'),
(150, 108, '23:44', 454, '03:12 - 03:50(nursery)', '1-12', '1920'),
(151, 109, '23:44', 454, '03:12 - 03:50(nursery)', '1-12', '1920'),
(152, 110, '23:44', 454, '03:12 - 03:50(nursery)', '1-12', '1920'),
(153, 111, '23:44', 454, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory) ', '1-12', '1920'),
(154, 112, '23:44', 454, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory)', '1-12', '1920'),
(155, 113, '23:44', 454, '03:12 - 03:50(nursery)', '1-12', '1920'),
(156, 114, '23:44', 454, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory)', '1-12', '1920'),
(157, 115, '23:44', 454, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory)', '1-12', '1920'),
(158, 116, '23:44', 454, '03:12 - 03:50(nursery) , 04:50 - 04:30(montesory)', '1-12', '1920');

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
  `board_id` int(50) NOT NULL,
  `activity_id` int(50) NOT NULL,
  `school_annual_fees` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school_master`
--

INSERT INTO `tbl_school_master` (`school_master_id`, `school_name`, `school_address`, `school_email`, `gender_id`, `medium_id`, `school_website`, `school_contact`, `board_id`, `activity_id`, `school_annual_fees`) VALUES
(124, 'St.XaviersSchool', 'kolkata', 's@gmail.com', 2, 1, 'https://www.google.co.in', '666666666,,', 2, 1, 344),
(125, 'St.XaviersSchool', 'kolkata', 's@gmail.com', 2, 1, 'https://www.google.co.in', '666666666,,', 2, 1, 344),
(126, 'St.XaviersSchools', 'kolkata', 's@gmail.com', 2, 1, 'https://www.google.co.in', '666666666,,', 2, 1, 344),
(127, 'St.XaviersSchools', 'kolkata', 's@gmail.com', 2, 1, 'https://www.google.co.in', '666666666,,', 2, 1, 344),
(128, 'St.XaviersSchools12', 'kolkata', 's@gmail.com', 2, 1, 'https://www.google.co.in', '666666666,,', 2, 1, 344),
(129, 'St. Xaviers Schools', 'kolkata', 's@gmail.com', 2, 1, 'https://www.google.co.in', '666666666,,', 2, 1, 344),
(130, 'St. Xaviers School', 'kolkata', 'xyz@gmail.com', 3, 3, 'https://www.google.co.in', '666666666,,', 3, 1, 343),
(131, 'St. Xaviers School', 'kolkata', 's@gmail.com', 3, 2, 'http://www.formvalidator.net', '666666666,222222222,', 3, 1, 123),
(132, 'St. Xaviers School', 'kolkata', 's@gmail.com', 3, 2, 'http://www.formvalidator.net', '666666666,2222222224,', 3, 1, 123),
(133, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 344),
(134, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 344),
(135, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 344),
(136, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 344),
(137, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 344),
(138, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(139, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(140, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(141, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(142, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(143, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(144, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(145, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(146, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(147, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(148, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(149, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 1, 1, 'http://www.formvalidator.net', '5555566666,,', 1, 1, 343),
(150, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(151, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(152, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(153, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(154, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(155, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(156, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(157, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343),
(158, 'St. Xavier\'s School', 'kolkata', 'abc@gmail.com', 2, 1, 'http://www.formvalidator.net', '5555566666,546546,', 2, 2, 343);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_board`
--
ALTER TABLE `tbl_board`
  ADD PRIMARY KEY (`board_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_board`
--
ALTER TABLE `tbl_board`
  MODIFY `board_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `tbl_medium`
--
ALTER TABLE `tbl_medium`
  MODIFY `medium_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_school`
--
ALTER TABLE `tbl_school`
  MODIFY `school_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `tbl_school_master`
--
ALTER TABLE `tbl_school_master`
  MODIFY `school_master_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
