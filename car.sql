-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 09:56 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `engine`
--

CREATE TABLE `engine` (
  `engine_id` int(10) NOT NULL,
  `engine_capacity` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engine`
--

INSERT INTO `engine` (`engine_id`, `engine_capacity`) VALUES
(1, '1000cc'),
(2, '1200cc'),
(3, '1500cc'),
(4, '1800cc'),
(5, '2000cc');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location_name` varchar(25) NOT NULL,
  `Location_code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location_name`, `Location_code`) VALUES
('Dhaka Cantonment', 1206),
('Mohammadpur', 1207),
('Dhanmondi', 1209),
('Gulshan', 1212),
('Banani', 1213),
('Tejgaon', 1215),
('Mirpur', 1216),
('Shantinagr', 1217),
('Uttara Model Town', 1230);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `Model` varchar(100) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  `Year` int(4) NOT NULL,
  `Price` int(9) NOT NULL,
  `Location_code` int(4) NOT NULL,
  `engine_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`Model`, `Brand`, `Year`, `Price`, `Location_code`, `engine_id`) VALUES
('Alion', 'Toyota', 2014, 1400000, 1207, 2),
('Civic', 'Honda', 2017, 2700000, 1212, 4),
('Corolla X', 'Toyota', 2004, 1200000, 1209, 2),
('i3 120A', 'BMW', 2018, 27500000, 1207, 5),
('Lancer Ex', 'Mitsubishi', 2014, 2100000, 1213, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `engine`
--
ALTER TABLE `engine`
  ADD PRIMARY KEY (`engine_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_code`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`Model`),
  ADD KEY `engine_id` (`engine_id`),
  ADD KEY `Location_code` (`Location_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`engine_id`) REFERENCES `engine` (`engine_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_2` FOREIGN KEY (`Location_code`) REFERENCES `location` (`Location_code`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
