-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2020 at 03:09 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boardgame_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `BOARD_GAMES`
--

CREATE TABLE `BOARD_GAMES` (
  `GameID` int(11) UNSIGNED NOT NULL,
  `ThumbnailLink` text NOT NULL,
  `Title` text NOT NULL,
  `MinPlayers` tinyint(2) UNSIGNED NOT NULL,
  `MaxPlayers` tinyint(2) UNSIGNED NOT NULL,
  `BestPlayers` tinyint(2) UNSIGNED NOT NULL,
  `MinAge` tinyint(3) UNSIGNED NOT NULL,
  `PlayTime` smallint(5) UNSIGNED NOT NULL,
  `GameMechanics` varchar(255) NOT NULL,
  `PlayLanguage` varchar(255) NOT NULL,
  `Designer` varchar(255) NOT NULL,
  `Artist` varchar(255) NOT NULL,
  `Publisher` varchar(255) NOT NULL,
  `YearMade` year(4) NOT NULL,
  `Rating` float(3,2) UNSIGNED NOT NULL,
  `NoUsersRated` int(11) UNSIGNED NOT NULL,
  `DifficultyRating` enum('Beginner','Intermediate','Expert') NOT NULL,
  `Quality` enum('New','Used - like new','Used - very good','Used - good','Used - Acceptable','Used - Missing pieces') NOT NULL DEFAULT 'New',
  `NoLongerPlayable` enum('Y','N') NOT NULL DEFAULT 'Y',
  `Available` enum('Y','N') NOT NULL,
  `CategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BOARD_GAMES`
--

INSERT INTO `BOARD_GAMES` (`GameID`, `ThumbnailLink`, `Title`, `MinPlayers`, `MaxPlayers`, `BestPlayers`, `MinAge`, `PlayTime`, `GameMechanics`, `PlayLanguage`, `Designer`, `Artist`, `Publisher`, `YearMade`, `Rating`, `NoUsersRated`, `DifficultyRating`, `Quality`, `NoLongerPlayable`, `Available`, `CategoryName`) VALUES
(1, '', 'Pandemic Legacy: Season 1', 2, 4, 4, 13, 60, 'Board', 'Extensive use of text', 'Rob Daviau', 'Chris Quilliams', 'Z-Man Games', 2015, 8.63, 6876, 'Beginner', 'New', 'N', 'Y', 'Strategy'),
(2, '', 'Twilight Struggle', 2, 2, 2, 13, 180, 'Dice', 'Extensive use of text', 'Ananda Gupta', 'Viktor Csete', 'GMT Games', 2005, 8.34, 21969, 'Intermediate', 'Used - like new', 'N', 'Y', 'War'),
(3, '', 'Terra Mystica', 2, 5, 4, 12, 150, 'Cards', 'No necessary in-game text', 'Helge Ostertag', 'Dennis Lohausen', 'Feuerland Spiele', 2012, 8.28, 17096, 'Expert', 'Used - very good', 'N', 'Y', 'Family'),
(4, '', 'Caverna: The Cave Farmers', 1, 7, 4, 12, 210, 'Board', 'Moderate in-game text', 'Uwe Rosenberg', 'Klemens Franz', 'Lookout Games', 2013, 8.24, 11594, 'Beginner', 'Used - good', 'N', 'Y', 'Zombies'),
(5, '', 'Through the Ages: A Story of Civilization', 2, 4, 3, 12, 240, 'Dice', 'Extensive use of text', 'Vlaada Chvátil', 'Richard Cortes', 'Czech Board Games', 2006, 8.18, 14039, 'Intermediate', 'Used - Acceptable', 'N', 'Y', 'Humour'),
(6, '', 'Puerto Rico', 2, 5, 4, 12, 150, 'Memory', 'Moderate in-game text', 'Andreas Seyfarth', 'Franz Vohwinkel', 'Ravensburger ', 2002, 8.13, 42028, 'Expert', 'New', 'N', 'Y', 'Logic'),
(7, '', 'Agricola', 1, 5, 4, 12, 150, 'Board', 'Extensive use of text', 'Uwe Rosenberg', 'Klemens Franz', 'Lookout Games', 2007, 8.10, 42032, 'Beginner', 'Used - like new', 'N', 'Y', 'Quiz'),
(8, '', 'The Castles of Burgundy', 2, 4, 2, 12, 90, 'Dice', 'No necessary in-game text', 'Stefan Feld', 'Julien Delval', 'alea', 2011, 8.10, 18186, 'Intermediate', 'Used - very good', 'N', 'Y', 'Strategy'),
(9, '', 'Mage Knight Board Game', 1, 4, 2, 14, 150, 'Cards', 'Extensive use of text', 'Vlaada Chvátil', 'J. Lonnee', 'WizKids Games', 2011, 8.15, 14256, 'Expert', 'Used - good', 'N', 'Y', 'War'),
(10, '', 'Star Wars: Imperial Assault', 2, 5, 5, 14, 120, 'Board', 'Extensive use of text', 'Justin Kemppainen', 'Arden Beckwith', 'Asterion Press', 2014, 8.32, 6340, 'Beginner', 'Used - Acceptable', 'N', 'Y', 'Family'),
(11, '', 'Android: Netrunner', 2, 2, 2, 14, 45, 'Dice', 'Extensive use of text', 'Richard Garfield', 'Bruno Balixa', 'Z-Man Games', 2012, 8.11, 16854, 'Intermediate', 'New', 'N', 'Y', 'Zombies'),
(12, '', 'Eclipse', 2, 6, 4, 14, 200, 'Cards', 'No necessary in-game text', 'Touko Tahkokallio', 'Ossi Hiekkala', 'GMT Games', 2011, 8.05, 17081, 'Expert', 'Used - like new', 'N', 'Y', 'Humour'),
(13, '', 'Power Grid', 2, 6, 4, 12, 120, 'Board', 'No necessary in-game text', 'Friedemann Friese', 'Antonio Dessi', 'Feuerland Spiele', 2004, 7.98, 36631, 'Beginner', 'Used - very good', 'N', 'Y', 'Logic'),
(14, '', 'War of the Ring (second edition)', 2, 4, 2, 13, 150, 'Dice', 'Extensive use of text', 'Kristofer Bengtsson', 'Kristofer Bengtsson', 'Lookout Games', 2012, 8.34, 4516, 'Intermediate', 'Used - good', 'N', 'Y', 'Quiz'),
(15, '', '7 Wonders: Duel', 2, 2, 2, 10, 30, 'Memory', 'No necessary in-game text', 'Antoine Bauza', 'Miguel Coimbra', 'Czech Board Games', 2015, 8.23, 5490, 'Expert', 'Used - Acceptable', 'N', 'Y', 'Strategy'),
(16, '', 'Robinson Crusoe: Adventures on the Cursed Island', 1, 4, 3, 14, 180, 'Board', 'Extensive use of text', 'Ignacy Trzewiczek', 'Tomasz Bentkowski', 'Ravensburger ', 2012, 8.05, 12609, 'Beginner', 'New', 'N', 'Y', 'War'),
(17, '', 'Brass', 3, 4, 4, 13, 180, 'Dice', 'No necessary in-game text', 'Martin Wallace', 'Peter Dennis', 'Lookout Games', 2007, 8.04, 9386, 'Intermediate', 'Used - like new', 'N', 'Y', 'Family'),
(18, '', 'Le Havre', 1, 5, 3, 12, 200, 'Cards', 'Moderate in-game text', 'Uwe Rosenberg', 'Klemens Franz', 'alea', 2008, 7.96, 16776, 'Expert', 'Used - very good', 'N', 'Y', 'Zombies'),
(19, '', 'Codenames', 2, 8, 6, 14, 15, 'Board', 'Unplayable in another language', 'Vlaada Chvátil', 'Tomáš Kučerovský', 'WizKids Games', 2015, 8.03, 10438, 'Beginner', 'Used - good', 'N', 'Y', 'Humour'),
(20, '', 'Tzolk\'in: The Mayan Calendar', 2, 4, 4, 13, 90, 'Dice', 'No necessary in-game text', 'Simone Luciani', 'Milan Vavroň', 'Asterion Press', 2012, 7.97, 13791, 'Intermediate', 'Used - Acceptable', 'N', 'Y', 'Logic'),
(21, '', 'Dead of Winter: A Crossroads Game', 2, 5, 4, 14, 210, 'Cards', 'Extensive use of text', 'Jonathan Gilmour', 'Peter Dennis', 'Z-Man Games', 2014, 8.00, 13574, 'Expert', 'New', 'N', 'Y', 'Quiz'),
(22, '', 'Through the Ages: A New Story of Civilization', 2, 4, 3, 14, 240, 'Board', 'Extensive use of text', 'Vlaada Chvátil', 'Peter Dennis', 'GMT Games', 2015, 9.10, 1413, 'Beginner', 'Used - like new', 'N', 'Y', 'Strategy'),
(23, '', 'Blood Rage', 2, 4, 4, 13, 90, 'Dice', 'Moderate in-game text', 'Eric M. Lang', 'Henning Ludvigsen', 'Feuerland Spiele', 2015, 8.32, 3624, 'Intermediate', 'Used - very good', 'N', 'Y', 'War'),
(24, '', '7 Wonders', 2, 7, 4, 10, 30, 'Memory', 'No necessary in-game text', 'Antoine Bauza', 'Miguel Coimbra', 'Lookout Games', 2010, 7.86, 40874, 'Expert', 'Used - good', 'N', 'Y', 'Family'),
(25, '', 'Caylus', 2, 5, 3, 12, 150, 'Board', 'No necessary in-game text', 'William Attia', 'Chris Quilliams', 'Czech Board Games', 2005, 7.89, 19977, 'Beginner', 'Used - Acceptable', 'N', 'Y', 'Zombies'),
(26, '', 'Keyflower', 2, 6, 4, 12, 120, 'Dice', 'No necessary in-game text', 'Sebastian Bleasdale', 'Viktor Csete', 'Ravensburger ', 2012, 7.98, 8186, 'Intermediate', 'New', 'N', 'Y', 'Humour'),
(27, '', 'Dominion: Intrigue', 2, 4, 3, 13, 30, 'Cards', 'Moderate in-game text', 'Donald X. Vaccarino', 'Dennis Lohausen', 'Lookout Games', 2009, 7.83, 20405, 'Expert', 'Used - like new', 'N', 'Y', 'Logic'),
(28, '', 'Dominant Species', 2, 6, 4, 14, 240, 'Board', 'Moderate in-game text', 'Chad Jensen', 'Klemens Franz', 'alea', 2010, 7.88, 11014, 'Beginner', 'Used - very good', 'N', 'Y', 'Quiz'),
(29, '', 'Eldritch Horror', 1, 8, 4, 14, 240, 'Dice', 'Extensive use of text', 'Rob Daviau', 'Richard Cortes', 'WizKids Games', 2013, 7.94, 10471, 'Intermediate', 'Used - good', 'N', 'Y', 'Strategy'),
(30, '', 'Star Wars: X-Wing Miniatures Game', 2, 4, 2, 14, 45, 'Cards', 'Moderate in-game text', 'Ananda Gupta', 'Franz Vohwinkel', 'Asterion Press', 2012, 7.92, 12866, 'Expert', 'Used - Acceptable', 'N', 'Y', 'War'),
(31, '', 'Race for the Galaxy', 2, 4, 2, 12, 60, 'Board', 'Some necessary text', 'Helge Ostertag', 'Klemens Franz', 'Z-Man Games', 2007, 7.79, 30257, 'Beginner', 'New', 'N', 'Y', 'Family'),
(32, '', 'El Grande', 2, 5, 5, 12, 120, 'Dice', 'Moderate in-game text', 'Uwe Rosenberg', 'Julien Delval', 'GMT Games', 1995, 7.82, 16600, 'Intermediate', 'Used - like new', 'N', 'Y', 'Zombies'),
(33, '', 'Twilight Imperium (Third Edition)', 3, 6, 6, 12, 240, 'Memory', 'Extensive use of text', 'Vlaada Chvátil', 'J. Lonnee', 'Feuerland Spiele', 2005, 7.89, 12849, 'Expert', 'Used - very good', 'N', 'Y', 'Humour'),
(34, '', 'Lords of Waterdeep', 2, 5, 4, 12, 120, 'Board', 'Moderate in-game text', 'Andreas Seyfarth', 'Arden Beckwith', 'Lookout Games', 2012, 7.81, 22480, 'Beginner', 'Used - good', 'N', 'Y', 'Logic'),
(35, '', 'Roll for the Galaxy', 2, 5, 4, 13, 45, 'Dice', 'Moderate in-game text', 'Uwe Rosenberg', 'Bruno Balixa', 'Czech Board Games', 2014, 7.91, 7696, 'Intermediate', 'Used - Acceptable', 'N', 'Y', 'Quiz'),
(36, '', 'Battlestar Galactica', 3, 6, 5, 10, 240, 'Cards', 'Extensive use of text', 'Stefan Feld', 'Ossi Hiekkala', 'Ravensburger ', 2008, 7.81, 22081, 'Expert', 'New', 'N', 'Y', 'Strategy'),
(37, '', 'Five Tribes', 1, 4, 2, 13, 80, 'Board', 'No necessary in-game text', 'Vlaada Chvátil', 'Antonio Dessi', 'Lookout Games', 2014, 7.84, 10434, 'Beginner', 'Used - like new', 'N', 'Y', 'War'),
(38, '', 'Dominion', 2, 4, 3, 13, 30, 'Dice', 'Moderate in-game text', 'Justin Kemppainen', 'Kristofer Bengtsson', 'alea', 2008, 7.75, 47423, 'Intermediate', 'Used - very good', 'N', 'Y', 'Family'),
(39, '', 'Tigris & Euphrates', 2, 4, 4, 12, 90, 'Cards', 'No necessary in-game text', 'Richard Garfield', 'Miguel Coimbra', 'WizKids Games', 1997, 7.75, 18501, 'Expert', 'Used - good', 'N', 'Y', 'Zombies'),
(40, '', 'The Resistance: Avalon', 5, 10, 8, 13, 30, 'Board', 'Some necessary text', 'Touko Tahkokallio', 'Tomasz Bentkowski', 'Asterion Press', 2012, 7.80, 11479, 'Beginner', 'Used - Acceptable', 'N', 'Y', 'Humour'),
(41, '', 'The Voyages of Marco Polo', 2, 4, 4, 12, 100, 'Dice', 'No necessary in-game text', 'Friedemann Friese', 'Peter Dennis', 'Z-Man Games', 2015, 8.03, 4259, 'Intermediate', 'New', 'N', 'Y', 'Logic'),
(42, '', 'War of the Ring (first edition)', 2, 4, 2, 12, 180, 'Memory', 'Extensive use of text', 'Kristofer Bengtsson', 'Klemens Franz', 'GMT Games', 2004, 7.84, 8486, 'Expert', 'Used - like new', 'N', 'Y', 'Quiz'),
(43, '', 'Patchwork', 2, 2, 2, 8, 30, 'Board', 'No necessary in-game text', 'Antoine Bauza', 'Tomáš Kučerovský', 'Feuerland Spiele', 2014, 7.87, 6885, 'Beginner', 'Used - very good', 'N', 'Y', 'Strategy'),
(44, '', 'Castles of Mad King Ludwig', 1, 4, 4, 13, 90, 'Dice', 'Some necessary text', 'Ignacy Trzewiczek', 'Milan Vavroň', 'Lookout Games', 2014, 7.83, 7670, 'Intermediate', 'Used - good', 'N', 'Y', 'War'),
(45, '', 'Concordia', 2, 5, 4, 13, 100, 'Memory', 'Moderate in-game text', 'Martin Wallace', 'Peter Dennis', 'Czech Board Games', 2013, 7.88, 5950, 'Expert', 'Used - Acceptable', 'N', 'Y', 'Family'),
(46, '', 'Trajan', 2, 4, 4, 12, 90, 'Board', 'No necessary in-game text', 'Uwe Rosenberg', 'Peter Dennis', 'Ravensburger ', 2011, 7.83, 7672, 'Beginner', 'New', 'N', 'Y', 'Zombies'),
(47, '', 'T.I.M.E Stories', 2, 4, 4, 12, 90, 'Dice', 'Unplayable in another language', 'Vlaada Chvátil', 'Henning Ludvigsen', 'Lookout Games', 2015, 8.25, 2609, 'Intermediate', 'Used - like new', 'N', 'Y', 'Humour'),
(48, '', 'Russian Railroads', 2, 4, 4, 12, 120, 'Cards', 'No necessary in-game text', 'Simone Luciani', 'Miguel Coimbra', 'alea', 2013, 7.85, 6426, 'Expert', 'Used - very good', 'N', 'Y', 'Logic'),
(49, '', 'Pandemic', 2, 4, 4, 8, 90, 'Board', 'Some necessary text', 'Jonathan Gilmour', 'Chris Quilliams', 'WizKids Games', 2008, 7.66, 48702, 'Beginner', 'Used - good', 'N', 'Y', 'Quiz'),
(50, '', 'Crokinole', 2, 4, 2, 8, 30, 'Dice', 'No necessary in-game text', 'Vlaada Chvátil', 'Viktor Csete', 'Asterion Press', 1998, 7.80, 6667, 'Intermediate', 'Used - Acceptable', 'N', 'Y', 'Strategy'),
(51, '', 'A Game of Thrones: The Board Game (Second Edition)', 3, 6, 6, 14, 240, 'Memory', 'Some necessary text', 'Eric M. Lang', 'Dennis Lohausen', 'Z-Man Games', 2011, 7.77, 13489, 'Expert', 'New', 'N', 'Y', 'War'),
(52, '', 'Descent: Journeys in the Dark (Second Edition)', 2, 5, 5, 14, 120, 'Board', 'Extensive use of text', 'Antoine Bauza', 'Klemens Franz', 'GMT Games', 2012, 7.79, 10838, 'Beginner', 'Used - like new', 'N', 'Y', 'Family'),
(53, '', 'Troyes', 2, 4, 3, 12, 90, 'Dice', 'No necessary in-game text', 'William Attia', 'Richard Cortes', 'Feuerland Spiele', 2010, 7.74, 9497, 'Intermediate', 'Used - very good', 'N', 'Y', 'Zombies'),
(54, '', 'Nations', 1, 5, 3, 14, 200, 'Cards', 'Moderate in-game text', 'Sebastian Bleasdale', 'Franz Vohwinkel', 'Lookout Games', 2013, 7.82, 6390, 'Expert', 'Used - good', 'N', 'Y', 'Humour'),
(55, '', 'Ora et Labora', 1, 4, 3, 13, 180, 'Board', 'Some necessary text', 'Donald X. Vaccarino', 'Klemens Franz', 'Czech Board Games', 2011, 7.80, 6486, 'Beginner', 'Used - Acceptable', 'N', 'Y', 'Logic'),
(56, '', 'Mage Wars Arena', 2, 2, 2, 13, 90, 'Dice', 'Extensive use of text', 'Chad Jensen', 'Julien Delval', 'Ravensburger ', 2012, 7.95, 5101, 'Intermediate', 'New', 'N', 'Y', 'Quiz'),
(57, '', 'Orléans', 2, 4, 4, 12, 90, 'Cards', 'No necessary in-game text', 'Rob Daviau', 'J. Lonnee', 'Lookout Games', 2014, 8.03, 3306, 'Expert', 'Used - like new', 'N', 'Y', 'Strategy'),
(58, '', 'Stone Age', 2, 4, 4, 10, 90, 'Board', 'No necessary in-game text', 'Ananda Gupta', 'Arden Beckwith', 'alea', 2008, 7.64, 25414, 'Beginner', 'Used - very good', 'N', 'Y', 'War'),
(59, '', 'Commands & Colors: Ancients', 2, 2, 2, 12, 60, 'Dice', 'Moderate in-game text', 'Helge Ostertag', 'Bruno Balixa', 'WizKids Games', 2006, 7.82, 6286, 'Intermediate', 'Used - good', 'N', 'Y', 'Family'),
(60, '', 'Suburbia', 1, 4, 3, 8, 90, 'Memory', 'Moderate in-game text', 'Uwe Rosenberg', 'Ossi Hiekkala', 'Asterion Press', 2012, 7.70, 11330, 'Expert', 'Used - Acceptable', 'N', 'Y', 'Zombies'),
(61, '', 'Sherlock Holmes Consulting Detective', 1, 8, 2, 10, 120, 'Dice', 'Unplayable in another language', 'Vlaada Chvátil', 'Antonio Dessi', 'Z-Man Games', 1981, 7.83, 5561, 'Beginner', 'New', 'N', 'Y', 'Humour'),
(62, '', 'Paths of Glory', 2, 2, 2, 14, 480, 'Cards', 'Extensive use of text', 'Andreas Seyfarth', 'Kristofer Bengtsson', 'GMT Games', 1999, 8.02, 3243, 'Intermediate', 'Used - like new', 'N', 'Y', 'Logic'),
(63, '', 'Legendary Encounters: An Alien Deck Building Game', 1, 5, 3, 17, 45, 'Board', 'Moderate in-game text', 'Uwe Rosenberg', 'Miguel Coimbra', 'Feuerland Spiele', 2014, 7.97, 3950, 'Expert', 'Used - very good', 'N', 'Y', 'Quiz'),
(64, '', 'Alchemists', 2, 4, 4, 14, 120, 'Dice', 'Moderate in-game text', 'Stefan Feld', 'Tomasz Bentkowski', 'Lookout Games', 2014, 7.84, 6052, 'Beginner', 'Used - good', 'N', 'Y', 'Strategy'),
(65, '', 'Star Realms', 2, 2, 2, 12, 20, 'Memory', 'Some necessary text', 'Vlaada Chvátil', 'Peter Dennis', 'Czech Board Games', 2014, 7.69, 11883, 'Intermediate', 'Used - Acceptable', 'N', 'Y', 'War'),
(66, '', 'Combat Commander: Europe', 2, 2, 2, 12, 180, 'Board', 'Extensive use of text', 'Justin Kemppainen', 'Klemens Franz', 'Ravensburger ', 2006, 7.93, 3934, 'Expert', 'New', 'N', 'Y', 'Family'),
(67, '', 'Kemet', 2, 5, 4, 13, 120, 'Dice', 'No necessary in-game text', 'Richard Garfield', 'Tomáš Kučerovský', 'Lookout Games', 2012, 7.78, 6395, 'Beginner', 'Used - like new', 'N', 'Y', 'Zombies'),
(68, '', 'Railways of the World', 2, 6, 5, 10, 120, 'Cards', 'Moderate in-game text', 'Touko Tahkokallio', 'Milan Vavroň', 'alea', 2005, 7.71, 8771, 'Intermediate', 'Used - very good', 'N', 'Y', 'Humour'),
(69, '', 'Goa', 2, 4, 4, 12, 90, 'Board', 'Some necessary text', 'Friedemann Friese', 'Peter Dennis', 'WizKids Games', 2004, 7.68, 8953, 'Expert', 'Used - good', 'N', 'Y', 'Logic'),
(70, '', 'Steam', 3, 5, 4, 10, 90, 'Dice', 'No necessary in-game text', 'Kristofer Bengtsson', 'Peter Dennis', 'Asterion Press', 2009, 7.71, 7190, 'Beginner', 'Used - Acceptable', 'N', 'Y', 'Quiz'),
(71, '', 'Chaos in the Old World', 3, 4, 4, 13, 120, 'Memory', 'Extensive use of text', 'Antoine Bauza', 'Henning Ludvigsen', 'Z-Man Games', 2009, 7.69, 9669, 'Intermediate', 'New', 'N', 'Y', 'Strategy'),
(72, '', 'Fields of Arle', 1, 2, 2, 13, 120, 'Board', 'Some necessary text', 'Ignacy Trzewiczek', 'Miguel Coimbra', 'GMT Games', 2014, 8.33, 1830, 'Expert', 'Used - like new', 'N', 'Y', 'War'),
(73, '', 'Ticket to Ride: Europe', 2, 5, 4, 8, 60, 'Dice', 'No necessary in-game text', 'Martin Wallace', 'Chris Quilliams', 'Feuerland Spiele', 2005, 7.60, 28521, 'Beginner', 'Used - very good', 'N', 'Y', 'Family'),
(74, '', 'The Princes of Florence', 2, 5, 5, 12, 100, 'Memory', 'Moderate in-game text', 'Uwe Rosenberg', 'Viktor Csete', 'Lookout Games', 2000, 7.62, 12421, 'Intermediate', 'Used - good', 'N', 'Y', 'Zombies'),
(75, '', 'Age of Steam', 1, 6, 4, 13, 120, 'Board', 'Some necessary text', 'Vlaada Chvátil', 'Dennis Lohausen', 'Czech Board Games', 2002, 7.72, 6264, 'Expert', 'Used - Acceptable', 'N', 'Y', 'Humour'),
(76, '', 'Splendor', 2, 4, 3, 10, 30, 'Dice', 'No necessary in-game text', 'Simone Luciani', 'Klemens Franz', 'Ravensburger ', 2014, 7.59, 18230, 'Beginner', 'New', 'N', 'Y', 'Logic'),
(77, '', 'Cosmic Encounter', 3, 5, 5, 12, 120, 'Cards', 'Extensive use of text', 'Jonathan Gilmour', 'Richard Cortes', 'Lookout Games', 2008, 7.61, 15088, 'Intermediate', 'Used - like new', 'N', 'Y', 'Quiz'),
(78, '', 'Viticulture', 2, 6, 3, 13, 90, 'Board', 'Moderate in-game text', 'Vlaada Chvátil', 'Franz Vohwinkel', 'alea', 2013, 7.86, 4010, 'Expert', 'Used - very good', 'N', 'Y', 'Strategy'),
(79, '', 'Summoner Wars: Master Set', 2, 4, 2, 9, 30, 'Dice', 'Moderate in-game text', 'Eric M. Lang', 'Klemens Franz', 'WizKids Games', 2011, 7.70, 7485, 'Beginner', 'Used - good', 'N', 'Y', 'War'),
(80, '', 'Go', 2, 2, 2, 8, 90, 'Cards', 'No necessary in-game text', 'Antoine Bauza', 'Julien Delval', 'Asterion Press', 2001, 7.70, 10187, 'Intermediate', 'Used - Acceptable', 'N', 'Y', 'Family'),
(81, '', 'Imperial Settlers', 1, 4, 2, 10, 90, 'Board', 'Moderate in-game text', 'William Attia', 'J. Lonnee', 'Z-Man Games', 2014, 7.68, 7587, 'Expert', 'New', 'N', 'Y', 'Zombies'),
(82, '', 'Tichu', 3, 10, 4, 10, 60, 'Dice', 'No necessary in-game text', 'Sebastian Bleasdale', 'Arden Beckwith', 'GMT Games', 1991, 7.63, 9469, 'Beginner', 'Used - like new', 'N', 'Y', 'Humour'),
(83, '', 'The Lord of the Rings: The Card Game', 1, 4, 2, 13, 60, 'Memory', 'Extensive use of text', 'Donald X. Vaccarino', 'Bruno Balixa', 'Feuerland Spiele', 2011, 7.64, 12136, 'Intermediate', 'Used - very good', 'N', 'Y', 'Logic'),
(84, '', 'Hannibal: Rome vs. Carthage', 2, 2, 2, 12, 200, 'Board', 'Extensive use of text', 'Chad Jensen', 'Ossi Hiekkala', 'Lookout Games', 1996, 7.83, 4077, 'Expert', 'Used - good', 'N', 'Y', 'Quiz'),
(85, '', 'Lewis & Clark', 1, 5, 3, 14, 120, 'Dice', 'No necessary in-game text', 'Vlaada Chvátil', 'Antonio Dessi', 'Czech Board Games', 2013, 7.67, 6669, 'Beginner', 'Used - Acceptable', 'N', 'Y', 'Strategy'),
(86, '', 'Village', 2, 4, 4, 12, 90, 'Cards', 'No necessary in-game text', 'Eric M. Lang', 'Kristofer Bengtsson', 'Ravensburger ', 2011, 7.59, 10930, 'Intermediate', 'New', 'N', 'Y', 'War'),
(87, '', 'Hansa Teutonica', 2, 5, 5, 12, 90, 'Board', 'No necessary in-game text', 'Antoine Bauza', 'Miguel Coimbra', 'Lookout Games', 2009, 7.64, 7190, 'Expert', 'Used - like new', 'N', 'Y', 'Family'),
(88, '', 'Ticket to Ride: Nordic Countries', 2, 3, 3, 8, 60, 'Dice', 'No necessary in-game text', 'William Attia', 'Tomasz Bentkowski', 'alea', 2007, 7.68, 6666, 'Beginner', 'Used - very good', 'N', 'Y', 'Zombies'),
(89, '', 'Runewars', 2, 4, 4, 14, 180, 'Cards', 'Extensive use of text', 'Sebastian Bleasdale', 'Peter Dennis', 'WizKids Games', 2010, 7.74, 5722, 'Intermediate', 'Used - good', 'N', 'Y', 'Humour'),
(90, '', 'Shogun', 3, 5, 4, 12, 150, 'Board', 'No necessary in-game text', 'Donald X. Vaccarino', 'Klemens Franz', 'Asterion Press', 2006, 7.60, 9502, 'Expert', 'Used - Acceptable', 'N', 'Y', 'Logic'),
(91, '', 'Arcadia Quest', 2, 4, 4, 13, 60, 'Dice', 'Moderate in-game text', 'Chad Jensen', 'Tomáš Kučerovský', 'Z-Man Games', 2014, 8.08, 2463, 'Beginner', 'New', 'N', 'Y', 'Quiz'),
(92, '', 'Space Alert', 1, 5, 4, 12, 30, 'Memory', 'Moderate in-game text', 'Vlaada Chvátil', 'Milan Vavroň', 'GMT Games', 2008, 7.58, 10454, 'Intermediate', 'Used - like new', 'N', 'Y', 'Strategy'),
(93, '', 'Age of Empires III: The Age of Discovery', 2, 5, 4, 10, 120, 'Board', 'Some necessary text', 'Glenn Drover', 'Peter Dennis', 'Feuerland Spiele', 2007, 7.61, 8290, 'Expert', 'Used - very good', 'N', 'Y', 'War'),
(94, '', 'La Granja', 1, 4, 3, 12, 120, 'Dice', 'Moderate in-game text', 'Vlaada Chvátil', 'Peter Dennis', 'Lookout Games', 2014, 7.93, 2806, 'Beginner', 'Used - good', 'N', 'Y', 'Family'),
(95, '', 'Imperial', 2, 6, 4, 13, 180, 'Cards', 'Some necessary text', 'Eric M. Lang', 'Henning Ludvigsen', 'Czech Board Games', 2006, 7.64, 6766, 'Intermediate', 'Used - Acceptable', 'N', 'Y', 'Zombies'),
(96, '', 'Ticket to Ride', 2, 5, 4, 8, 60, 'Memory', 'No necessary in-game text', 'Antoine Bauza', 'Miguel Coimbra', 'Ravensburger ', 2004, 7.50, 40106, 'Expert', 'New', 'N', 'Y', 'Humour'),
(97, '', 'Jaipur', 2, 2, 2, 12, 30, 'Memory', 'No necessary in-game text', 'William Attia', 'Alexandre Roche', 'Lookout Games', 2009, 7.54, 12624, 'Beginner', 'Used - like new', 'N', 'Y', 'Logic'),
(98, '', 'Dungeon Petz', 2, 4, 4, 13, 90, 'Memory', 'No necessary in-game text', 'Sebastian Bleasdale', 'David Cochard', 'alea', 2011, 7.63, 6893, 'Intermediate', 'Used - very good', 'N', 'Y', 'Quiz'),
(99, '', 'Istanbul', 2, 5, 4, 10, 60, 'Dice ', 'No necessary in-game text', 'Donald X. Vaccarino', 'Andreas Resch', 'WizKids Games', 2014, 7.62, 7267, 'Expert', 'Used - good', 'N', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `BORROW_HISTORY`
--

CREATE TABLE `BORROW_HISTORY` (
  `RecordID` int(10) UNSIGNED NOT NULL,
  `BorrowedDate` date NOT NULL,
  `ReturnDate` date NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL,
  `MemberID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BORROW_HISTORY`
--

INSERT INTO `BORROW_HISTORY` (`RecordID`, `BorrowedDate`, `ReturnDate`, `GameID`, `MemberID`) VALUES
(1, '2020-02-02', '2020-02-09', 1, 1),
(2, '2020-02-02', '2020-02-09', 2, 3),
(3, '2020-02-02', '2020-02-09', 3, 5),
(4, '2020-02-02', '2020-02-09', 4, 7),
(5, '2020-02-03', '2020-02-10', 5, 9),
(6, '2020-02-03', '2020-02-10', 6, 11),
(7, '2020-02-03', '2020-02-10', 7, 12),
(8, '2020-02-04', '2020-02-11', 4, 4),
(9, '2020-02-04', '2020-02-11', 1, 1),
(10, '2020-02-04', '2020-02-11', 2, 2),
(11, '2020-02-21', '2020-02-28', 3, 3),
(12, '2020-02-21', '2020-02-28', 4, 4),
(13, '2020-02-21', '2020-02-28', 5, 5),
(14, '2020-02-28', '2020-03-06', 6, 6),
(15, '2020-02-28', '2020-03-06', 7, 1),
(16, '2020-02-28', '2020-03-06', 8, 3),
(17, '2020-02-28', '2020-03-06', 9, 2),
(18, '2020-02-28', '2020-03-06', 10, 6),
(19, '2020-02-28', '2020-03-06', 11, 7),
(20, '2020-02-28', '2020-03-06', 12, 8),
(21, '2020-02-28', '2020-03-06', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `GAME_CATEGORY`
--

CREATE TABLE `GAME_CATEGORY` (
  `CategoryID` tinyint(3) UNSIGNED NOT NULL,
  `CategoryName` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `GAME_CATEGORY_LINK`
--

CREATE TABLE `GAME_CATEGORY_LINK` (
  `Category_to_game_ID` tinyint(3) UNSIGNED NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL,
  `CategoryID` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `GAME_REVIEW`
--

CREATE TABLE `GAME_REVIEW` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Rating` tinyint(3) UNSIGNED DEFAULT NULL,
  `Review` varchar(255) DEFAULT NULL,
  `MemberID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `GAME_REVIEW`
--

INSERT INTO `GAME_REVIEW` (`ID`, `Rating`, `Review`, `MemberID`) VALUES
(1, 5, 'It was really good. ', 15),
(2, 1, 'I didn\'t like it. ', 3),
(3, 2, 'It was broken. ', 9),
(4, 4, 'I hope they make a sequel. ', 10),
(5, 1, 'Ruined the family holiday. ', 7),
(6, 5, 'Turns out I\'m a strategy genius.', 12),
(7, 5, 'So fun.', 13),
(8, 2, 'Who ever thought this would be a good game.', 4),
(9, 3, 'It was okay.', 8),
(10, 2, 'So boring.', 2),
(11, 1, 'Ended in tears. ', 11),
(12, 1, 'Ended in divorce.', 14),
(13, 5, 'Brought us all closer.', 5),
(14, 5, 'A real bonding experience. ', 6),
(15, 1, 'Wouldn\'t get again.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `LIBRARY`
--

CREATE TABLE `LIBRARY` (
  `LibraryID` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LIBRARY`
--

INSERT INTO `LIBRARY` (`LibraryID`, `Name`, `Address`, `PhoneNumber`, `EmailAddress`) VALUES
(1, 'Spectacular Library', 'Sky 1, Leeds Dock', '07702234621', 'librarian@spectacular_library.com');

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER`
--

CREATE TABLE `MEMBER` (
  `MemberID` int(10) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `AddressLine` tinytext NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Postcode` varchar(8) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL,
  `Password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MEMBER`
--

INSERT INTO `MEMBER` (`MemberID`, `FirstName`, `LastName`, `AddressLine`, `Town`, `Postcode`, `PhoneNumber`, `EmailAddress`, `Password`) VALUES
(1, 'Allen', 'Jones', 'Flat 1 Lady Lane', 'Anson', 'LS28 4TF', '07702234546', 'allen.jones@fake.com', 'Cat1'),
(2, 'Bob', 'Thomas', 'Flat 2 Lady Lane', 'Auburn', 'LS14 7QW', '07702234547', 'bob.thomas@fake.com', 'Dog1'),
(3, 'Colin', 'Brown', 'Flat 3 Lady Lane', 'Augusta', 'LS13 1ST', '07702234548', 'colin.brown@fake.com', 'Horse1'),
(4, 'Dave', 'Bloggs', 'Flat 4 Lady Lane', 'Bangor', 'LS12 4RE', '07702234549', 'dave.bloggs@fake.com', 'Rabbit1'),
(5, 'Ethan', 'Saunders', 'Flat 5 Lady Lane', 'Bar Harbor', 'LS28 5FU', '07702234550', 'ethan.saunders@fake.com', 'Mouse1'),
(6, 'Fred', 'Johnson', 'Flat 6 Lady Lane', 'Bath', 'LS1 4TP', '07702234551', 'fred.johnson@fake.com', 'Kangaroo1'),
(7, 'Gary', 'Akroyd', 'Flat 7 Lady Lane', 'Berwick', 'LS2 8TY', '07702234552', 'gary.akroyd@fake.com', 'Bat1'),
(8, 'Harry', 'Stitt', 'Flat 8 Lady Lane', 'Biddeford', 'LS2 5RW', '07702234553', 'harry.stitt@fake.com', 'Koala1'),
(9, 'Ian', 'Robinson', 'Flat 9 Lady Lane', 'Bingham', 'LS13 6TF', '07702234554', 'ian.robinson@fake.com', 'Monkey1'),
(10, 'John', 'Fuller', 'Flat 10 Lady Lane', 'Boothbay Harbor', 'LS14 7ZX', '07702234555', 'john.fuller@fake.com', 'Tardigrade1'),
(11, 'Keiran', 'Bond', 'Flat 11 Lady Lane', 'Brewer', 'LS14 3XC', '07702234556', 'keiran.bond@fake.com', 'Zebra1'),
(12, 'Lucas', 'Cresswell', 'Flat 12 Lady Lane', 'Bridgton', 'LS1 7TU', '07702234557', 'lucas.cresswell@fake.com', 'Goat1'),
(13, 'Matthew', 'Moore', 'Flat 13 Lady Lane', 'Brunswick', 'LS2 7FD', '07702234558', 'matthew.moore@fake.com', 'Baboon1'),
(14, 'Norris', 'Townsend', 'Flat 14 Lady Lane', 'Brunswick Station', 'LS1 5DD', '07702234559', 'norris.townsend@fake.com', 'Catfish1'),
(15, 'Orson', 'Ryan', 'Flat 15 Lady Lane', 'Bucksport', 'LS4 3PO', '07702234560', 'ryan.orson@fake.com', 'Penguin1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BOARD_GAMES`
--
ALTER TABLE `BOARD_GAMES`
  ADD PRIMARY KEY (`GameID`);

--
-- Indexes for table `BORROW_HISTORY`
--
ALTER TABLE `BORROW_HISTORY`
  ADD PRIMARY KEY (`RecordID`),
  ADD KEY `GameID` (`GameID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `GAME_CATEGORY`
--
ALTER TABLE `GAME_CATEGORY`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `GAME_CATEGORY_LINK`
--
ALTER TABLE `GAME_CATEGORY_LINK`
  ADD PRIMARY KEY (`Category_to_game_ID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `GameID` (`GameID`);

--
-- Indexes for table `GAME_REVIEW`
--
ALTER TABLE `GAME_REVIEW`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `LIBRARY`
--
ALTER TABLE `LIBRARY`
  ADD PRIMARY KEY (`LibraryID`);

--
-- Indexes for table `MEMBER`
--
ALTER TABLE `MEMBER`
  ADD PRIMARY KEY (`MemberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BOARD_GAMES`
--
ALTER TABLE `BOARD_GAMES`
  MODIFY `GameID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182029;

--
-- AUTO_INCREMENT for table `BORROW_HISTORY`
--
ALTER TABLE `BORROW_HISTORY`
  MODIFY `RecordID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `GAME_CATEGORY_LINK`
--
ALTER TABLE `GAME_CATEGORY_LINK`
  MODIFY `Category_to_game_ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LIBRARY`
--
ALTER TABLE `LIBRARY`
  MODIFY `LibraryID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `MEMBER`
--
ALTER TABLE `MEMBER`
  MODIFY `MemberID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BORROW_HISTORY`
--
ALTER TABLE `BORROW_HISTORY`
  ADD CONSTRAINT `borrow_history_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `BOARD_GAMES` (`GameID`),
  ADD CONSTRAINT `borrow_history_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`MemberID`);

--
-- Constraints for table `GAME_CATEGORY_LINK`
--
ALTER TABLE `GAME_CATEGORY_LINK`
  ADD CONSTRAINT `game_category_link_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `GAME_CATEGORY` (`CategoryID`),
  ADD CONSTRAINT `game_category_link_ibfk_2` FOREIGN KEY (`GameID`) REFERENCES `BOARD_GAMES` (`GameID`);

--
-- Constraints for table `GAME_REVIEW`
--
ALTER TABLE `GAME_REVIEW`
  ADD CONSTRAINT `game_review_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`MemberID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
