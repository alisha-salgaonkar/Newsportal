-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2015 at 11:28 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE IF NOT EXISTS `advertise` (
  `a_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `path` varchar(200) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`a_id`, `name`, `path`, `status`) VALUES
(35, 'gggg', 'uploads/Chrysanthemum2.jpg', 0),
(36, 'fff', 'uploads/Chrysanthemum3.jpg', 1),
(37, 'mab', 'uploads/Koala2.jpg', 1),
(38, 'hhh', 'uploads/Desert14.jpg', 1),
(39, 'sadd', 'uploads/Penguins4.jpg', 0),
(40, 'Pepsi', 'uploads/Pepsi.jpg', 1),
(41, 'KFC', 'uploads/KFC.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`a_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
