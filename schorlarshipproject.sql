-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 06:59 PM
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
  `hour_id` int(255) NOT NULL,
  `user_id` varchar(256) NOT NULL,
  `type_id` varchar(256) NOT NULL,
  `hour` int(255) NOT NULL,
  `date` date DEFAULT NULL,
  `year` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schorlarship_hour`
--

INSERT INTO `schorlarship_hour` (`hour_id`, `user_id`, `type_id`, `hour`, `date`, `year`) VALUES
(32, '6401861', '01', 2, '2022-04-01', 2564);

-- --------------------------------------------------------

--
-- Table structure for table `schorlarship_type`
--

CREATE TABLE `schorlarship_type` (
  `type_id` varchar(256) NOT NULL,
  `type_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schorlarship_type`
--

INSERT INTO `schorlarship_type` (`type_id`, `type_name`) VALUES
('01', 'ชั่วโมงส่วนกลาง'),
('02', 'ชั่วโมงคณะ'),
('03', 'ชั่วโมงนักศึกษาทุน');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(256) NOT NULL,
  `user_lastname` varchar(256) NOT NULL,
  `user_id` varchar(256) NOT NULL,
  `user_depart` varchar(256) NOT NULL,
  `user_major` varchar(256) NOT NULL,
  `user_year` varchar(256) NOT NULL,
  `user_tel` varchar(256) NOT NULL,
  `user_pass` varchar(256) NOT NULL,
  `permission` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `user_lastname`, `user_id`, `user_depart`, `user_major`, `user_year`, `user_tel`, `user_pass`, `permission`) VALUES
('อนุภัทร', 'แก้วมี', '6400922', 'วิทยาลัยนวัตกรรมดิจิทัลเทคโนโลยี', 'คอมพิวเตอร์ เกมส์และอีสปอร์ต', '3', '0943986347', '0922', 'user'),
('Sataras', 'Keawsigh', '6401159', 'วิทยาลัยนวัตกรรมดิจิทัลเทคโนโลยี', 'สารสนเทศการลงทุน', '6', '0987654321', '1159', 'user'),
('Suchanart', 'Kumbungkhla', '6401861', 'วิทยาลัยนวัตกรรมดิจิทัลเทคโนโลยี', 'วิทยาการคอมพิวเตอร์', '1', '0943986347', '1861', 'user'),
('พิพัฒน์', 'อุปชาใต้', '6405475', 'วิทยาลัยนวัตกรรมดิจิทัลเทคโนโลยี', 'เทคโนโลยีสื่อสารสังคม', '2', '0911015746', '5475', 'user'),
('Admin', 'Suchanart', 'admin01', '', '', '', '', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schorlarship_hour`
--
ALTER TABLE `schorlarship_hour`
  ADD PRIMARY KEY (`hour_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `schorlarship_type`
--
ALTER TABLE `schorlarship_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schorlarship_hour`
--
ALTER TABLE `schorlarship_hour`
  MODIFY `hour_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schorlarship_hour`
--
ALTER TABLE `schorlarship_hour`
  ADD CONSTRAINT `schorlarship_hour_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `schorlarship_hour_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `schorlarship_type` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
