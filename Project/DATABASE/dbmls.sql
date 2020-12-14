-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2020 at 10:29 AM
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
  `Year` year(4) NOT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `cover` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`al_id`, `album_title`, `Year`, `artist_id`, `cover`) VALUES
(20, 'Divide', 2017, 13, '../Cover/divide.jpeg'),
(21, 'Live Fast', 2019, 14, '../Cover/livefast.jpg'),
(23, 'Jab Tak Hai Jaan', 2012, 15, '../Cover/Jab Tak Hai Jaan.jpg'),
(24, 'Padmavat', 2018, 16, '../Cover/Padmavat.jpg'),
(25, 'Ram Leela', 2013, 15, '../Cover/Ram Leela.jpg'),
(26, 'Kishore ki Yaadein', 1980, 17, '../Cover/Kishore ki Yaadein.jpg'),
(27, 'Best of Neeti Mohan', 2015, 18, '../Cover/Best of Neeti Mohan.jpg'),
(28, 'Biebs and Chill', 2020, 19, '../Cover/Biebs and Chill.jpg'),
(29, 'Changes', 2020, 19, '../Cover/Changes.jpg'),
(30, 'Different World', 2018, 14, '../Cover/Different World.jpg'),
(31, 'Live at the Bedford', 2011, 13, '../Cover/Live at the Bedford.jpg'),
(32, 'Devdas', 2002, 16, '../Cover/Devdas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `id` int(11) NOT NULL,
  `artist_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`id`, `artist_name`) VALUES
(14, 'Alan Walker'),
(15, 'Arijit Singh'),
(13, 'Ed Sheeran'),
(19, 'Justin Bieber'),
(17, 'Kishore Kumar'),
(18, 'Neeti Mohan'),
(16, 'Shreya Goshal');

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
-- Table structure for table `Favourite`
--

CREATE TABLE `Favourite` (
  `userid` int(11) NOT NULL,
  `songid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Favourite`
--

INSERT INTO `Favourite` (`userid`, `songid`) VALUES
(13, 19),
(13, 33);

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `gid` int(11) NOT NULL,
  `genre_type` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`gid`, `genre_type`) VALUES
(78, 'ASP Rocky'),
(76, 'Classical'),
(80, 'Dance'),
(77, 'Drama'),
(81, 'Gajal'),
(75, 'Metal'),
(74, 'Rock'),
(79, 'Romantic');

-- --------------------------------------------------------

--
-- Table structure for table `Track`
--

CREATE TABLE `Track` (
  `sid` int(11) NOT NULL,
  `songname` varchar(30) NOT NULL,
  `Release_date` date NOT NULL,
  `album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `audiopath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Track`
--

INSERT INTO `Track` (`sid`, `songname`, `Release_date`, `album_id`, `genre_id`, `likes`, `audiopath`) VALUES
(18, 'Saans', '2012-12-01', 23, 79, 0, '../mp3/Saans.mp3'),
(19, 'Heer', '2012-12-02', 23, 79, 1, '../mp3/Heer.mp3'),
(20, 'Ek Dil Ek Jaan', '2018-08-11', 24, 79, 1, '../mp3/Ek Dil Ek Jaan.mp3'),
(21, 'Khalibali', '2018-10-01', 24, 80, 1, '../mp3/Khalibali.mp3'),
(22, 'Laal Ishq', '2013-10-01', 25, 79, 0, '../mp3/Laal Ishq.mp3'),
(23, 'Nagada Sang Dhol', '2013-05-05', 25, 80, 0, '../mp3/Nagada Sang Dhol.mp3'),
(24, 'O Sathi Re', '1980-02-05', 26, 79, 0, '../mp3/O Sathi Re.mp3'),
(25, 'Ek Chatur Naar', '1985-06-12', 26, 77, 2, '../mp3/Ek Chatur Naar.mp3'),
(26, 'Nachi Nachi', '2020-02-03', 27, 78, 1, '../mp3/Nachi Nachi.mp3'),
(27, 'Bad Boy', '2019-09-01', 27, 80, 0, '../mp3/Bad Boy.mp3'),
(28, 'E.T.A', '2020-03-12', 28, 77, 0, '../mp3/E.T.A.mp3'),
(29, 'Confirmation', '2020-02-01', 28, 75, 1, '../mp3/Confirmation.mp3'),
(32, 'Lost Control', '2018-07-01', 30, 77, 1, '../mp3/Lost Control.mp3'),
(33, 'Lily', '2018-08-05', 30, 74, 0, '../mp3/Lily.mp3'),
(34, 'Homeless', '2011-10-15', 31, 78, 1, '../mp3/Homeless.mp3'),
(35, 'This City', '2011-09-10', 31, 75, 1, '../mp3/This City.mp3'),
(36, 'Dola Re Dola', '2002-05-20', 32, 77, 0, '../mp3/Dola Re Dola.mp3'),
(37, 'Baire Piya', '2020-02-01', 32, 79, 0, '../mp3/Baire Piya.mp3');

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
-- Indexes for table `Favourite`
--
ALTER TABLE `Favourite`
  ADD PRIMARY KEY (`userid`,`songid`),
  ADD KEY `songid` (`songid`);

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
  MODIFY `al_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Artist`
--
ALTER TABLE `Artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `Track`
--
ALTER TABLE `Track`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`id`);

--
-- Constraints for table `Favourite`
--
ALTER TABLE `Favourite`
  ADD CONSTRAINT `Favourite_ibfk_1` FOREIGN KEY (`songid`) REFERENCES `Track` (`sid`);

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
