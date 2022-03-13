-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 06:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schorlarshipproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `schorlarship_hour`
--

CREATE TABLE `schorlarship_hour` (
  `user_id` varchar(256) NOT NULL,
  `type_id` varchar(256) NOT NULL,
  `activity_name` varchar(256) NOT NULL,
  `hour` int(255) NOT NULL,
  `date` varchar(256) NOT NULL,
  `year` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schorlarship_type`
--

CREATE TABLE `schorlarship_type` (
  `tpye_id` varchar(256) NOT NULL,
  `tpye_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(256) NOT NULL,
  `user_pass` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `department` varchar(256) NOT NULL,
  `major` varchar(256) NOT NULL,
  `tel` varchar(256) NOT NULL,
  `grad` varchar(256) NOT NULL,
  `permission` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schorlarship_hour`
--
ALTER TABLE `schorlarship_hour`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `schorlarship_type`
--
ALTER TABLE `schorlarship_type`
  ADD PRIMARY KEY (`tpye_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schorlarship_hour`
--
ALTER TABLE `schorlarship_hour`
  ADD CONSTRAINT `schorlarship_hour_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `schorlarship_hour_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `schorlarship_type` (`tpye_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
