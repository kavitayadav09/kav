-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 07:40 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phplibrarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_master_tbl`
--

CREATE TABLE `user_master_tbl` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_first_name` varchar(50) DEFAULT NULL,
  `user_middle_name` varchar(50) DEFAULT NULL,
  `user_last_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_mobile` varchar(10) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `user_reported_spam` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_date` datetime DEFAULT NULL,
  `last_login_date` timestamp NULL DEFAULT NULL,
  `login_count` int(11) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_alias` varchar(30) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `user_city` int(11) DEFAULT NULL,
  `user_pincode` varchar(6) DEFAULT NULL,
  `user_state` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_module_tbl`
--

CREATE TABLE `user_module_tbl` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission_tbl`
--

CREATE TABLE `user_permission_tbl` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_module_tbl`
--

CREATE TABLE `user_sub_module_tbl` (
  `sub_module_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_name` varchar(50) NOT NULL,
  `sub_module_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_master_tbl`
--
ALTER TABLE `user_master_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_module_tbl`
--
ALTER TABLE `user_module_tbl`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `user_permission_tbl`
--
ALTER TABLE `user_permission_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_module_tbl`
--
ALTER TABLE `user_sub_module_tbl`
  ADD PRIMARY KEY (`sub_module_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_master_tbl`
--
ALTER TABLE `user_master_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_module_tbl`
--
ALTER TABLE `user_module_tbl`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_permission_tbl`
--
ALTER TABLE `user_permission_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_sub_module_tbl`
--
ALTER TABLE `user_sub_module_tbl`
  MODIFY `sub_module_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
