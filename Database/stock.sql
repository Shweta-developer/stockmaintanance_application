-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2018 at 07:31 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `uname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pqty` varchar(30) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`uname`, `email`, `pname`, `pqty`, `addr`, `contact`) VALUES
('keerthidk', 'keerthisri20393@gmail.com', 'LG ', '1', 'JP Nagar,Bangalore', '07904486806');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(30) NOT NULL,
  `sub` varchar(30) NOT NULL,
  `descrip` varchar(30) NOT NULL,
  `rate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `sub`, `descrip`, `rate`) VALUES
('keerthidk', 'Hi', 'Service is good ', '4');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `cname` varchar(30) NOT NULL,
  `ctype` varchar(30) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pprice` varchar(50) NOT NULL,
  `pdesc` varchar(100) NOT NULL,
  `pimg` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`cname`, `ctype`, `pname`, `pprice`, `pdesc`, `pimg`) VALUES
('TV', 'Electronics', 'LG', '20000', 'Good Qulaity LED Tv', 0x7465632e6a7067),
('OS', 'software', 'Windows 10', '2500', 'Windows 10 with product key and crack file ', 0x66617669636f6e2e69636f),
('Monitor', 'hardware', 'DELL Monitor', '10000', 'Good Quality LED Monitor', 0x7465632e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`name`, `email`, `username`, `pass`) VALUES
('keerthi', 'keerthisri20393@gmail.com', 'keerthidk', '123456'),
('megha', 'megha@gmail.com', 'megha123', 'qwerty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
