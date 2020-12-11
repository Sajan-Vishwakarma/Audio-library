-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2020 at 10:36 AM
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
-- Table structure for table `Album`
--

CREATE TABLE `Album` (
  `al_id` int(11) NOT NULL,
  `album_title` varchar(30) NOT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `id` int(11) NOT NULL,
  `artist_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(12, 'itsrdb', 'ROHIT', 'BORKAR', 'rohit@gmail.com', 'rohit', '2020-11-28 18:10:23'),
(13, 'sajan', 'sajan', 'vish', 'sajan@gmail.com', 'sajan', '2020-12-02 10:23:07'),
(14, 'Sajan19_', 'sajan', 'vishwakarma', 'sajan@gmail.com', 'sajan', '2020-12-02 13:06:18'),
(36, 'saj', 'sajan', 'vishwa', 'sajan@gmail', 'sajan', '2020-12-03 10:41:42'),
(37, 'sjan', 'sajan', 'vishwa', 'sajan@gmail', 'sajan', '2020-12-03 10:41:42'),
(38, 'sjahenn', 'sajan', 'vishwa', 'sajan@gmail', 'sajan', '2020-12-03 10:41:42'),
(39, 'rajns', 'sajan', 'vihenwa', 'sajan@gmail', 'sajan', '2020-12-03 10:41:42'),
(40, 'ssdfan', 'paul', 'hen', 'sajan@gmail', 'sajan', '2020-12-03 10:41:42'),
(41, 'rajhenns', 'spauln', 'henry', 'sajan@gmail', 'sajan', '2020-12-03 10:41:42'),
(42, 'sspaulan', 'spaul', 'henry', 'sajan@gmail', 'sajan', '2020-12-03 10:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `cno` int(11) NOT NULL,
  `user` varchar(23) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `Email` varchar(23) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `gid` int(11) NOT NULL,
  `genre_type` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Track`
--

CREATE TABLE `Track` (
  `sid` int(11) NOT NULL,
  `songname` varchar(30) NOT NULL,
  `album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`al_id`),
  ADD UNIQUE KEY `album_title` (`album_title`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_name` (`artist_name`);

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`cno`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`gid`),
  ADD UNIQUE KEY `genre_type` (`genre_type`);

--
-- Indexes for table `Track`
--
ALTER TABLE `Track`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admins`
--
ALTER TABLE `Admins`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Album`
--
ALTER TABLE `Album`
  MODIFY `al_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Artist`
--
ALTER TABLE `Artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `Track`
--
ALTER TABLE `Track`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`id`);

--
-- Constraints for table `Track`
--
ALTER TABLE `Track`
  ADD CONSTRAINT `Track_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `Album` (`al_id`),
  ADD CONSTRAINT `Track_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`gid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
