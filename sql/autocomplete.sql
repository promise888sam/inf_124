-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2019 at 03:06 AM
-- Server version: 5.7.21-log
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `autocomplete`
--

CREATE TABLE `autocomplete` (
  `states` varchar(64) NOT NULL,
  `emails` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autocomplete`
--

INSERT INTO `autocomplete` (`states`, `emails`) VALUES
('Alabama', '@yahoo.com'),
('Alaska', '@gmail.com'),
('Arizona', '@uci.edu'),
('Arkansas', '@hotmail.com'),
('California', '@aol.com'),
('Colorado', '@hotmail.co.uk'),
('Connecticut', '@qq.com'),
('Delaware', ''),
('Florida\r\n', ''),
('Georgia', ''),
('Hawaii', ''),
('Idaho', ''),
('Illinois', ''),
('Indiana', ''),
('Iowa', ''),
('Kansas', ''),
('Kentucky', ''),
('Louisiana', ''),
('Maine', ''),
('Maryland', ''),
('Massachusetts', ''),
('Michigan', ''),
('Minnesota', ''),
('Mississippi', ''),
('Missouri', ''),
('Montana', ''),
('Nebraska', ''),
('Nevada', ''),
('New Hampshire', ''),
('New Jersey', ''),
('New Mexico', ''),
('New York', ''),
('North Carolina', ''),
('North Dakota', ''),
('Ohio', ''),
('Oklahoma', ''),
('Oregon', ''),
('Pennsylvania', ''),
('Rhode Island', ''),
('South Carolina', ''),
('South Dakota', ''),
('Tennessee', ''),
('Texas', ''),
('Utah', ''),
('Vermont', ''),
('Virginia', ''),
('Washington', ''),
('West Virginia', ''),
('Wisconsin', ''),
('Wyoming', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autocomplete`
--
ALTER TABLE `autocomplete`
  ADD UNIQUE KEY `states` (`states`,`emails`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
