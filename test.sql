-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 12:58 PM
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
-- Table structure for table `bookentry`
--

CREATE TABLE `bookentry` (
  `bookid` int(11) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `rack` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookentry`
--

INSERT INTO `bookentry` (`bookid`, `bookLNo`, `bookName`, `authorName`, `category`, `subject`, `price`, `status`, `rack`) VALUES
(1, 'd1', 'Database Management System', 'Paul', 'DBMS', 'DBMS', '700', 'active', '1'),
(2, 'd2', 'CG', 'andre', 'CG', 'Computer Graphics', '800', 'inactive', '1'),
(3, 'd3', 'DIP', 'tffg', 'DIP', 'DIP', '800', 'inactive', '2'),
(5, 'd4', 'TOC', 'KKSKS', 'TOC', 'TOC', '300', 'active', '3');

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
  `status` varchar(255) NOT NULL,
  `rack` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookissue`
--

INSERT INTO `bookissue` (`bookIssueId`, `userId`, `bookLNo`, `userName`, `bookName`, `authorName`, `issueDate`, `dueDate`, `status`, `rack`) VALUES
(32, 'y2', 'd2', 'jnjn', 'CG', 'andre', '08-12-2020', '07-01-2021', 'inactive', '1'),
(33, 'y2', 'd1', 'jnjn', 'Database Management System', 'Paul', '08-12-2020', '07-01-2021', 'inactive', '1'),
(34, 'y2', 'd3', 'jnjn', 'DIP', 'tffg', '08-12-2020', '07-01-2021', 'active', '2'),
(35, 'y2', 'd2', 'jnjn', 'CG', 'andre', '08-12-2020', '07-01-2021', 'active', '1');

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
(1, '43', '7', '27-11-2020', '27-12-2020', '27-11-2020', 'Nil'),
(2, 'z', 'd1', '07-12-2020', '06-01-2021', '07-12-2020', 'Nil'),
(3, 'y2', 'd2', '08-12-2020', '07-01-2021', '08-12-2020', 'Nil'),
(4, 'y2', 'd1', '08-12-2020', '07-01-2021', '08-12-2020', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `pass`, `mobile`, `email`) VALUES
(1, 'lms', 'lms', '88767765142', '123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookentry`
--
ALTER TABLE `bookentry`
  ADD PRIMARY KEY (`bookid`);

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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookentry`
--
ALTER TABLE `bookentry`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookissue`
--
ALTER TABLE `bookissue`
  MODIFY `bookIssueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `bookreturn`
--
ALTER TABLE `bookreturn`
  MODIFY `bookReturnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
