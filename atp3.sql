-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2020 at 11:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atp3`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidinglists`
--

CREATE TABLE `bidinglists` (
  `id` int(50) NOT NULL,
  `JobId` int(50) NOT NULL,
  `BidBy` int(50) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidinglists`
--

INSERT INTO `bidinglists` (`id`, `JobId`, `BidBy`, `Description`) VALUES
(1, 1, 1, 'sdfsdggzgzfhf');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(50) NOT NULL,
  `customername` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phoneno` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customername`, `email`, `address`, `phoneno`) VALUES
(1, 'tamima', 'tamima@gmail.com', 'dhaka', 9876);

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--

CREATE TABLE `cvs` (
  `cvid` int(50) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Phoneno` int(50) NOT NULL,
  `EduBack` text NOT NULL,
  `Address` text NOT NULL,
  `Skill` text NOT NULL,
  `Experience` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvs`
--

INSERT INTO `cvs` (`cvid`, `FirstName`, `LastName`, `Phoneno`, `EduBack`, `Address`, `Skill`, `Experience`) VALUES
(1, 'tamima', 'tarin', 987687, 'Bsc', 'rangpur', 'sjhfgsiyt', 'aieryweui');

-- --------------------------------------------------------

--
-- Table structure for table `joblists`
--

CREATE TABLE `joblists` (
  `id` int(50) NOT NULL,
  `PostedBy` int(11) NOT NULL,
  `Status` text NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL,
  `Budget` int(50) NOT NULL,
  `JobType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joblists`
--

INSERT INTO `joblists` (`id`, `PostedBy`, `Status`, `Title`, `Description`, `Budget`, `JobType`) VALUES
(1, 1, 'active', 'sdhfg', 'lshgls', 500, 'sjhdfgh'),
(2, 3, 'sfsfs', 'sdfs', 'adfadf', 455, 'xfg');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `loginid` int(50) NOT NULL,
  `userid` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`loginid`, `userid`, `email`, `password`, `type`, `status`) VALUES
(1, 1, 'tarin@gmail.com', 'tarin', 'worker', 'active'),
(2, 2, 'mango', 'mango', 'worker', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE `messaging` (
  `messageid` int(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `Gender` text NOT NULL,
  `AccountStatus` text NOT NULL,
  `Address` text NOT NULL,
  `WorkType` text NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Password`, `type`, `Gender`, `AccountStatus`, `Address`, `WorkType`, `updated_at`, `created_at`) VALUES
(8, 'nirob', 'nirob@gmail.com', 'nirob', 'worker', 'male', 'activate', 'dhaka', 'student', '2020-05-16 20:31:10', '2020-05-16 14:51:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidinglists`
--
ALTER TABLE `bidinglists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`cvid`);

--
-- Indexes for table `joblists`
--
ALTER TABLE `joblists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidinglists`
--
ALTER TABLE `bidinglists`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `cvid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `joblists`
--
ALTER TABLE `joblists`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `loginid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `messageid` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
