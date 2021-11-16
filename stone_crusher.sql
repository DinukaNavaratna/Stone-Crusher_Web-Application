-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 10:07 AM
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
-- Table structure for table `cone_crushers_low`
--

CREATE TABLE `cone_crushers_low` (
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

-- --------------------------------------------------------

--
-- Table structure for table `feeder`
--

CREATE TABLE `feeder` (
  `id` int(11) NOT NULL,
  `model` varchar(20) NOT NULL,
  `max_feed_size` int(11) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feeder`
--

INSERT INTO `feeder` (`id`, `model`, `max_feed_size`, `capacity`) VALUES
(12, 'GZD-650×2300', 300, 80),
(13, 'GZD-750×2500', 350, 100),
(14, 'GZD-850×3000', 400, 120),
(15, 'GZD-1000×3600', 500, 150),
(16, 'GZD-1100×4200', 580, 240),
(17, 'GZD-1300×4900', 650, 450),
(18, 'GZD-1500×5600', 1050, 450),
(19, 'ZSW-490×110', 630, 150),
(20, 'ZSW-380×95', 500, 100),
(21, 'ZSW-600×130', 750, 400),
(22, 'ZSW-490×130', 750, 400);

-- --------------------------------------------------------

--
-- Table structure for table `jaw_crushers_low`
--

CREATE TABLE `jaw_crushers_low` (
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
-- Dumping data for table `jaw_crushers_low`
--

INSERT INTO `jaw_crushers_low` (`id`, `model`, `feed_openings`, `max_feed_size`, `capacity_min`, `capacity_max`, `discharge_size_min`, `discharge_size_max`, `rotate_speed`, `motor_power`, `closed_side_settings`, `weight`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `screen_efficiency`
--

CREATE TABLE `screen_efficiency` (
  `id` int(11) NOT NULL,
  `ad` float NOT NULL,
  `e` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen_efficiency`
--

INSERT INTO `screen_efficiency` (`id`, `ad`, `e`) VALUES
(1, 0.99053, 65.1312),
(2, 1.00758, 65.8181),
(3, 1.02083, 66.5053),
(4, 1.04167, 67.0543),
(5, 1.05114, 67.6041),
(6, 1.06818, 68.0846),
(7, 1.08333, 69.0469),
(8, 1.10795, 69.8709),
(9, 1.125, 70.5578),
(10, 1.14394, 71.2445),
(11, 1.15909, 71.7939),
(12, 1.18561, 72.1362),
(13, 1.20455, 72.8917),
(14, 1.22159, 73.441),
(15, 1.23106, 74.1284),
(16, 1.25, 74.6088),
(17, 1.26894, 75.0891),
(18, 1.29735, 75.7753),
(19, 1.30871, 76.1873),
(20, 1.32197, 76.8057),
(21, 1.33902, 77.1485),
(22, 1.35038, 77.5606),
(23, 1.375, 78.1094),
(24, 1.39773, 78.383),
(25, 1.41288, 78.6572),
(26, 1.4375, 79.206),
(27, 1.45833, 79.411),
(28, 1.47727, 79.5473),
(29, 1.48864, 79.6841),
(30, 1.51136, 79.5449),
(31, 1.53788, 79.2679),
(32, 1.5625, 79.1286),
(33, 1.58144, 78.6456),
(34, 1.60227, 78.0249),
(35, 1.61742, 77.6798),
(36, 1.63258, 77.1283),
(37, 1.64962, 76.7143),
(38, 1.67235, 76.0935),
(39, 1.68939, 75.1978),
(40, 1.70076, 74.7842),
(41, 1.71402, 74.0952),
(42, 1.73106, 73.1995),
(43, 1.74621, 72.5792),
(44, 1.75568, 72.0281),
(45, 1.76515, 71.3394),
(46, 1.7803, 70.8567),
(47, 1.79167, 70.1678),
(48, 1.80492, 69.6853),
(49, 1.80492, 69.2036),
(50, 1.82197, 68.3768),
(51, 1.84091, 67.3434),
(52, 1.85227, 66.7233),
(53, 1.86364, 65.7592),
(54, 1.87121, 65.3459),
(55, 1.88636, 64.8632),
(56, 1.89015, 64.3124),
(57, 1.90909, 63.279),
(58, 1.92045, 62.7278),
(59, 1.93561, 61.7634),
(60, 1.94129, 61.0062),
(61, 1.95833, 60.1793),
(62, 1.9678, 59.9034),
(63, 1.9697, 59.5593),
(64, 1.97538, 59.2148),
(65, 1.98295, 58.8015),
(66, 1.99432, 58.2502),
(67, 1.99621, 57.8373);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cone_crushers_low`
--
ALTER TABLE `cone_crushers_low`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `feeder`
--
ALTER TABLE `feeder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `jaw_crushers_low`
--
ALTER TABLE `jaw_crushers_low`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `screen_efficiency`
--
ALTER TABLE `screen_efficiency`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cone_crushers_low`
--
ALTER TABLE `cone_crushers_low`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeder`
--
ALTER TABLE `feeder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `jaw_crushers_low`
--
ALTER TABLE `jaw_crushers_low`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `screen_efficiency`
--
ALTER TABLE `screen_efficiency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
