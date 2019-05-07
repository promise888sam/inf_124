-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2019 at 02:57 AM
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
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `publisher` varchar(128) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `realeaseDate` varchar(64) DEFAULT NULL,
  `platform` varchar(64) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `name`, `publisher`, `price`, `realeaseDate`, `platform`, `img`) VALUES
(1, 'ARK', 'Studio Wildcard', 49.99, 'August 29, 2017', 'PC, Play Station 4', 'ark.jpg'),
(2, 'Borderlands 3', '2K Games', 39.99, 'October 14, 2014', 'Windows, PS4', 'bl3.jpg'),
(3, 'Call of Duty: Black Ops 4', 'Activision', 54.99, 'October 12, 2018', 'PC, PS4', 'cod4.jpg'),
(4, 'Don\'t Starve Together', 'Klei Entertainment', 19.99, 'April 21, 2016', 'PC, PS4', 'dst.jpg'),
(5, 'Fortnite', 'Epic Games', 29.99, 'July 25, 2017', 'PC, PS4', 'fortnite.jpg'),
(6, 'God of War', 'Sony Entertainment', 49.99, 'April 20, 2018', 'Play Station 4', 'gow.jpg'),
(7, 'League of Legends', 'Riot Games', 9.99, 'October 27, 2009', 'Windows, macOS', 'league.jpg'),
(8, 'Marvel\'s Spider-man', 'Sony Interactice Entertainment', 34.99, 'September 7, 2018', 'PlayStation 4', 'msm.jpg'),
(9, 'Overwatch', 'Blizzard Entertainment', 24.99, 'May 24, 2016', 'Windows, PS4', 'ow.jpg'),
(10, 'Red Dead Redemption II', 'Rockstar Games', 39.99, 'October 26, 2018', 'PlayStation 4', 'rdr2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ID` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
