-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 02, 2022 at 02:45 PM
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
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `id` int(11) NOT NULL,
  `pdf_body` longtext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `pdf_body`, `timestamp`, `name`) VALUES
(1, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PE-400*600</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>400*600</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>340</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>35</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>275</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>30</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>40 - 100</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>40,100</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>6.5</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>CS75B</td><td>CH895i</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>83</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>102</td><td>127</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>45</td><td>258</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>91</td><td>1077</td></tr><tr><td>&#8226; Rotate Speed</td><td>580</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>750</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>9 - 22</td><td>10 - 70</td></tr><tr><td>&#8226; Closed Side Settings</td><td>9,22</td><td>10,70</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>84343</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-02-28 11:37:23', 'Test1'),
(2, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PEX-300*1300</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>300*1300</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>20</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>60</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>330</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>15 - 50</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>15,50</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>11</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PYD-1200</td><td>CH420</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>-</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>50</td><td>155</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>18</td><td>23</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>105</td><td>135</td></tr><tr><td>&#8226; Rotate Speed</td><td>-</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>110</td><td>90</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>3 - 15</td><td>4 - 35</td></tr><tr><td>&#8226; Closed Side Settings</td><td>3,15</td><td>4,35</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>6130</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-02-28 11:46:34', 'Test2'),
(3, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PEX-300*1300</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>300*1300</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>20</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>60</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>330</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>15 - 50</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>15,50</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>11</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PYD-1200</td><td>CH420</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>-</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>50</td><td>155</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>18</td><td>23</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>105</td><td>135</td></tr><tr><td>&#8226; Rotate Speed</td><td>-</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>110</td><td>90</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>3 - 15</td><td>4 - 35</td></tr><tr><td>&#8226; Closed Side Settings</td><td>3,15</td><td>4,35</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>6130</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1548</td><td>YA1542</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>4800 - 1500</td><td>1500 - 4200</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>30</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>150</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>30</td><td>110</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>200</td><td>385</td></tr><tr><td>&#8226; Power (Kw)</td><td>15</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 4</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-02-28 14:42:05', 'Test3'),
(4, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PEX-300*1300</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>300*1300</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>20</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>60</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>330</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>15 - 50</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>15,50</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>11</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PYD-1200</td><td>CH420</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>-</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>50</td><td>155</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>18</td><td>23</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>105</td><td>135</td></tr><tr><td>&#8226; Rotate Speed</td><td>-</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>110</td><td>90</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>3 - 15</td><td>4 - 35</td></tr><tr><td>&#8226; Closed Side Settings</td><td>3,15</td><td>4,35</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>6130</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1548</td><td>YA1542</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>4800 - 1500</td><td>1500 - 4200</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>30</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>150</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>30</td><td>110</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>200</td><td>385</td></tr><tr><td>&#8226; Power (Kw)</td><td>15</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 4</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-02-28 14:42:15', 'Test3.1'),
(5, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PEX-300*1300</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>300*1300</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>20</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>60</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>330</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>15 - 50</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>15,50</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>11</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PYD-1200</td><td>CH420</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>-</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>50</td><td>155</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>18</td><td>23</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>105</td><td>135</td></tr><tr><td>&#8226; Rotate Speed</td><td>-</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>110</td><td>90</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>3 - 15</td><td>4 - 35</td></tr><tr><td>&#8226; Closed Side Settings</td><td>3,15</td><td>4,35</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>6130</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1548</td><td>YA1542</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>4800 - 1500</td><td>1500 - 4200</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>30</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>150</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>30</td><td>110</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>200</td><td>385</td></tr><tr><td>&#8226; Power (Kw)</td><td>15</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 4</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-02-28 14:42:22', 'Test3.2'),
(6, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PEX-300*1300</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>300*1300</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>20</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>60</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>330</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>15 - 50</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>15,50</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>11</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PYD-1200</td><td>CH420</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>-</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>50</td><td>155</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>18</td><td>23</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>105</td><td>135</td></tr><tr><td>&#8226; Rotate Speed</td><td>-</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>110</td><td>90</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>3 - 15</td><td>4 - 35</td></tr><tr><td>&#8226; Closed Side Settings</td><td>3,15</td><td>4,35</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>6130</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1548</td><td>YA1542</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>4800 - 1500</td><td>1500 - 4200</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>30</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>150</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>30</td><td>110</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>200</td><td>385</td></tr><tr><td>&#8226; Power (Kw)</td><td>15</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 4</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-02-28 14:42:28', 'Test3.3'),
(7, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PE-400*600</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>400*600</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>340</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>35</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>275</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>30</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>40 - 100</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>40,100</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>6.5</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>CS75B</td><td>CH895i</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>83</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>102</td><td>127</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>45</td><td>258</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>91</td><td>1077</td></tr><tr><td>&#8226; Rotate Speed</td><td>580</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>750</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>9 - 22</td><td>10 - 70</td></tr><tr><td>&#8226; Closed Side Settings</td><td>9,22</td><td>10,70</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>84343</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1548</td><td>YA1542</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>4800 - 1500</td><td>1500 - 4200</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>30</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>150</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>30</td><td>110</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>200</td><td>385</td></tr><tr><td>&#8226; Power (Kw)</td><td>15</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-03-01 00:40:43', 'Test4'),
(8, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PE-400*600</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>400*600</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>340</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>35</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>275</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>30</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>40 - 100</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>40,100</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>6.5</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>CS75B</td><td>CH895i</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>83</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>102</td><td>127</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>45</td><td>258</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>91</td><td>1077</td></tr><tr><td>&#8226; Rotate Speed</td><td>580</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>750</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>9 - 22</td><td>10 - 70</td></tr><tr><td>&#8226; Closed Side Settings</td><td>9,22</td><td>10,70</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>84343</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-03-01 00:43:04', 'Test5'),
(9, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PE-400*600</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>400*600</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>340</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>35</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>275</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>30</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>40 - 100</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>40,100</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>6.5</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>CS75B</td><td>CH895i</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>83</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>102</td><td>127</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>45</td><td>258</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>91</td><td>1077</td></tr><tr><td>&#8226; Rotate Speed</td><td>580</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>750</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>9 - 22</td><td>10 - 70</td></tr><tr><td>&#8226; Closed Side Settings</td><td>9,22</td><td>10,70</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>84343</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr></body></html>', '2022-03-02 07:50:00', 'M-sand-01'),
(10, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PE-400*600</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>400*600</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>340</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>35</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>275</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>30</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>40 - 100</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>40,100</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>6.5</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>CS75B</td><td>CH895i</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>83</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>102</td><td>127</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>45</td><td>258</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>91</td><td>1077</td></tr><tr><td>&#8226; Rotate Speed</td><td>580</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>750</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>9 - 22</td><td>10 - 70</td></tr><tr><td>&#8226; Closed Side Settings</td><td>9,22</td><td>10,70</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>84343</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Washing Plant</h2><table><tr><td>&#8226; Model</td><td>LSX508</td></tr><tr><td>&#8226; Spiral Diameter</td><td>508 mm</td></tr><tr><td>&#8226; Length Of Tub</td><td>6705 mm</td></tr><tr><td>&#8226; Feed Size</td><td>≦10 mm</td></tr><tr><td>&#8226; Capacity Min</td><td>0</td></tr><tr><td>&#8226; Capacity Max</td><td>20</td></tr><tr><td>&#8226; Speed Of Screw</td><td>38 r/min</td></tr><tr><td>&#8226; Motor Power</td><td>5.5 kw</td></tr><tr><td>&#8226; Water Consumption</td><td>6-60 m/h</td></tr><tr><td>&#8226; Overall Dimention</td><td>8000*2343*1430 mm</td></tr><tr><td>&#8226; Weight</td><td>2.67 t</td></tr></table><hr></body></html>', '2022-03-02 07:52:02', 'M-Sand_01');
INSERT INTO `charts` (`id`, `pdf_body`, `timestamp`, `name`) VALUES
(11, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PE-400*600</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>400*600</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>340</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>35</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>275</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>30</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>40 - 100</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>40,100</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>6.5</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>CS75B</td><td>CH895i</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>83</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>102</td><td>127</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>45</td><td>258</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>91</td><td>1077</td></tr><tr><td>&#8226; Rotate Speed</td><td>580</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>750</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>9 - 22</td><td>10 - 70</td></tr><tr><td>&#8226; Closed Side Settings</td><td>9,22</td><td>10,70</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>84343</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Washing Plant</h2><table><tr><td>&#8226; Model</td><td>LSX508</td></tr><tr><td>&#8226; Spiral Diameter</td><td>508 mm</td></tr><tr><td>&#8226; Length Of Tub</td><td>6705 mm</td></tr><tr><td>&#8226; Feed Size</td><td>&#8804;10 mm</td></tr><tr><td>&#8226; Capacity Min</td><td>0</td></tr><tr><td>&#8226; Capacity Max</td><td>20</td></tr><tr><td>&#8226; Speed Of Screw</td><td>38 r/min</td></tr><tr><td>&#8226; Motor Power</td><td>5.5 kw</td></tr><tr><td>&#8226; Water Consumption</td><td>6-60 m/h</td></tr><tr><td>&#8226; Overall Dimention</td><td>8000*2343*1430 mm</td></tr><tr><td>&#8226; Weight</td><td>2.67 t</td></tr></table><hr></body></html>', '2022-03-02 08:01:12', 'M-Sand_02'),
(12, '<!DOCTYPE html><html><head></head><body><h2>Hopper</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>Bin400 x 600</td><td>Bin400 x 800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>250</td><td>300</td></tr><tr><td>&#8226; Capacity (t/h)</td><td>20</td><td>30</td></tr><tr><td>&#8226; Weight (t)</td><td>2.9</td><td>3.5</td></tr></table><hr><h2>Feeder</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>GZD-650×2300</td><td>BL800</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>300</td><td>350</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>50</td></tr></table><hr><h2>Jaw Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>PE-400*600</td><td>CT1252</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>400*600</td><td>320*1300</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>340</td><td>250</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>50</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>35</td><td>130</td></tr><tr><td>&#8226; Rotate Speed</td><td>275</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>30</td><td>55</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>40 - 100</td><td>25 - 90</td></tr><tr><td>&#8226; Closed Side Settings</td><td>40,100</td><td>25,90</td></tr><tr><td>&#8226; Weight (t)</td><td>6.5</td><td>10.8</td></tr></table><hr><h2>Cone Crusher</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>CS75B</td><td>CH895i</td></tr><tr><td>&#8226; Feed Opening Size (mm)</td><td>83</td><td>-</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>102</td><td>127</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>45</td><td>258</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>91</td><td>1077</td></tr><tr><td>&#8226; Rotate Speed</td><td>580</td><td>-</td></tr><tr><td>&#8226; Motor & Power (kw)</td><td>75</td><td>750</td></tr><tr><td>&#8226; Discharge Size (mm)</td><td>9 - 22</td><td>10 - 70</td></tr><tr><td>&#8226; Closed Side Settings</td><td>9,22</td><td>10,70</td></tr><tr><td>&#8226; Weight (t)</td><td>-</td><td>84343</td></tr></table><hr><h2>Screen 1</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 2</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 3</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 4</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Screen 5</h2><table><tr><td></td><th>Low Budget</th><th>High Budget</th></tr><tr><td>&#8226; Model</td><td>2YK1237</td><td>YA1236</td></tr><tr><td>&#8226; Screen Size (mm)</td><td>3700 - 1200</td><td>1200 - 3600</td></tr><tr><td>&#8226; Layers</td><td>2</td><td>1</td></tr><tr><td>&#8226; Screen Aperture Min (mm)</td><td>3</td><td>6</td></tr><tr><td>&#8226; Screen Aperture Max (mm)</td><td>80</td><td>50</td></tr><tr><td>&#8226; Max Feeding Size (mm)</td><td>100</td><td>-</td></tr><tr><td>&#8226; Min Capacity (t/h)</td><td>10</td><td>80</td></tr><tr><td>&#8226; Max Capacity (t/h)</td><td>80</td><td>240</td></tr><tr><td>&#8226; Power (Kw)</td><td>11</td><td>11</td></tr><tr><td>&#8226; Vibrating Frequency(r/min)</td><td>750-950</td><td>845</td></tr><tr><td>&#8226; Amplitude (mm)</td><td>8</td><td>10</td></tr></table><hr><h2>Washing Plant</h2><table><tr><th>Key</th><th>Value</th></tr><tr><td>&#8226; Model</td><td>LSX508</td></tr><tr><td>&#8226; Spiral Diameter</td><td>508 mm</td></tr><tr><td>&#8226; Length Of Tub</td><td>6705 mm</td></tr><tr><td>&#8226; Feed Size</td><td><=10 mm</td></tr><tr><td>&#8226; Capacity Min</td><td>0</td></tr><tr><td>&#8226; Capacity Max</td><td>20</td></tr><tr><td>&#8226; Speed Of Screw</td><td>38 r/min</td></tr><tr><td>&#8226; Motor Power</td><td>5.5 kw</td></tr><tr><td>&#8226; Water Consumption</td><td>6-60 m/h</td></tr><tr><td>&#8226; Overall Dimention</td><td>8000*2343*1430 mm</td></tr><tr><td>&#8226; Weight</td><td>2.67 t</td></tr></table><hr></body></html>', '2022-03-02 08:10:17', '5 Screens with M-Sand');

-- --------------------------------------------------------

--
-- Table structure for table `cone_crushers_high`
--

CREATE TABLE `cone_crushers_high` (
  `id` int(11) NOT NULL,
  `model` varchar(20) NOT NULL,
  `feed_openings` varchar(20) NOT NULL COMMENT 'mm*mm',
  `max_feed_size` int(11) NOT NULL COMMENT 'mm',
  `capacity_min` int(11) NOT NULL COMMENT 't/h',
  `capacity_max` int(11) NOT NULL COMMENT 't/h',
  `discharge_size_min` int(11) NOT NULL COMMENT 'mm',
  `discharge_size_max` int(11) NOT NULL COMMENT 'mm',
  `rotate_speed` varchar(11) NOT NULL COMMENT 'r/min',
  `motor_power` int(11) NOT NULL COMMENT 'kw',
  `closed_side_settings` varchar(20) NOT NULL COMMENT 'mm',
  `weight` float NOT NULL COMMENT 't'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cone_crushers_high`
--

INSERT INTO `cone_crushers_high` (`id`, `model`, `feed_openings`, `max_feed_size`, `capacity_min`, `capacity_max`, `discharge_size_min`, `discharge_size_max`, `rotate_speed`, `motor_power`, `closed_side_settings`, `weight`) VALUES
(1, 'CH895i', '', 127, 258, 1077, 10, 70, '-', 750, '', 84343),
(2, 'CH890i', '', 428, 275, 1837, 13, 70, '-', 750, '', 84891),
(3, 'CH870i', '', 350, 208, 1283, 10, 70, '-', 600, '', 58293),
(4, 'CH865i', '', 132, 155, 517, 10, 44, '-', 500, '', 38930),
(5, 'CH860i', '', 315, 250, 910, 13, 51, '-', 500, '', 39710),
(6, 'CH840i', '', 250, 212, 659, 22, 70, '-', 330, '', 20278),
(7, 'CH830i', '', 211, 61, 283, 5, 41, '-', 250, '', 12734),
(8, 'CH660', '', 321, 116, 646, 10, 51, '-', 315, '', 29335),
(9, 'CH440', '', 250, 58, 336, 8, 48, '-', 220, '', 16617),
(10, 'CH430', '', 214, 26, 215, 4, 41, '-', 132, '', 10516),
(11, 'CH420', '', 155, 23, 135, 4, 35, '-', 90, '', 6130),
(12, 'CS840i', '', 431, 212, 659, 22, 70, '-', 330, '', 25794),
(13, 'CS660', '', 622, 314, 908, 29, 83, '-', 315, '', 40254),
(14, 'CS440', '', 500, 191, 510, 25, 57, '-', 220, '', 21637),
(15, 'CS430', '', 400, 99, 298, 24, 54, '-', 132, '', 13098),
(16, 'CS420 ', '', 267, 70, 172, 13, 35, '-', 90, '', 7188);

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
  `rotate_speed` varchar(11) NOT NULL COMMENT 'r/min',
  `motor_power` varchar(11) NOT NULL COMMENT 'kw',
  `closed_side_settings` varchar(20) NOT NULL COMMENT 'mm',
  `weight` float NOT NULL COMMENT 't'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cone_crushers_low`
--

INSERT INTO `cone_crushers_low` (`id`, `model`, `feed_openings`, `max_feed_size`, `capacity_min`, `capacity_max`, `discharge_size_min`, `discharge_size_max`, `rotate_speed`, `motor_power`, `closed_side_settings`, `weight`) VALUES
(1, 'CS75B', '83', 102, 45, 91, 9, 22, '580', '75', '', 0),
(2, 'CS75B', '159', 175, 59, 163, 13, 138, '580', '75', '', 0),
(3, 'CS75D', '13', 41, 27, 90, 3, 13, '580', '75', '', 0),
(4, 'CS75D', '33', 60, 27, 100, 3, 16, '580', '75', '', 0),
(5, 'CS75D', '51', 76, 65, 140, 6, 19, '580', '75', '', 0),
(6, 'CS160B', '109', 137, 109, 181, 13, 31, '485', '185', '', 0),
(7, 'CS160B', '188', 210, 132, 253, 16, 31, '485', '185', '', 0),
(8, 'CS160B', '216', 241, 172, 349, 19, 51, '485', '185', '', 0),
(9, 'CS160D', '29', 64, 36, 163, 3, 16, '485', '160', '', 0),
(10, 'CS160D', '54', 89, 82, 163, 6, 16, '485', '160', '', 0),
(11, 'CS160D', '70', 105, 109, 227, 10, 25, '485', '160', '', 0),
(12, 'CS240B', '188', 209, 181, 327, 16, 38, '485', '240', '', 0),
(13, 'CS240B', '213', 241, 258, 417, 22, 51, '485', '240', '', 0),
(14, 'CS240B', '241', 268, 299, 635, 25, 64, '485', '240', '', 0),
(15, 'CS240D', '35', 70, 90, 209, 5, 13, '485', '240', '', 0),
(16, 'CS240D', '54', 89, 136, 281, 6, 19, '485', '240', '', 0),
(17, 'CS240D', '98', 133, 190, 336, 10, 25, '485', '240', '', 0),
(18, 'CS400B', '253', 278, 381, 726, 19, 38, '435', '400', '', 0),
(19, 'CS400B', '303', 334, 608, 998, 25, 51, '435', '400', '', 0),
(20, 'CS400B', '334', 369, 870, 1400, 31, 64, '435', '400', '', 0),
(21, 'CS400D', '51', 105, 190, 408, 5, 16, '435', '400', '', 0),
(22, 'CS400D', '95', 133, 354, 508, 10, 19, '435', '400', '', 0),
(23, 'CS400D', '95', 178, 454, 599, 13, 25, '435', '400', '', 0),
(24, 'CS75D', '127', 41, 27, 90, 3, 13, '435', '400', '', 0),
(25, 'CS75D', '33', 60, 27, 100, 3, 16, '580', '75', '', 0),
(26, 'CS110D', '29', 57, 50, 132, 5, 16, '485', '110', '', 0),
(27, 'CS110D', '44', 73, 90, 145, 10, 16, '485', '110', '', 0),
(28, 'CS110D', '56', 89, 141, 181, 13, 19, '485', '110', '', 0),
(29, 'CS160D', '29', 64, 36, 163, 3, 16, '485', '160', '', 0),
(30, 'CS160D', '54', 89, 82, 163, 6, 16, '485', '160', '', 0),
(31, 'CS160D', '70', 105, 109, 227, 10, 25, '485', '160', '', 0),
(32, 'CS220D', '35', 70, 90, 209, 5, 13, '485', '220', '', 0),
(33, 'CS220D', '54', 89, 136, 281, 6, 19, '485', '220', '', 0),
(34, 'CS220D', '98', 133, 190, 336, 10, 25, '485', '220', '', 0),
(35, 'CS315D', '51', 105, 190, 408, 5, 16, '435', '315', '', 0),
(36, 'CS315D', '95', 133, 354, 508, 10, 19, '435', '315', '', 0),
(37, 'CS315D', '127', 178, 454, 599, 13, 25, '435', '315', '', 0),
(38, 'PYB-600', '0', 65, 15, 25, 12, 25, '-', '30', '', 0),
(39, 'PYD-600', '0', 35, 5, 23, 3, 15, '-', '30', '', 0),
(40, 'PYB-900', '0', 115, 50, 90, 15, 50, '-', '55', '', 0),
(41, 'PYZ-900', '0', 60, 20, 65, 5, 20, '-', '55', '', 0),
(42, 'PYD-900', '0', 40, 15, 50, 3, 13, '-', '55', '', 0),
(43, 'PYB-1200', '0', 145, 110, 200, 20, 50, '-', '110', '', 0),
(44, 'PYZ-1200', '0', 100, 50, 150, 8, 25, '-', '110', '', 0),
(45, 'PYD-1200', '0', 50, 18, 105, 3, 15, '-', '110', '', 0),
(46, 'PYB-1750', '0', 215, 280, 480, 25, 60, '-', '155-160', '', 0),
(47, 'PYZ-1750', '0', 185, 115, 320, 10, 30, '-', '155-160', '', 0),
(48, 'PYD-1750', '0', 85, 75, 230, 5, 15, '-', '155-160', '', 0),
(49, 'PYB-2200', '0', 300, 590, 1000, 30, 60, '-', '260-280', '', 0),
(50, 'PYZ-2200', '0', 230, 200, 580, 10, 30, '-', '260-280', '', 0),
(51, 'PYD-2200', '0', 100, 120, 340, 5, 15, '-', '260-280', '', 0);

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
-- Table structure for table `feeder_high`
--

CREATE TABLE `feeder_high` (
  `id` int(11) NOT NULL,
  `model` varchar(20) NOT NULL,
  `max_feed_size` int(11) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feeder_high`
--

INSERT INTO `feeder_high` (`id`, `model`, `max_feed_size`, `capacity`) VALUES
(19, 'BL800', 350, 50),
(20, 'BL1000', 470, 100),
(21, 'BL1200', 650, 120),
(22, 'BL1400', 680, 140),
(23, 'BL1600', 700, 320),
(24, 'BL1800', 800, 500),
(25, 'BL2000', 1000, 500),
(26, 'BL2400', 1500, 500),
(27, 'BL2800', 1800, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `feeder_low`
--

CREATE TABLE `feeder_low` (
  `id` int(11) NOT NULL DEFAULT 0,
  `model` varchar(20) NOT NULL,
  `max_feed_size` int(11) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feeder_low`
--

INSERT INTO `feeder_low` (`id`, `model`, `max_feed_size`, `capacity`) VALUES
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
-- Table structure for table `jaw_crushers_high`
--

CREATE TABLE `jaw_crushers_high` (
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
-- Dumping data for table `jaw_crushers_high`
--

INSERT INTO `jaw_crushers_high` (`id`, `model`, `feed_openings`, `max_feed_size`, `capacity_min`, `capacity_max`, `discharge_size_min`, `discharge_size_max`, `rotate_speed`, `motor_power`, `closed_side_settings`, `weight`) VALUES
(1, 'CJ211', '1100*700', 630, 110, 490, 60, 200, 0, 90, '', 14.3),
(2, 'CJ409', '895*660', 600, 85, 320, 40, 180, 0, 75, '', 13.2),
(3, 'CJ411', '1045*840', 750, 150, 565, 70, 255, 0, 110, '', 20.6),
(4, 'CJ412', '1200*830', 750, 165, 790, 70, 275, 0, 132, '', 25.2),
(5, 'CJ612', '1200*1100', 990, 300, 805, 115, 275, 0, 160, '', 39),
(6, 'CJ613', '1300*1070', 1070, 330, 960, 130, 300, 0, 160, '', 41.5),
(7, 'CJ615', '1500*1070', 960, 385, 1085, 115, 300, 0, 200, '', 53),
(8, 'CJ815', '1500*1300', 1170, 480, 1160, 145, 300, 0, 200, '', 63.5),
(9, 'Nordberg® C80™', '800*510', 410, 55, 370, 40, 175, 0, 75, '', 7.65),
(10, 'Nordberg® C96™', '930*580', 460, 105, 430, 60, 175, 0, 90, '', 10.15),
(11, 'Nordberg® C106™', '1060*700', 560, 150, 560, 70, 200, 0, 110, '', 15.65),
(12, 'Nordberg® C116™', '1150*760', 610, 165, 580, 70, 200, 0, 132, '', 19.24),
(13, 'Nordberg® C120™', '1200*870', 700, 175, 595, 70, 175, 0, 160, '', 27.99),
(14, 'Nordberg® C130™', '1300*1000', 800, 270, 915, 100, 250, 0, 185, '', 40.15),
(15, 'Nordberg® C150™', '1400*1200', 960, 340, 970, 125, 250, 0, 200, '', 50.95),
(16, 'Nordberg® C160™', '1600*1200', 960, 430, 1260, 150, 300, 0, 250, '', 76.3),
(17, 'Nordberg® C200™', '2000*1500', 1200, 630, 1575, 175, 300, 0, 400, '', 124),
(18, 'C80', '510*800', 420, 65, 380, 40, 175, 0, 75, '', 9.25),
(19, 'C96', '580*930', 460, 120, 455, 60, 175, 0, 90, '', 11.87),
(20, 'C100', '760*1000', 640, 150, 545, 70, 200, 0, 110, '', 23.3),
(21, 'C106', '700*1060', 580, 155, 580, 70, 200, 0, 110, '', 17.05),
(22, 'C110', '850*1100', 730, 190, 625, 70, 200, 0, 160, '', 29.5),
(23, 'C116', '800*1150', 680, 170, 600, 70, 200, 0, 132, '', 21.5),
(24, 'C125', '950*1250', 800, 290, 845, 100, 250, 0, 160, '', 43.91),
(25, 'C140', '1070*1400', 920, 385, 945, 125, 250, 0, 200, '', 54.01),
(26, 'C145', '1100*1400', 950, 400, 1070, 125, 275, 0, 200, '', 63.19),
(27, 'C160', '1200*1600', 1020, 520, 1275, 150, 300, 0, 250, '', 83.3),
(28, 'CT1030', '250*750', 210, 23, 60, 25, 90, 0, 30, '', 6),
(29, 'CT1040', '250*1000', 210, 30, 79, 25, 90, 0, 37, '', 6.911),
(30, 'CT1048', '250*1200', 210, 35, 95, 25, 90, 0, 55, '', 8.258),
(31, 'CT1252', '320*1300', 250, 50, 130, 25, 90, 0, 55, '', 10.8),
(32, 'CT2036', '500*900', 400, 80, 220, 50, 125, 0, 55, '', 11.7),
(33, 'CT2436', '600*900', 500, 120, 350, 75, 190, 0, 75, '', 14.8),
(34, 'CT2645', '660*1140', 530, 155, 500, 75, 180, 0, 90, '', 18),
(35, 'CT3042', '750*1060', 630, 200, 500, 75, 180, 0, 110, '', 24.9),
(37, 'NCT3042', '750*1060', 630, 150, 500, 75, 200, 0, 110, '', 20.321),
(38, 'CT3054', '750*1350', 600, 240, 570, 75, 200, 0, 132, '', 24.1),
(39, 'CT3254', '800*1370', 650, 240, 570, 75, 180, 0, 132, '', 28.913),
(40, 'CT3648', '900*1200', 750, 300, 850, 100, 250, 0, 160, '', 43.321),
(41, 'CT4254', '1060*1370', 900, 400, 900, 125, 250, 0, 200, '', 58.152),
(42, 'CT4763', '1200*1600', 1020, 520, 1180, 150, 300, 0, 250, '', 81.62),
(43, 'CT6080', '1500*2000', 1300, 675, 1575, 175, 310, 0, 400, '', 148),
(44, 'CTHT2036', '500*900', 400, 80, 210, 50, 112, 0, 55, '', 11.973),
(45, 'CTHT2436', '600*900', 500, 110, 350, 70, 190, 0, 75, '', 14.721),
(46, 'CTHT2645', '660*1140', 530, 155, 500, 115, 220, 0, 90, '', 18.319),
(47, 'CTHT3042', '750*1060', 630, 200, 500, 75, 180, 0, 110, '', 25.2),
(48, 'CTHT3054', '750*1350', 600, 240, 570, 75, 200, 0, 132, '', 25.1),
(49, 'CTHT3254', '800*1370', 650, 240, 570, 75, 180, 0, 132, '', 30.2),
(50, 'CTHT3648', '900*1200', 750, 300, 850, 100, 250, 0, 160, '', 46.309),
(51, 'CTHT4254', '1060*1370', 900, 400, 900, 125, 250, 0, 200, '', 61.102),
(52, 'CTHT4763', '1200*1600', 1020, 520, 1180, 150, 300, 0, 250, '', 84.12),
(53, 'CTHT6080', '1500*2000', 1300, 675, 1575, 175, 310, 0, 400, '', 152);

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
  `motor_power` varchar(11) NOT NULL COMMENT 'kw',
  `closed_side_settings` varchar(20) NOT NULL COMMENT 'mm',
  `weight` float NOT NULL COMMENT 't'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jaw_crushers_low`
--

INSERT INTO `jaw_crushers_low` (`id`, `model`, `feed_openings`, `max_feed_size`, `capacity_min`, `capacity_max`, `discharge_size_min`, `discharge_size_max`, `rotate_speed`, `motor_power`, `closed_side_settings`, `weight`) VALUES
(1, 'DC75', '500*750', 420, 61, 198, 50, 150, 0, '55', '', 9.5),
(2, 'DC90', '600*900', 500, 120, 291, 70, 175, 0, '90', '', 12.5),
(3, 'DC106', '750*1060', 630, 199, 446, 90, 200, 0, '132', '', 23.5),
(4, 'DC125', '950*1250', 800, 327, 728, 100, 250, 0, '160', '', 42.8),
(5, 'DC160', '1200*1600', 1000, 581, 204, 150, 300, 0, '250', '', 75),
(6, 'PE-150*250', '150*250', 125, 1, 3, 10, 40, 0, '7.5', '', 13),
(7, 'PE-250*400', '250*400', 210, 3, 13, 20, 60, 300, '15', '', 2.8),
(8, 'PE-400*600', '400*600', 340, 10, 35, 40, 100, 275, '30', '', 6.5),
(9, 'PE-500*750', '500*750', 425, 25, 60, 50, 100, 275, '55', '', 10.6),
(10, 'PE-600*900', '600*900', 500, 30, 85, 65, 180, 250, '55-75', '', 15.5),
(11, 'PE-750*1060', '750*1060', 630, 72, 150, 80, 180, 250, '90-110', '', 28),
(12, 'PE-800*1060', '800*1060', 680, 85, 143, 100, 200, 250, '90-110', '', 30),
(13, 'PE-870*1060', '870*1060', 750, 145, 235, 170, 270, 250, '90-110', '', 30.5),
(14, 'PE-900*1060', '900*1060', 780, 170, 250, 200, 290, 0, '90-110', '', 31),
(15, 'PE-900*1200', '900*1200', 780, 100, 240, 95, 255, 200, '110-132', '', 49),
(16, 'PE-1000*1200', '1000*1200', 850, 190, 275, 195, 280, 200, '110-132', '', 51),
(17, 'PE-1200*1500', '1200*1500', 1020, 250, 500, 150, 300, 0, '160', '', 100.9),
(18, 'PEX-150*500', '150*500', 120, 3, 15, 10, 40, 0, '11', '', 2.5),
(19, 'PEX-150*750', '150*750', 120, 5, 16, 10, 40, 0, '18.5', '', 3.5),
(20, 'PEX-250*750', '250*750', 210, 8, 35, 15, 50, 330, '30', '', 5.8),
(21, 'PEX-250*1000', '250*1000', 210, 13, 45, 15, 50, 330, '37', '', 6.4),
(22, 'PEX-250*1200', '250*1200', 210, 13, 50, 15, 50, 330, '37', '', 7.7),
(23, 'PEX-300*1300', '300*1300', 250, 20, 60, 15, 50, 330, '75', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `screens_high`
--

CREATE TABLE `screens_high` (
  `id` int(11) NOT NULL,
  `model` varchar(25) NOT NULL,
  `screen_size_1` int(11) NOT NULL,
  `screen_size_2` int(11) NOT NULL,
  `layers` int(11) NOT NULL,
  `aperture_min` int(11) NOT NULL,
  `aperture_max` int(11) NOT NULL,
  `max_feed_size` int(11) NOT NULL,
  `capacity_min` int(11) NOT NULL,
  `capacity_max` int(11) NOT NULL,
  `power` varchar(20) NOT NULL,
  `vibrating_frequency` varchar(20) NOT NULL,
  `amptitude` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screens_high`
--

INSERT INTO `screens_high` (`id`, `model`, `screen_size_1`, `screen_size_2`, `layers`, `aperture_min`, `aperture_max`, `max_feed_size`, `capacity_min`, `capacity_max`, `power`, `vibrating_frequency`, `amptitude`) VALUES
(1, 'YA1236', 1200, 3600, 1, 6, 50, 0, 80, 240, '11', '845', 10),
(2, '2YA1236', 1200, 3600, 2, 6, 50, 0, 80, 240, '11', '845', 10),
(3, 'YA1530', 1500, 3000, 1, 6, 50, 0, 80, 240, '11', '845', 10),
(4, 'YA1536', 1500, 3600, 1, 6, 50, 0, 100, 350, '11', '845', 10),
(5, '2YA1536', 1500, 3600, 2, 6, 50, 0, 100, 350, '15', '845', 10),
(6, 'YA1542', 1500, 4200, 1, 30, 150, 0, 110, 385, '11', '845', 10),
(7, '2YA1542', 1500, 4200, 2, 6, 50, 0, 110, 385, '15', '845', 10),
(8, 'YA1548', 1500, 4800, 1, 6, 50, 0, 120, 420, '15', '845', 10),
(9, '2YA1548', 1500, 4800, 2, 6, 50, 0, 120, 420, '15', '845', 10),
(10, 'YA1836', 1800, 3600, 1, 30, 150, 0, 140, 220, '11', '845', 10),
(11, '2YA1836', 1800, 3600, 2, 30, 150, 0, 140, 220, '15', '845', 10),
(12, 'YA1842', 1800, 4200, 1, 6, 150, 0, 140, 490, '15', '845', 10),
(13, '2YA1842', 1800, 4200, 2, 6, 150, 0, 140, 490, '15', '845', 10),
(14, 'YA1848', 1800, 4800, 1, 6, 50, 0, 150, 525, '15', '845', 10),
(15, '2YA1848', 1800, 4800, 2, 6, 50, 0, 150, 525, '15', '845', 10),
(16, 'YA2148', 2100, 4800, 1, 6, 50, 0, 180, 630, '18.5', '748', 10),
(17, '2YA2148', 2100, 4800, 2, 6, 50, 0, 180, 630, '22', '748', 10),
(18, 'YA2160', 2100, 6000, 1, 3, 80, 0, 230, 800, '18.5', '748', 10),
(19, '2YA2160', 2100, 6000, 2, 6, 50, 0, 230, 800, '22', '748', 10),
(20, 'YA2448', 2400, 4800, 1, 6, 50, 0, 200, 700, '18.5', '748', 10);

-- --------------------------------------------------------

--
-- Table structure for table `screens_low`
--

CREATE TABLE `screens_low` (
  `id` int(11) NOT NULL,
  `model` varchar(25) NOT NULL,
  `screen_size_1` int(11) NOT NULL,
  `screen_size_2` int(11) NOT NULL,
  `layers` int(11) NOT NULL,
  `aperture_min` int(11) NOT NULL,
  `aperture_max` int(11) NOT NULL,
  `max_feed_size` int(11) NOT NULL,
  `capacity_min` int(11) NOT NULL,
  `capacity_max` int(11) NOT NULL,
  `power` varchar(20) NOT NULL,
  `vibrating_frequency` varchar(20) NOT NULL,
  `amptitude` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screens_low`
--

INSERT INTO `screens_low` (`id`, `model`, `screen_size_1`, `screen_size_2`, `layers`, `aperture_min`, `aperture_max`, `max_feed_size`, `capacity_min`, `capacity_max`, `power`, `vibrating_frequency`, `amptitude`) VALUES
(1, '2YK1237', 3700, 1200, 2, 3, 80, 100, 10, 80, '11', '750-950', 8),
(2, '3YK1237', 3700, 1200, 3, 3, 80, 100, 10, 80, '11', '750-950', 8),
(3, '2YK1548', 4800, 1500, 2, 3, 80, 100, 30, 200, '15', '750-950', 8),
(4, '3YK1548', 4800, 1500, 3, 3, 80, 100, 30, 200, '15', '750-950', 8),
(5, '2YK1848', 4800, 1800, 2, 3, 80, 100, 50, 250, '18.5', '750-950', 8),
(6, '3YK1848', 4800, 1800, 3, 3, 80, 100, 50, 250, '18.5', '750-950', 8),
(7, '2YK1860', 6000, 1800, 2, 3, 80, 100, 60, 300, '18.5', '750-950', 8),
(8, '3YK1860', 6000, 1800, 3, 3, 80, 100, 60, 300, '22', '750-950', 8),
(9, '4YK1860', 6000, 1800, 4, 3, 80, 100, 60, 300, '30', '750-950', 8),
(10, '2YK2160', 6000, 2100, 2, 3, 80, 100, 80, 400, '22', '700-900', 8),
(11, '3YK2160', 6000, 2100, 3, 3, 80, 100, 80, 400, '30', '700-900', 8),
(12, '4YK2160', 6000, 2100, 4, 3, 80, 100, 80, 400, '30', '700-900', 8),
(13, '2YK2460', 6000, 2400, 2, 5, 80, 100, 100, 500, '30', '700-900', 8),
(14, '3YK2460', 6000, 2400, 3, 5, 80, 100, 100, 500, '37', '700-900', 8),
(15, '4YK2460', 6000, 2400, 4, 5, 80, 100, 100, 500, '37', '700-900', 8),
(16, '2YK2470', 7000, 2400, 2, 5, 80, 100, 120, 550, '37', '700-900', 8),
(17, '3YK2470', 7000, 2400, 3, 5, 80, 100, 120, 550, '37', '700-900', 8),
(18, '4YK2470', 7000, 2400, 4, 5, 80, 100, 120, 550, '37', '700-900', 8),
(19, '2YK2475', 7500, 2400, 2, 5, 80, 100, 150, 400, '37', '700-900', 8),
(20, '3YK2475', 7500, 2400, 3, 5, 80, 100, 150, 450, '37', '700-900', 8),
(21, '2YK2870', 7000, 2800, 2, 5, 80, 100, 150, 550, '2x22', '700-900', 8),
(22, '3YK2870', 7000, 2800, 3, 5, 80, 100, 150, 550, '2x30', '700-900', 8),
(23, '2YK3072', 7200, 3000, 2, 5, 80, 100, 150, 600, '2x30', '700-900', 8),
(24, '3YK3072', 7200, 3000, 3, 5, 80, 100, 150, 600, '2x37', '700-900', 8),
(25, '2YK3080', 8000, 3000, 2, 5, 80, 100, 150, 600, '2x37', '700-900', 8),
(26, '3YK3080', 8000, 3000, 3, 5, 80, 100, 150, 600, '2x37', '700-900', 8),
(27, '3YK3272', 7200, 3200, 3, 5, 80, 100, 180, 800, '2x37', '700-900', 8);

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

-- --------------------------------------------------------

--
-- Table structure for table `sieve_percentage`
--

CREATE TABLE `sieve_percentage` (
  `id` int(11) NOT NULL,
  `size` double NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sieve_percentage`
--

INSERT INTO `sieve_percentage` (`id`, `size`, `percentage`) VALUES
(1, 28, 100),
(2, 20, 100),
(3, 10, 65.6469806),
(4, 5, 30.98676951),
(5, 2.36, 16.66802235),
(6, 1.18, 12.23919305),
(7, 0.6, 9.385015846),
(8, 0.3, 6.89074389),
(9, 0.15, 4.275489467),
(10, 0.075, 2.034414042);

-- --------------------------------------------------------

--
-- Table structure for table `wp`
--

CREATE TABLE `wp` (
  `id` int(11) NOT NULL,
  `model` varchar(20) NOT NULL,
  `spiral_diameter` varchar(20) NOT NULL,
  `length_of_tub` varchar(20) NOT NULL,
  `feed_size` varchar(20) NOT NULL,
  `capacity_min` int(11) NOT NULL,
  `capacity_max` int(11) NOT NULL,
  `speed_of_screw` varchar(20) NOT NULL,
  `motor_power` varchar(20) NOT NULL,
  `water_consumption` varchar(20) NOT NULL,
  `overall_dimention` varchar(50) NOT NULL,
  `weight` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp`
--

INSERT INTO `wp` (`id`, `model`, `spiral_diameter`, `length_of_tub`, `feed_size`, `capacity_min`, `capacity_max`, `speed_of_screw`, `motor_power`, `water_consumption`, `overall_dimention`, `weight`) VALUES
(1, 'LSX508', '508 mm', '6705 mm', '&#8804;10 mm', 0, 20, '38 r/min', '5.5 kw', '6-60 m/h', '8000*2343*1430 mm', '2.67 t'),
(2, 'LSX610', '610 mm', '7225 mm', '&#8804;10 mm', 40, 50, '32 r/min', '7.5 kw', '6-63 m/h', '8000*2050*1400 mm', '3.8 t'),
(3, 'LSX762', '762 mm', '7620 mm', '&#8804;10 mm', 50, 75, '26 r/min', '11 kw', '9-63 m/h', '8545*2550*3862 mm', '5.23 t'),
(4, 'LSX920', '920 mm', '7585 mm', '&#8804;10 mm', 75, 100, '21 r/min', '11 kw', '10-80 m/h', '8420X2180X3960 mm', '6.2 t'),
(5, '2LSX-920', '920 mm', '7585 mm', '&#8804;10 mm', 100, 175, '21 r/min', '2*11 kw', '20-160 m/h', '8420X3970X3960 mm', '11.5 t'),
(6, 'LSX-1120', '1120 mm', '9750 mm', '&#8804;10 mm', 175, 200, '17 r/min', '18.5 kw', '20-150 m/h', '10770X3950X4860 mm', '10.9 t'),
(7, '2LSX-1120', '1120 mm', '9750 mm', '&#8804;10 mm', 200, 350, '17 r/min', '2*18.5 kw', '40-300 m/h', '10770X5260X4860 mm', '17.8 t');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cone_crushers_high`
--
ALTER TABLE `cone_crushers_high`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cone_crushers_low`
--
ALTER TABLE `cone_crushers_low`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feeder`
--
ALTER TABLE `feeder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `feeder_high`
--
ALTER TABLE `feeder_high`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `jaw_crushers_high`
--
ALTER TABLE `jaw_crushers_high`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `jaw_crushers_low`
--
ALTER TABLE `jaw_crushers_low`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- Indexes for table `screens_high`
--
ALTER TABLE `screens_high`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screens_low`
--
ALTER TABLE `screens_low`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screen_efficiency`
--
ALTER TABLE `screen_efficiency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sieve_percentage`
--
ALTER TABLE `sieve_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp`
--
ALTER TABLE `wp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cone_crushers_high`
--
ALTER TABLE `cone_crushers_high`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cone_crushers_low`
--
ALTER TABLE `cone_crushers_low`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `feeder`
--
ALTER TABLE `feeder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `feeder_high`
--
ALTER TABLE `feeder_high`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jaw_crushers_high`
--
ALTER TABLE `jaw_crushers_high`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `jaw_crushers_low`
--
ALTER TABLE `jaw_crushers_low`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `screens_high`
--
ALTER TABLE `screens_high`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `screens_low`
--
ALTER TABLE `screens_low`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `screen_efficiency`
--
ALTER TABLE `screen_efficiency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `sieve_percentage`
--
ALTER TABLE `sieve_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp`
--
ALTER TABLE `wp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
