-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 07:17 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stone_crusher`
--

-- --------------------------------------------------------

--
-- Table structure for table `primary_crushers_low`
--

CREATE TABLE `primary_crushers_low` (
  `id` int(11) NOT NULL,
  `model` varchar(20) NOT NULL,
  `feed_openings` varchar(20) NOT NULL COMMENT 'mm*mm',
  `max_feed_size` int(11) NOT NULL COMMENT 'mm',
  `capacity_min` int(11) NOT NULL COMMENT 't/h',
  `capacity_max` int(11) NOT NULL COMMENT 't/h',
  `discharge_size_min` int(11) NOT NULL COMMENT 'mm',
  `discharge_size_max` int(11) NOT NULL COMMENT 'mm',
  `rotate_speed` int(11) NOT NULL COMMENT 'r/min',
  `motor_power` int(11) NOT NULL COMMENT 'kw',
  `closed_side_settings` varchar(20) NOT NULL COMMENT 'mm',
  `weight` float NOT NULL COMMENT 't'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `primary_crushers_low`
--

INSERT INTO `primary_crushers_low` (`id`, `model`, `feed_openings`, `max_feed_size`, `capacity_min`, `capacity_max`, `discharge_size_min`, `discharge_size_max`, `rotate_speed`, `motor_power`, `closed_side_settings`, `weight`) VALUES
(1, 'PE-250*400', '250*400', 210, 5, 20, 0, 0, 300, 15, '20-80', 2.8),
(2, 'PE-400*600', '400*600', 340, 16, 65, 0, 0, 275, 30, '40-100', 6.5),
(3, 'PE-500*750', '500*750', 425, 45, 100, 0, 0, 275, 55, '50-100', 10.1),
(4, 'PE-600*900', '600*900', 500, 50, 120, 0, 0, 250, 55, '65-160', 15.5),
(5, 'PE-750*1060', '750*1060', 630, 52, 208, 0, 0, 250, 110, '80-140', 28),
(6, 'PE-800*1060', '800*1060', 650, 85, 228, 0, 0, 250, 110, '100-200', 30),
(7, 'PE-870*1060', '870*1060', 670, 181, 280, 0, 0, 250, 110, '200-260', 30.5),
(8, 'PE-900*1200', '900*1200', 750, 140, 320, 0, 0, 200, 132, '100-220', 50),
(9, 'PE-1000*1200', '1000*1200', 850, 160, 350, 0, 0, 200, 132, '170-270', 51),
(10, 'PEX-250*750', '250*750', 210, 13, 35, 0, 0, 330, 22, '25-60', 4.9),
(11, 'PEX-250*1000', '250*1000', 210, 16, 52, 0, 0, 330, 30, '25-60', 6.5),
(12, 'PEX-250*1200', '250*1200', 210, 20, 60, 0, 0, 330, 37, '25-60', 7.7),
(13, 'PEX-300*1300', '300*1300', 250, 16, 104, 0, 0, 330, 55, '20-90', 11),
(14, 'DC75', '500*750', 420, 61, 198, 0, 0, 320, 55, '50-150', 9.5),
(15, 'DC90', '600*900', 500, 120, 291, 0, 0, 306, 90, '70-175', 12.5),
(16, 'DC106', '750*1060', 630, 199, 446, 0, 0, 270, 132, '90-200', 23.5),
(17, 'DC125', '950*1250', 800, 327, 728, 0, 0, 240, 160, '100-250', 42.8),
(18, 'DC160', '1200*1600', 1000, 581, 204, 0, 0, 220, 250, '150-300', 75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `primary_crushers_low`
--
ALTER TABLE `primary_crushers_low`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `primary_crushers_low`
--
ALTER TABLE `primary_crushers_low`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
