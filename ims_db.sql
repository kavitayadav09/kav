-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2017 at 10:07 AM
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
-- Database: `ims_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(50) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `mobile` int(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_email`, `mobile`, `address`) VALUES
(1, 'biswarup', 'biswarup.chakraborty@gmail.com', 34343434, 'kolkata'),
(2, 'kavita', 'kavita@gmail.com', 12121212, 'kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `m_id` int(50) NOT NULL,
  `m_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`m_id`, `m_name`) VALUES
(17, 'Hikvision'),
(18, 'Acer'),
(19, 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(50) NOT NULL,
  `p_id` int(50) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` int(255) NOT NULL,
  `date` date NOT NULL,
  `resale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `serial_no` int(50) NOT NULL,
  `quantity` int(20) NOT NULL,
  `m_id` varchar(50) NOT NULL,
  `master_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `serial_no`, `quantity`, `m_id`, `master_id`) VALUES
(1, 'mouse', 1254, 15, '18', '1'),
(2, 'moniter', 4554, 3, '18', '1'),
(3, 'ghjg', 234, 2, '18', '1'),
(4, 'ghjg', 234, 2, '18', '1'),
(5, 'fghgh', 34, 1, '18', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_masters`
--

CREATE TABLE `product_masters` (
  `master_id` int(50) NOT NULL,
  `model_id` varchar(50) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `model_price` int(255) NOT NULL,
  `m_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_masters`
--

INSERT INTO `product_masters` (`master_id`, `model_id`, `model_name`, `model_price`, `m_id`) VALUES
(1, '12254', 'computer', 25000, 18);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` int(50) NOT NULL,
  `type` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `password`, `mobile`, `type`) VALUES
(1, 'admin', 'admin@admin.com', '123', 123, 1),
(4, 'Deepanjan', 'k@k.com', '123', 2147483647, 0),
(5, 'rahul', 'rahul@gmail.com', '1235', 2147483647, 0),
(7, 'basu', 'basu@gmail.com', '3555', 2147483647, 0),
(8, 'roy', 'roy@gmail.com', '444', 2147483647, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_masters`
--
ALTER TABLE `product_masters`
  ADD PRIMARY KEY (`master_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `m_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product_masters`
--
ALTER TABLE `product_masters`
  MODIFY `master_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
