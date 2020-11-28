-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2020 at 02:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmls`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE `Admins` (
  `sno` int(11) NOT NULL,
  `Admin_name` varchar(23) NOT NULL,
  `Pwd` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admins`
--

INSERT INTO `Admins` (`sno`, `Admin_name`, `Pwd`) VALUES
(1, 'Rohit', 'rohit'),
(2, 'Sagar', 'sagar'),
(3, 'Sajan', 'sajan');

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE `Clients` (
  `sno` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `Fname` varchar(23) NOT NULL,
  `Lname` varchar(23) NOT NULL,
  `Email` varchar(23) NOT NULL,
  `Pwd` varchar(23) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Clients`
--

INSERT INTO `Clients` (`sno`, `username`, `Fname`, `Lname`, `Email`, `Pwd`, `dt`) VALUES
(1, 'dummy', 'dum', 'my', 'dummy@gmail.com', 'dummy', '2020-11-27 20:56:43'),
(10, 'Sajan19', 'SAJAN', 'VISHWAKARMA', 'sajan@gmail.com', 'sajan', '2020-11-27 22:00:02'),
(11, 'sajan_19', 'sajan', 'vishwakarma', 'sajan@gmail', 'sajan', '2020-11-28 10:45:48'),
(12, 'itsrdb', 'ROHIT', 'BORKAR', 'rohit@gmail.com', 'rohit', '2020-11-28 18:10:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admins`
--
ALTER TABLE `Admins`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
