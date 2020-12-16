-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 06:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookissue`
--

CREATE TABLE `bookissue` (
  `bookIssueId` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookissue`
--

INSERT INTO `bookissue` (`bookIssueId`, `userId`, `bookLNo`, `userName`, `bookName`, `authorName`, `issueDate`, `dueDate`, `status`) VALUES
(1, '43', 'y7', 'jnjn', 'hhbh', 'njjn', '26-08-2020', '28-08-2020', 'inactive'),
(2, '43', '1', 'jnjn', 'hhbh', 'njjn', '19-11-2020', '19-12-2020', 'inactive'),
(29, '43', '9', 'jnjn', 'hhbh', 'njjn', '27-11-2020', '27-12-2020', 'inactive'),
(30, '43', '7', 'jnjn', 'hhbh', 'njjn', '27-11-2020', '27-12-2020', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `bookreturn`
--

CREATE TABLE `bookreturn` (
  `bookReturnId` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL,
  `returnDate` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookreturn`
--

INSERT INTO `bookreturn` (`bookReturnId`, `userId`, `bookLNo`, `issueDate`, `dueDate`, `returnDate`, `remark`) VALUES
(1, '43', '7', '27-11-2020', '27-12-2020', '27-11-2020', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `userId`, `bookLNo`, `bookName`, `authorName`, `issueDate`, `dueDate`) VALUES
(3, '1', '12', 'wings', 'absjb', '19-08-2020', '21-08-2020'),
(4, '2', 'jh', 'asa', 'sa', '27-08-2020', '29-08-2020'),
(5, '3', '3', '3', '3', '25-08-2020', '29-08-2020'),
(7, 'n', 'jbj', 'hhbh', 'njjn', '15-08-2020', '31-08-2020'),
(8, '7', '22', 'hhbh', 'njjn', '25-08-2020', '28-08-2020');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `dob`) VALUES
(1, 'inba', '31-08-2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookissue`
--
ALTER TABLE `bookissue`
  ADD PRIMARY KEY (`bookIssueId`);

--
-- Indexes for table `bookreturn`
--
ALTER TABLE `bookreturn`
  ADD PRIMARY KEY (`bookReturnId`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookissue`
--
ALTER TABLE `bookissue`
  MODIFY `bookIssueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bookreturn`
--
ALTER TABLE `bookreturn`
  MODIFY `bookReturnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
