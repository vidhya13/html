-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2018 at 11:13 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zenith`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `phone_no` varchar(200) NOT NULL,
  `ACCOUNT_NO` varchar(100) NOT NULL,
  `ADDRESS` text NOT NULL,
  `BILL_WHEN` varchar(100) NOT NULL,
  `CITY` varchar(250) NOT NULL,
  `CURRENT_BALANCE_INC_PENDING_CHARGES` varchar(250) NOT NULL,
  `CUSTOMER_NAME` varchar(200) NOT NULL,
  `CUSTOMER_TYPE` varchar(200) NOT NULL,
  `CYCLE_START_T` varchar(200) NOT NULL,
  `DEAL_OBJ` varchar(200) NOT NULL,
  `DUE_DATE` varchar(200) NOT NULL,
  `EFFECTIVE_T` varchar(200) NOT NULL,
  `MOBILE_NO` varchar(200) NOT NULL,
  `PLAN_NAME` varchar(250) NOT NULL,
  `PLAN_STATUS` varchar(200) NOT NULL,
  `SERVICE_STATUS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `status`, `created_at`, `name`, `email_id`, `phone_no`, `ACCOUNT_NO`, `ADDRESS`, `BILL_WHEN`, `CITY`, `CURRENT_BALANCE_INC_PENDING_CHARGES`, `CUSTOMER_NAME`, `CUSTOMER_TYPE`, `CYCLE_START_T`, `DEAL_OBJ`, `DUE_DATE`, `EFFECTIVE_T`, `MOBILE_NO`, `PLAN_NAME`, `PLAN_STATUS`, `SERVICE_STATUS`) VALUES
(1, 1, '2017-12-13 09:53:01', 'vijay', 'vijayp@kggroup.com', '9943149509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, '2017-12-13 09:53:50', 'vasanth', 'vasanth.n@kggroup.com', '8098004000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 1, '2017-12-13 09:54:30', 'sanjay', 'vidhya.r@kggroup.com', '9750854360', '1106424508', '#, #, , , TEMPLE ALWAL, H.NO 1-7-122/1 REDDY ENCLAVE, HYDERABAD, ANDHRA PRADESH, India, 500023', '3', 'HYDERABAD', '0.0', 'A VISHWANATH REDDY ', 'Prepaid', '01-08-2016 06:30:00 PM', '0.0.0.1 /deal 3984027784 4', '13-09-2016 06:30:00 PM', '02-08-2016 03:58:00 PM', 'AVR5656@hathway.com', 'SUPER 100 HYD 40Mbps QtrlyU-SUBSCRIPTION', 'Active', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `otp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `status`, `created_at`, `otp`) VALUES
(1, 1, '2017-12-18 08:55:01', '1234'),
(2, 1, '2017-12-19 04:32:24', '1238'),
(3, 1, '2017-12-20 06:58:05', '1242'),
(4, 1, '2017-12-20 06:59:08', '1246'),
(5, 1, '2017-12-20 06:59:23', '1250');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Plan_Name` varchar(250) NOT NULL,
  `Speed` varchar(100) NOT NULL,
  `FUP` varchar(100) NOT NULL,
  `PostFUP` varchar(100) NOT NULL,
  `R3Months` varchar(100) NOT NULL,
  `R6Months` varchar(100) NOT NULL,
  `R12Months` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `status`, `created_at`, `Plan_Name`, `Speed`, `FUP`, `PostFUP`, `R3Months`, `R6Months`, `R12Months`) VALUES
(1, 1, '2017-12-19 08:53:09', 'HD4 STREAM', '50 Mbps', '200 GB', '3 Mbps', '4499', '8599', '16499'),
(2, 1, '2017-12-19 08:53:58', 'HD3 STREAM', '50 Mbps', '100 GB', '2 Mbps', '2999', '5699', '10999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
