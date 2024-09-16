-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 05:44 AM
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
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'akash1@gmail.com', 'admin', '2023-04-23 20:31:45', '2023-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bird_stripe_payments`
--

CREATE TABLE `bird_stripe_payments` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_status` enum('Pending','Completed') NOT NULL DEFAULT 'Pending',
  `payment_intent` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bird_stripe_payments`
--

INSERT INTO `bird_stripe_payments` (`id`, `name`, `email`, `contact`, `amount`, `payment_status`, `payment_intent`, `created_at`) VALUES
(1, 'patel akash', 'patel@gmail.com', '9558126484', '8000.00', 'Completed', 'pi_3MuspmSCNs1ZJU0a1Ni1xh0h', '2023-04-09 09:37:06'),
(2, 'deep', 'deep@gmail.com', '9812345678', '800.00', 'Completed', 'pi_3MvJYFSCNs1ZJU0a0WcgJ5Bk', '2023-04-10 14:09:37'),
(3, 'Nirmal', 'nirmal@gmail.com', '8888888888', '60000.00', 'Pending', NULL, '2023-04-19 07:11:03'),
(4, 'Nirmal', 'nirmal@gmail.com', '8888888888', '60000.00', 'Completed', 'pi_3MyTJmSCNs1ZJU0a0uRyPycI', '2023-04-19 07:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `regNo`, `Name`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(20, '1722', 'om', 'male', 9924775168, 'om@gmail.com', '95581', '2023-01-20 10:54:32', '', ''),
(25, '1020', 'virat', 'male', 9558126484, 'patel18@gmail.com', '12345678', '2023-01-18 10:02:09', '', ''),
(26, '1200', 'deep', 'male', 9812345678, 'deep@gmail.com', '1402', '2023-01-28 07:29:12', '', '04-02-2023 12:31:54'),
(27, '2121', 'rutvik', 'male', 9714831126, 'rutvik@gmail.com', '2132', '2023-02-21 12:34:37', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `guestlog`
--

CREATE TABLE `guestlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guestlog`
--

INSERT INTO `guestlog` (`id`, `userId`, `userEmail`, `city`, `country`, `loginTime`) VALUES
(7, 21, 'patel@gmail.com', '', '', '2023-01-18 10:05:10'),
(8, 21, 'patel@gmail.com', '', '', '2023-01-20 09:16:14'),
(9, 22, 'om@gmail.com', '', '', '2023-01-20 10:55:03'),
(10, 22, 'om@gmail.com', '', '', '2023-01-20 11:08:35'),
(11, 20, 'om@gmail.com', 'Ahmedabad', 'India', '2023-01-28 06:48:54'),
(12, 26, 'deep@gmail.com', '', '', '2023-01-28 07:30:26'),
(13, 26, 'deep@gmail.com', '', '', '2023-01-28 07:38:28'),
(14, 26, 'deep@gmail.com', '', '', '2023-01-28 07:39:45'),
(15, 26, 'deep@gmail.com', '', '', '2023-01-28 07:41:22'),
(16, 26, 'deep@gmail.com', '', '', '2023-01-28 07:49:20'),
(17, 26, 'deep@gmail.com', '', '', '2023-01-28 07:49:54'),
(18, 26, 'deep@gmail.com', '', '', '2023-01-28 07:54:08'),
(19, 20, 'om@gmail.com', '', '', '2023-01-28 08:04:13'),
(20, 26, 'deep@gmail.com', '', '', '2023-01-30 11:27:21'),
(21, 26, 'deep@gmail.com', '', '', '2023-01-30 12:07:14'),
(22, 26, 'deep@gmail.com', '', '', '2023-01-30 12:14:19'),
(23, 26, 'deep@gmail.com', '', '', '2023-02-04 06:31:58'),
(24, 26, 'deep@gmail.com', '', '', '2023-02-04 06:35:55'),
(25, 26, 'deep@gmail.com', '', '', '2023-02-04 06:40:27'),
(26, 26, 'deep@gmail.com', '', '', '2023-02-04 06:53:48'),
(27, 26, 'deep@gmail.com', '', '', '2023-02-04 07:00:14'),
(28, 26, 'deep@gmail.com', '', '', '2023-02-04 07:06:21'),
(29, 26, 'deep@gmail.com', '', '', '2023-02-05 04:35:53'),
(30, 26, 'deep@gmail.com', '', '', '2023-02-05 05:24:37'),
(31, 26, 'deep@gmail.com', '', '', '2023-02-05 05:41:57'),
(32, 20, 'om@gmail.com', '', '', '2023-02-21 05:41:52'),
(33, 25, 'patel@gmail.com', '', '', '2023-02-21 09:29:07'),
(34, 20, 'om@gmail.com', '', '', '2023-02-21 12:16:17'),
(35, 27, 'rutvik@gmail.com', '', '', '2023-02-21 12:34:54'),
(36, 20, 'om@gmail.com', '', '', '2023-02-28 12:03:58'),
(37, 27, 'rutvik@gmail.com', '', '', '2023-02-28 12:08:44'),
(38, 25, 'patel18@gmail.com', '', '', '2023-03-14 11:03:44'),
(39, 26, 'deep@gmail.com', '', 'India', '2023-04-09 07:48:51'),
(40, 20, 'om@gmail.com', '', 'India', '2023-04-09 07:52:27'),
(41, 25, 'patel18@gmail.com', '', 'India', '2023-04-09 07:53:45'),
(42, 26, 'deep@gmail.com', '', 'India', '2023-04-09 07:56:07'),
(43, 26, 'deep@gmail.com', 'Ahmedabad', 'India', '2023-04-10 12:08:38'),
(44, 26, 'deep@gmail.com', 'Ahmedabad', 'India', '2023-04-10 12:11:11'),
(45, 26, 'deep@gmail.com', 'Ahmedabad', 'India', '2023-04-10 13:07:27'),
(46, 26, 'deep@gmail.com', 'Surat', 'India', '2023-04-19 04:03:37'),
(47, 25, 'patel18@gmail.com', 'Surat', 'India', '2023-04-19 04:15:02'),
(48, 25, 'patel18@gmail.com', 'Surat', 'India', '2023-04-19 04:15:04'),
(49, 27, 'rutvik@gmail.com', 'Surat', 'India', '2023-04-19 04:28:41'),
(50, 27, 'rutvik@gmail.com', 'Surat', 'India', '2023-04-19 04:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `guest_booking`
--

CREATE TABLE `guest_booking` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater_type` varchar(50) NOT NULL,
  `feespd` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `regno` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_booking`
--

INSERT INTO `guest_booking` (`id`, `roomno`, `seater_type`, `feespd`, `foodstatus`, `stayfrom`, `duration`, `regno`, `Name`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(11, 201, '3 ', 1000, 0, '2023-01-20', 3, 1722, 'om', 'male', 9924775168, 'om@gmail.com', 1230985673, 'oppatel', 'father', 3451278905, 'bharuch,gujarat', 'bharuch', 'Gujarat', 392003, 'bharuch,gujarat', 'bharuch', 'Gujarat', 392003, '2023-01-20 10:59:01', ''),
(12, 132, '2 ', 800, 0, '2023-02-01', 1, 1200, 'deep', 'male', 9812345678, 'deep@gmail.com', 8521479631, 'dev..patel', 'father', 3451278905, 'shapura,bharuch', 'bharuch', 'Gujarat', 392003, 'shapura,bharuch', 'bharuch', 'Gujarat', 392003, '2023-02-05 05:29:58', ''),
(13, 200, '2', 800, 0, '2023-04-19', 4, 1020, 'virat', 'male', 9558126484, 'patel18@gmail.com', 5689235156, 'deepbhai', 'father', 7845123690, 'halderva,bharuch', '0', 'Gujarat', 392011, 'halderva,bharuch', '0', 'Gujarat', 392011, '2023-04-19 04:21:50', ''),
(14, 126, '2', 3000, 0, '2023-04-19', 8, 2121, 'rutvik', 'male', 9714831126, 'rutvik@gmail.com', 8521479631, 'cp patel', 'brother', 8527413690, 'ajva bharuch', 'bharuch', 'Gujarat', 392210, 'ajva bharuch', '0', 'Gujarat', 392210, '2023-04-19 04:30:44', ''),
(15, 126, '0', 3000, 0, '2023-04-19', 8, 2121, 'rutvik', 'male', 9714831126, 'rutvik@gmail.com', 8521479631, 'cp patel', '0', 8527413690, 'ajva bharuch', 'bharuch', 'Gujarat', 392210, 'ajva bharuch', '0', 'Gujarat', 392210, '2023-04-19 04:30:44', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_type_id` int(50) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `guest_charges` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_type_id`, `room_no`, `fees`, `posting_date`, `guest_charges`) VALUES
(1, 3, 100, 8000, '2022-04-11 22:45:43', 1000),
(2, 3, 201, 6000, '2022-04-12 01:30:47', 800),
(3, 2, 200, 6000, '2022-04-12 01:30:58', 800),
(5, 2, 132, 2000, '2023-01-12 01:31:15', 1000),
(7, 1, 141, 10000, '2023-02-19 13:42:43', 1000),
(11, 1, 555, 4000, '2023-03-14 06:11:23', 2000),
(15, 4, 456, 5000, '2023-03-14 09:10:00', 2000),
(19, 2, 126, 6000, '2023-03-16 11:49:06', 3000),
(23, 13, 301, 24000, '2023-03-23 04:33:48', 3000),
(24, 14, 22, 2000, '2023-04-19 04:52:31', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `seater_type` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `seater_type`, `room_type`) VALUES
(1, 1, 'Single seater-Ac'),
(2, 2, 'Double seate Non-ac'),
(3, 3, 'Triple seater-Ac'),
(4, 4, 'Family seater-Ac'),
(12, 2, 'double seate-Ac'),
(13, 3, 'triple ac'),
(14, 2, 'double nonac');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(7, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-01-18 10:05:10'),
(9, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-01-20 10:55:03'),
(10, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-01-20 11:08:35'),
(11, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-01-28 07:42:56'),
(12, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-01-28 07:42:56'),
(13, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-05 05:39:27'),
(14, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-05 05:54:22'),
(15, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 06:53:14'),
(16, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 06:53:46'),
(17, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 06:54:11'),
(18, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 06:59:33'),
(19, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 07:01:27'),
(20, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 07:07:10'),
(21, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 07:07:40'),
(22, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 07:14:40'),
(23, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 07:15:01'),
(24, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 07:20:56'),
(25, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 07:21:20'),
(26, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 11:43:05'),
(27, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 11:43:31'),
(28, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 11:45:40'),
(29, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-07 12:09:39'),
(30, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-12 05:27:26'),
(31, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-12 05:43:36'),
(32, 23, 'virat18@gmail.com', 0x3a3a31, '', '', '2023-02-19 13:09:36'),
(33, 23, 'virat18@gmail.com', 0x3a3a31, '', '', '2023-02-19 13:43:18'),
(34, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-02-21 06:36:05'),
(35, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-21 08:49:37'),
(36, 25, 'sunil@gmail.com', 0x3a3a31, '', '', '2023-02-21 09:11:35'),
(37, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-02-21 10:28:49'),
(38, 24, 'virat18@gmail.com', 0x3a3a31, '', '', '2023-02-21 11:20:36'),
(39, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-24 04:00:40'),
(40, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-26 09:34:37'),
(41, 24, 'virat18@gmail.com', 0x3a3a31, '', '', '2023-02-26 10:38:24'),
(42, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-27 03:24:09'),
(43, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-27 03:24:09'),
(44, 22, 'om@gmail.com', 0x3a3a31, '', '', '2023-02-28 11:57:50'),
(45, 25, 'sunil@gmail.com', 0x3a3a31, '', '', '2023-02-28 12:25:57'),
(46, 25, 'sunil@gmail.com', 0x3a3a31, '', '', '2023-02-28 12:41:40'),
(47, 26, 'jay12@gmail.com', 0x3a3a31, '', '', '2023-02-28 12:46:41'),
(48, 29, 'chintan@gmail.com', 0x3a3a31, '', '', '2023-02-28 12:50:09'),
(49, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-09 07:32:44'),
(50, 24, 'virat18@gmail.com', 0x3a3a31, '', '', '2023-03-09 07:34:07'),
(51, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-13 02:57:23'),
(52, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-13 04:14:56'),
(53, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 05:42:13'),
(54, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 06:20:01'),
(55, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 06:32:34'),
(56, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 06:49:36'),
(57, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 08:10:44'),
(58, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 08:41:38'),
(59, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 09:43:06'),
(60, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 10:35:43'),
(61, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-14 11:01:54'),
(62, 25, 'sunil@gmail.com', 0x3a3a31, '', '', '2023-03-16 12:30:27'),
(63, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-16 12:47:30'),
(64, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-23 04:40:14'),
(65, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-28 11:30:22'),
(66, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-28 11:52:52'),
(67, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-28 12:08:23'),
(68, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-29 10:42:04'),
(69, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-29 11:29:14'),
(70, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-29 11:43:07'),
(71, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-29 12:39:47'),
(72, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-30 07:05:27'),
(73, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-30 07:32:01'),
(74, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-30 08:03:45'),
(75, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-30 10:27:39'),
(76, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-31 05:30:22'),
(77, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-03-31 05:30:42'),
(78, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-03-31 06:16:14'),
(79, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-03 03:51:59'),
(80, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-03 03:58:43'),
(81, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-03 04:09:58'),
(82, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-03 04:39:13'),
(83, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-03 05:51:29'),
(84, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-03 05:57:22'),
(85, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-03 06:34:15'),
(86, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-03 06:45:26'),
(87, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-05 10:26:37'),
(88, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-05 10:29:24'),
(89, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-06 04:11:59'),
(90, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-06 05:03:10'),
(91, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-06 05:03:56'),
(92, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-09 07:28:24'),
(93, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-09 07:32:35'),
(94, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-09 07:32:36'),
(95, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-09 10:35:20'),
(96, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-09 11:47:32'),
(97, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 07:16:03'),
(98, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 07:16:05'),
(99, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 11:15:05'),
(100, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 11:15:05'),
(101, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 11:19:45'),
(102, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 11:19:46'),
(103, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 11:50:45'),
(104, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 11:51:08'),
(105, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 11:53:50'),
(106, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-10 12:37:01'),
(107, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-18 06:31:15'),
(108, 29, 'chintan@gmail.com', 0x3a3a31, '', '', '2023-04-18 06:33:24'),
(109, 34, 'manav@gmail.com', 0x3a3a31, '', '', '2023-04-18 06:57:20'),
(110, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-18 07:20:05'),
(111, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 03:58:39'),
(112, 26, 'jay12@gmail.com', 0x3a3a31, '', '', '2023-04-19 04:06:51'),
(113, 29, 'chintan@gmail.com', 0x3a3a31, '', '', '2023-04-19 04:08:07'),
(114, 35, 'nirmal@gmail.com', 0x3a3a31, '', '', '2023-04-19 05:02:45'),
(115, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 06:08:46'),
(116, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 06:17:01'),
(117, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 06:48:10'),
(118, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 06:48:11'),
(119, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 06:52:50'),
(120, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 07:08:00'),
(121, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 07:18:30'),
(122, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 07:23:06'),
(123, 21, 'patel@gmail.com', 0x3a3a31, '', '', '2023-04-19 13:08:47'),
(124, 26, 'jay12@gmail.com', 0x3a3a31, '', '', '2023-04-20 02:47:00'),
(125, 26, 'jay12@gmail.com', 0x3a3a31, '', '', '2023-04-20 02:47:01'),
(126, 26, 'jay12@gmail.com', 0x3a3a31, '', '', '2023-04-20 02:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(21, '10200', 'patel', 'akash', 'chetanbhai', 'male', 9558126484, 'patel@gmail.com', '12345678', '2023-01-18 10:02:09', '', ''),
(24, '1818', 'virat', 'kohli', 'cheshmaster', 'male', 4556567489, 'virat18@gmail.com', 'virat18', '2023-02-19 13:09:13', '', ''),
(25, '1047', 'vanza', 'sunil', 'devbhai', 'male', 9714831125, 'sunil@gmail.com', '971483', '2023-02-21 09:11:13', '', ''),
(26, '550', 'jay', 'patel', 'deepbhai', 'male', 9714831125, 'jay12@gmail.com', '9714831125', '2023-02-27 04:03:51', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_booking`
--

CREATE TABLE `user_booking` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater_type` varchar(50) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_booking`
--

INSERT INTO `user_booking` (`id`, `roomno`, `seater_type`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(13, 141, '1 ', 10000, 0, '2023-03-01', 6, 550, 'jay', 'patel', 'deepbhai', 'male', 9714831125, 'jay12@gmail.com', 8987456235, 'deepbhai', 'father', 9723824280, 'shahpura,bharuch', 'bharuch', 'Gujarat', 392210, 'shahpura,bharuch', 'bharuch', 'Gujarat', 392210, '2023-02-27 04:03:51', ''),
(16, 201, '3 ', 6000, 0, '2023-02-28', 2, 1047, 'vanza', 'sunil', 'devbhai', 'male', 9714831125, 'sunil@gmail.com', 1236985472, 'b kumar', 'father', 8527413690, 'bharuch,gujarat', 'bharuch', 'Gujarat', 392001, 'bharuch,gujarat', 'bharuch', 'Gujarat', 392001, '2023-02-28 12:43:24', ''),
(17, 555, '1', 4000, 0, '2023-03-14', 2, 10200, 'patel', 'akash', 'chetanbhai', 'male', 9558126484, 'patel@gmail.com', 8150096680, 'rutvik p', 'brother', 9714831125, 'bharuch 392011', 'bharuch', 'Gujarat', 392003, 'bharuch 392011', 'bharuch', 'Gujarat', 392003, '2023-03-14 08:26:04', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bird_stripe_payments`
--
ALTER TABLE `bird_stripe_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guestlog`
--
ALTER TABLE `guestlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_booking`
--
ALTER TABLE `guest_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_booking`
--
ALTER TABLE `user_booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bird_stripe_payments`
--
ALTER TABLE `bird_stripe_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `guestlog`
--
ALTER TABLE `guestlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `guest_booking`
--
ALTER TABLE `guest_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_booking`
--
ALTER TABLE `user_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
