-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2020 at 06:09 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvcdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `deptname` varchar(10) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `adminid` int(11) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `dob`, `email`, `gender`, `phoneno`, `deptname`, `qualification`, `adminid`, `password`) VALUES
('amitha', '1991-03-08', 'amitha@gmail.com', 'female', 2147483647, 'cse', 'Mtech', 111, 'amitha');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `noticeid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `begdate` date NOT NULL,
  `author` varchar(20) NOT NULL,
  `enddate` date NOT NULL,
  `description` varchar(40) NOT NULL,
  `adminid` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noticeid`, `title`, `begdate`, `author`, `enddate`, `description`, `adminid`, `semester`) VALUES
(10, 'Welcome', '2020-01-02', 'Ms.Amitha', '2020-01-04', 'cpp discussion', 111, 0),
(10, 'Welcome', '2020-01-02', 'Ms.Amitha', '2020-01-04', 'cpp discussion', 111, 0),
(10, 'Workshop', '2020-01-02', 'Ms.Amitha', '2020-01-10', 'java discussion ', 111, 2),
(11, 'seminar', '2020-01-02', 'Ms.Gana', '2020-01-04', 'java discussion ', 111, 3);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `name` varchar(20) NOT NULL,
  `regno` int(11) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `deptname` varchar(20) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`name`, `regno`, `dob`, `email`, `gender`, `phoneno`, `deptname`, `qualification`, `batch`, `username`, `password`, `semester`) VALUES
('Abirami', 1001, '1997-07-18', 'abhi@gmail.com', 'female', 2147483647, 'eee', 'Btech', 'jsd2', 'abhirami', 'abhirami', 3),
('Ajumal', 1005, '1996-03-07', 'ajumal@gmail.com', 'male', 2147483647, 'cse', 'Btech', 'jsd2', 'ajumal', 'ajumal', 2);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `regno` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `subjectname` varchar(20) NOT NULL,
  `result` varchar(20) NOT NULL,
  `credits` int(11) NOT NULL,
  `totalgpa` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`regno`, `username`, `code`, `subjectname`, `result`, `credits`, `totalgpa`) VALUES
(1001, 'abhirami', 'cse002', 'cn', 'pass', 10, '66'),
(1005, 'ajumal', 'EC003', 'ML', 'pass', 10, '66');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `code` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `year` date NOT NULL,
  `creadit` int(11) NOT NULL,
  `subjectname` varchar(20) NOT NULL,
  `adminid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`code`, `semester`, `year`, `creadit`, `subjectname`, `adminid`) VALUES
('EC003', 2, '2018-07-05', 0, 'electronic', 111),
('EC003', 2, '2018-07-05', 67, 'electronic', 111),
('EC003', 2, '2020-01-03', 5, 'electronics', 111),
('cse002', 3, '2020-01-03', 10, 'html', 111);

-- --------------------------------------------------------

--
-- Table structure for table `subjectlist`
--

CREATE TABLE `subjectlist` (
  `subjectname` varchar(20) NOT NULL,
  `coursename` varchar(20) NOT NULL,
  `adminid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjectlist`
--

INSERT INTO `subjectlist` (`subjectname`, `coursename`, `adminid`) VALUES
('ML', 'cse0002', 111);

-- --------------------------------------------------------

--
-- Table structure for table `superuser`
--

CREATE TABLE `superuser` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superuser`
--

INSERT INTO `superuser` (`username`, `password`) VALUES
('superuser', 'superuser1');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `semester` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subjectname` varchar(20) NOT NULL,
  `coursename` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL,
  `adminid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`semester`, `day`, `subjectname`, `coursename`, `code`, `time`, `adminid`) VALUES
(0, 'Monday', 'ML', 'jsd', 'EC003', '10:00:00', 111),
(2, 'Monday', 'php', 'jsd', 'EC003', '10', 111),
(3, 'Monday', 'php', 'jsd', 'cse003', '10', 111);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
