-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2019 at 05:36 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `confirmation`
--

CREATE TABLE `confirmation` (
  `id` int(64) NOT NULL,
  `item` varchar(128) NOT NULL,
  `quantity` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirmation`
--

INSERT INTO `confirmation` (`id`, `item`, `quantity`) VALUES
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'ARK', 1),
(8, 'Don\'t Starve Together', 1),
(8, 'ARK', 1),
(8, 'ARK', 1),
(8, 'ARK', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1),
(8, 'ARK', 1),
(8, 'Call of Duty: Black Ops 4', 1),
(8, 'Fortnite', 1);

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
  `img` varchar(255) DEFAULT NULL,
  `discription` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `name`, `publisher`, `price`, `realeaseDate`, `platform`, `img`, `discription`) VALUES
(1, 'ARK', 'Studio Wildcard', 49.99, 'August 29, 2017', 'PC, Play Station 4', 'ark.jpg', 'As a man or woman stranded naked, freezing and starving on the shores of a mysterious island called ARK, you must hunt, harvest resources, craft items, grow crops, research technologies, and build shelters to withstand the elements. Use your cunning and resources to kill or tame & breed the leviathan dinosaurs and other primeval creatures roaming the land, and team up with or prey on hundreds of other players to survive, dominate... and escape!'),
(2, 'Borderlands 3', '2K Games', 39.99, 'October 14, 2014', 'Windows, PS4', 'bl3.jpg', 'At the hard edge of the galaxy lies a group of planets ruthlessly exploited by militarized corporations. Brimming with loot and violence, this is your home – the Borderlands.\r\n\r\nAnswering the call of the Siren champion Lilith, four Vault Hunters charge head-first into a spray of bullets, blood, and bandits to recover a map to ancient Vaults and prevent a universe-destroying power from falling into the wrong hands. The rest is history.'),
(3, 'Call of Duty: Black Ops 4', 'Activision', 54.99, 'October 12, 2018', 'PC, PS4', 'cod4.jpg', 'In Blackout, the Black Ops universe comes to life in one massive battle royale experience, combining Black Ops signature combat and the biggest map in Call of Duty history. Play as fan favorite characters and battle through iconic settings in an all-out survival and elimination experience.'),
(4, 'Don\'t Starve Together', 'Klei Entertainment', 19.99, 'April 21, 2016', 'PC, PS4', 'dst.jpg', 'Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style. Play your way as you unravel the mysteries of this strange land. \r\n\r\nCooperate with your friends in a private game, or take your chances with strangers online. Work with other players to survive the harsh environment, or strike out on your own. Do whatever it takes, but most importantly, Don\'t Starve.'),
(5, 'Fortnite', 'Epic Games', 29.99, 'July 25, 2017', 'PC, PS4', 'fortnite.jpg', 'Fortnite Battle Royale is the FREE 100-player PvP mode in Fortnite. One giant map. A battle bus. Fortnite building skills and destructible environments combined with intense PvP combat. The last one standing wins. Available on PC, PlayStation 4, Xbox One & Mac.'),
(6, 'God of War', 'Sony Entertainment', 49.99, 'April 20, 2018', 'Play Station 4', 'gow.jpg', 'LIVING AS A MAN OUTSIDE THE SHADOW OF THE GODS, KRATOS MUST ADAPT TO THE UNFAMILIAR NORSE LANDS, UNEXPECTED THREATS, AND A SECOND CHANCE AT BEING A FATHER.'),
(7, 'League of Legends', 'Riot Games', 9.99, 'October 27, 2009', 'Windows, macOS', 'league.jpg', 'League of Legends is a fast-paced, competitive online game that blends the speed and intensity of an RTS with RPG elements. Two teams of powerful champions, each with a unique design and playstyle, battle head-to-head across multiple battlefields and game modes. With an ever-expanding roster of champions, frequent updates and a thriving tournament scene, League of Legends offers endless replayability for players of every skill level.'),
(8, 'Marvel\'s Spider-man', 'Sony Interactice Entertainment', 34.99, 'September 7, 2018', 'PlayStation 4', 'msm.jpg', 'When a new villain threatens Marvel\'s New York, Peter Parker and Spider-Man’s worlds collide. To save the city and those he loves, he must rise up and be greater.\r\n\r\nThis is an experienced Peter Parker who’s more masterful at fighting big crime in Marvel\'s New York. At the same time, he’s struggling to balance his chaotic personal life and career while the fate of millions of New Yorkers rest upon his shoulders.\r\n\r\nAfter eight years behind the mask, Peter Parker is a crime-fighting master. Feel the full power of a more experienced Spider-Man with improvisational combat, dynamic acrobatics, fluid urban traversal, and environmental interactions. A rookie no longer, this is the most masterful Spider-Man you’ve ever played.'),
(9, 'Overwatch', 'Blizzard Entertainment', 24.99, 'May 24, 2016', 'Windows, PS4', 'ow.jpg', 'Overwatch is a colorful team-based shooter game starring a diverse cast of powerful heroes. Travel the world, build a team, and contest objectives in exhilarating 6v6 combat.\r\n\r\nWhen you enter a game of Overwatch, you\'ll need to choose a hero to play.\r\n\r\nMaybe a cannon-toting ape from the moon appeals to you. Perhaps you prefer a time-traveling freedom fighter. Or is a beat-dropping battlefield DJ more your style? Whoever you want to be, there\'s an Overwatch hero for you.'),
(10, 'Red Dead Redemption II', 'Rockstar Games', 39.99, 'October 26, 2018', 'PlayStation 4', 'rdr2.jpg', 'America, 1899. The end of the Wild West era has begun. After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(128) NOT NULL,
  `FirstName` varchar(128) NOT NULL,
  `LastName` varchar(128) NOT NULL,
  `Phonenumber` varchar(64) NOT NULL,
  `Cardnumber` varchar(64) NOT NULL,
  `Address` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `state` varchar(32) NOT NULL,
  `zip` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `FirstName`, `LastName`, `Phonenumber`, `Cardnumber`, `Address`, `city`, `state`, `zip`) VALUES
(8, 'Ken', 'Liu', '123412341234', '2341234234', 's', 's', 's', 3245),
(9, 'Ken', 'Liu', '123412341234', '2341234234', 's', 's', 's', 3245),
(10, 'Ken', 'Liu', '123412341234', '2341234234', 's', 's', 's', 3245),
(11, 'Ken', 'Liu', '12313451345', '2341234234', 's', 's', 's', 124),
(12, 'Ken', 'Liu', '56246246246', '2341234234', 's', 's', 's', 24),
(13, 'Ken', 'Liu', '123412341234', '2341234234', 's', 's', 's', 2325),
(14, 'Ken', 'Liu', '123412341234', '2341234234', 's', 's', 's', 2325),
(15, 'Ken', 'Liu', '123123123123', '2341234234', 's', 's', 's', 123),
(16, 'Ken', 'Liu', '123123123', '2341234234', 's', 's', 's', 134),
(17, 'Ken', 'Liu', '123123123', '2341234234', 's', 's', 's', 134),
(18, 'Ken', 'Liu', '324242432342', '2341234234', 's', 's', 's', 234),
(19, 'Ken', 'Liu', '13412341341', '2341234234', 's', 's', 's', 13),
(20, 'Ken', 'Liu', '13412341341', '2341234234', 's', 's', 's', 13),
(21, 'Ken', 'Liu', '13412341341', '2341234234', 's', 's', 's', 13),
(22, 'Ken', 'Liu', '13412341341', '2341234234', 's', 's', 's', 13),
(23, 'Ken', 'Liu', '324134141134', '2341234234', 's', 's', 's', 134),
(24, 'Ken', 'Liu', '134134134134', '2341234234', 's', 's', 's', 134),
(25, 'Ken', 'Liu', '245245252', '2341234234', 's', 's', 's', 124),
(26, 'Ken', 'Liu', '2342342424', '2341234234', 's', 's', 's', 2325),
(27, 'Ken', 'Liu', '123123124124124', '2341234234', 's', 's', 's', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autocomplete`
--
ALTER TABLE `autocomplete`
  ADD UNIQUE KEY `states` (`states`,`emails`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
