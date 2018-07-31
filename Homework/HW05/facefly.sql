-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2018 at 09:13 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facefly`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_start_id` int(11) NOT NULL,
  `day_return` date DEFAULT NULL,
  `flight_class` varchar(128) NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `card_number` varchar(128) DEFAULT NULL,
  `name_on_card` varchar(128) DEFAULT NULL,
  `ccv_code` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `code_flight`
--

CREATE TABLE `code_flight` (
  `id` int(11) NOT NULL,
  `day_flight` date NOT NULL,
  `destination_id` int(11) NOT NULL,
  `flight_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `flight_from` varchar(128) NOT NULL,
  `flight_to` varchar(128) NOT NULL,
  `time_flight` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_include`
--

CREATE TABLE `person_include` (
  `id` int(11) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `booked_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_start`
--

CREATE TABLE `time_start` (
  `id` int(11) NOT NULL,
  `time_begin` time NOT NULL,
  `code_flight_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `last_name` varchar(128) NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `time_start_id` (`time_start_id`);

--
-- Indexes for table `code_flight`
--
ALTER TABLE `code_flight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_include`
--
ALTER TABLE `person_include`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booked_id` (`booked_id`);

--
-- Indexes for table `time_start`
--
ALTER TABLE `time_start`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_flight_id` (`code_flight_id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `code_flight`
--
ALTER TABLE `code_flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_include`
--
ALTER TABLE `person_include`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_start`
--
ALTER TABLE `time_start`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `code_flight`
--
ALTER TABLE `code_flight`
  ADD CONSTRAINT `code_flight_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`id`);

--
-- Constraints for table `person_include`
--
ALTER TABLE `person_include`
  ADD CONSTRAINT `person_include_ibfk_2` FOREIGN KEY (`booked_id`) REFERENCES `booked` (`id`);

--
-- Constraints for table `time_start`
--
ALTER TABLE `time_start`
  ADD CONSTRAINT `time_start_ibfk_1` FOREIGN KEY (`id`) REFERENCES `booked` (`time_start_id`),
  ADD CONSTRAINT `time_start_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`id`),
  ADD CONSTRAINT `time_start_ibfk_3` FOREIGN KEY (`code_flight_id`) REFERENCES `code_flight` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
