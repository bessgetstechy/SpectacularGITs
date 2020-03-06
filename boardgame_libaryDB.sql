-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2020 at 01:29 PM
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
  `GameID` int(10) UNSIGNED NOT NULL,
  `ThumbnailLink` text NOT NULL,
  `Title` text NOT NULL,
  `MinPlayers` tinyint(2) UNSIGNED NOT NULL,
  `MaxPlayers` smallint(5) UNSIGNED NOT NULL,
  `BestPlayers` smallint(5) UNSIGNED NOT NULL,
  `MinAge` tinyint(3) UNSIGNED NOT NULL,
  `PlayTime` smallint(5) UNSIGNED NOT NULL,
  `GameMechanics` varchar(255) NOT NULL,
  `Publisher` varchar(255) NOT NULL,
  `YearMade` smallint(5) UNSIGNED NOT NULL,
  `Rating` float(3,2) UNSIGNED NOT NULL,
  `NoUsersRated` int(11) UNSIGNED NOT NULL,
  `DifficultyRating` enum('Beginner','Intermediate','Expert') NOT NULL,
  `Quality` enum('New','Used - like new','Used - very good','Used - good','Used - Acceptable','Used - Missing pieces') NOT NULL DEFAULT 'New',
  `Playable` enum('Y','N') NOT NULL DEFAULT 'Y',
  `Available` enum('Y','N') NOT NULL DEFAULT 'Y',
  `CategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BOARD_GAMES`
--

INSERT INTO `BOARD_GAMES` (`GameID`, `ThumbnailLink`, `Title`, `MinPlayers`, `MaxPlayers`, `BestPlayers`, `MinAge`, `PlayTime`, `GameMechanics`, `Publisher`, `YearMade`, `Rating`, `NoUsersRated`, `DifficultyRating`, `Quality`, `Playable`, `Available`, `CategoryName`) VALUES
(1, '', 'Pandemic Legacy: Season 1', 2, 4, 4, 13, 60, 'Board', 'Z-Man Games', 2015, 8.63, 6876, 'Beginner', 'New', 'Y', 'Y', 'Abstract Strategy'),
(2, '', 'Twilight Struggle', 2, 2, 2, 13, 180, 'Dice', 'GMT Games', 2005, 8.34, 21969, 'Intermediate', 'Used - like new', 'Y', 'Y', 'Acting'),
(3, '', 'Terra Mystica', 2, 5, 4, 12, 150, 'Cards', 'Feuerland Spiele', 2012, 8.28, 17096, 'Expert', 'Used - very good', 'Y', 'Y', 'Action'),
(4, '', 'Caverna: The Cave Farmers', 1, 7, 4, 12, 210, 'Board', 'Lookout Games', 2013, 8.24, 11594, 'Beginner', 'Used - good', 'Y', 'Y', 'Adult'),
(5, '', 'Through the Ages: A Story of Civilization', 2, 4, 3, 12, 240, 'Dice', 'Czech Board Games', 2006, 8.18, 14039, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Adventure'),
(6, '', 'Puerto Rico', 2, 5, 4, 12, 150, 'Memory', 'Ravensburger', 2002, 8.13, 42028, 'Expert', 'New', 'Y', 'Y', 'Animals'),
(7, '', 'Agricola', 1, 5, 4, 12, 150, 'Board', 'Lookout Games', 2007, 8.10, 42032, 'Beginner', 'Used - like new', 'Y', 'Y', 'Area Control'),
(8, '', 'The Castles of Burgundy', 2, 4, 2, 12, 90, 'Dice', 'alea', 2011, 8.10, 18186, 'Intermediate', 'Used - very good', 'Y', 'Y', 'Betting'),
(9, '', 'Mage Knight Board Game', 1, 4, 2, 14, 150, 'Cards', 'WizKids Games', 2011, 8.15, 14256, 'Expert', 'Used - good', 'Y', 'Y', 'Bluffing'),
(10, '', 'Star Wars: Imperial Assault', 2, 5, 5, 14, 120, 'Board', 'Asterion Press', 2014, 8.32, 6340, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Card Game'),
(11, '', 'Android: Netrunner', 2, 2, 2, 14, 45, 'Dice', 'Z-Man Games', 2012, 8.11, 16854, 'Intermediate', 'New', 'Y', 'Y', 'Celebrity'),
(12, '', 'Eclipse', 2, 6, 4, 14, 200, 'Cards', 'GMT Games', 2011, 8.05, 17081, 'Expert', 'Used - like new', 'Y', 'Y', 'Children\'s Game'),
(13, '', 'Power Grid', 2, 6, 4, 12, 120, 'Board', 'Feuerland Spiele', 2004, 7.98, 36631, 'Beginner', 'Used - very good', 'Y', 'Y', 'City Building'),
(14, '', 'War of the Ring (second edition)', 2, 4, 2, 13, 150, 'Dice', 'Lookout Games', 2012, 8.34, 4516, 'Intermediate', 'Used - good', 'Y', 'Y', 'Co-operative Play'),
(15, '', '7 Wonders: Duel', 2, 2, 2, 10, 30, 'Memory', 'Czech Board Games', 2015, 8.23, 5490, 'Expert', 'Used - Acceptable', 'Y', 'Y', 'Collaborative'),
(16, '', 'Robinson Crusoe: Adventures on the Cursed Island', 1, 4, 3, 14, 180, 'Board', 'Ravensburger', 2012, 8.05, 12609, 'Beginner', 'New', 'Y', 'Y', 'Comic Book'),
(17, '', 'Brass', 3, 4, 4, 13, 180, 'Dice', 'Lookout Games', 2007, 8.04, 9386, 'Intermediate', 'Used - like new', 'Y', 'Y', 'Deduction'),
(18, '', 'Le Havre', 1, 5, 3, 12, 200, 'Cards', 'alea', 2008, 7.96, 16776, 'Expert', 'Used - very good', 'Y', 'Y', 'Dexterity'),
(19, '', 'Codenames', 2, 8, 6, 14, 15, 'Board', 'WizKids Games', 2015, 8.03, 10438, 'Beginner', 'Used - good', 'Y', 'Y', 'Dice'),
(20, '', 'Tzolk\'in: The Mayan Calendar', 2, 4, 4, 13, 90, 'Dice', 'Asterion Press', 2012, 7.97, 13791, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Economic'),
(21, '', 'Dead of Winter: A Crossroads Game', 2, 5, 4, 14, 210, 'Cards', 'Z-Man Games', 2014, 8.00, 13574, 'Expert', 'New', 'Y', 'Y', 'Educational'),
(22, '', 'Through the Ages: A New Story of Civilization', 2, 4, 3, 14, 240, 'Board', 'GMT Games', 2015, 9.10, 1413, 'Beginner', 'Used - like new', 'Y', 'Y', 'Fantasy'),
(23, '', 'Blood Rage', 2, 4, 4, 13, 90, 'Dice', 'Feuerland Spiele', 2015, 8.32, 3624, 'Intermediate', 'Used - very good', 'Y', 'Y', 'Farming'),
(24, '', '7 Wonders', 2, 7, 4, 10, 30, 'Memory', 'Lookout Games', 2010, 7.86, 40874, 'Expert', 'Used - good', 'Y', 'Y', 'Fighting'),
(25, '', 'Caylus', 2, 5, 3, 12, 150, 'Board', 'Czech Board Games', 2005, 7.89, 19977, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Grid Movement'),
(26, '', 'Keyflower', 2, 6, 4, 12, 120, 'Dice', 'Ravensburger', 2012, 7.98, 8186, 'Intermediate', 'New', 'Y', 'Y', 'Humor'),
(27, '', 'Dominion: Intrigue', 2, 4, 3, 13, 30, 'Cards', 'Lookout Games', 2009, 7.83, 20405, 'Expert', 'Used - like new', 'Y', 'Y', 'Industry'),
(28, '', 'Dominant Species', 2, 6, 4, 14, 240, 'Board', 'alea', 2010, 7.88, 11014, 'Beginner', 'Used - very good', 'Y', 'Y', 'Maze'),
(29, '', 'Eldritch Horror', 1, 8, 4, 14, 240, 'Dice', 'WizKids Games', 2013, 7.94, 10471, 'Intermediate', 'Used - good', 'Y', 'Y', 'Memory'),
(30, '', 'Star Wars: X-Wing Miniatures Game', 2, 4, 2, 14, 45, 'Cards', 'Asterion Press', 2012, 7.92, 12866, 'Expert', 'Used - Acceptable', 'Y', 'Y', 'Movies'),
(31, '', 'Race for the Galaxy', 2, 4, 2, 12, 60, 'Board', 'Z-Man Games', 2007, 7.79, 30257, 'Beginner', 'New', 'Y', 'Y', 'Murder/Mystery'),
(32, '', 'El Grande', 2, 5, 5, 12, 120, 'Dice', 'GMT Games', 1995, 7.82, 16600, 'Intermediate', 'Used - like new', 'Y', 'Y', 'Music'),
(33, '', 'Twilight Imperium (Third Edition)', 3, 6, 6, 12, 240, 'Memory', 'Feuerland Spiele', 2005, 7.89, 12849, 'Expert', 'Used - very good', 'Y', 'Y', 'Mythology'),
(34, '', 'Lords of Waterdeep', 2, 5, 4, 12, 120, 'Board', 'Lookout Games', 2012, 7.81, 22480, 'Beginner', 'Used - good', 'Y', 'Y', 'Negotiation'),
(35, '', 'Roll for the Galaxy', 2, 5, 4, 13, 45, 'Dice', 'Czech Board Games', 2014, 7.91, 7696, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Network Building'),
(36, '', 'Battlestar Galactica', 3, 6, 5, 10, 240, 'Cards', 'Ravensburger', 2008, 7.81, 22081, 'Expert', 'New', 'Y', 'Y', 'Novel-based'),
(37, '', 'Five Tribes', 1, 4, 2, 13, 80, 'Board', 'Lookout Games', 2014, 7.84, 10434, 'Beginner', 'Used - like new', 'Y', 'Y', 'Number'),
(38, '', 'Dominion', 2, 4, 3, 13, 30, 'Dice', 'alea', 2008, 7.75, 47423, 'Intermediate', 'Used - very good', 'Y', 'Y', 'Paper-and-Pencil'),
(39, '', 'Tigris & Euphrates', 2, 4, 4, 12, 90, 'Cards', 'WizKids Games', 1997, 7.75, 18501, 'Expert', 'Used - good', 'Y', 'Y', 'Partnerships'),
(40, '', 'The Resistance: Avalon', 5, 10, 8, 13, 30, 'Board', 'Asterion Press', 2012, 7.80, 11479, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Party Game'),
(41, '', 'The Voyages of Marco Polo', 2, 4, 4, 12, 100, 'Dice', 'Z-Man Games', 2015, 8.03, 4259, 'Intermediate', 'New', 'Y', 'Y', 'Pattern Building'),
(42, '', 'War of the Ring (first edition)', 2, 4, 2, 12, 180, 'Memory', 'GMT Games', 2004, 7.84, 8486, 'Expert', 'Used - like new', 'Y', 'Y', 'Pirates'),
(43, '', 'Patchwork', 2, 2, 2, 8, 30, 'Board', 'Feuerland Spiele', 2014, 7.87, 6885, 'Beginner', 'Used - very good', 'Y', 'Y', 'Player Elimination'),
(44, '', 'Castles of Mad King Ludwig', 1, 4, 4, 13, 90, 'Dice', 'Lookout Games', 2014, 7.83, 7670, 'Intermediate', 'Used - good', 'Y', 'Y', 'Point to Point Movement'),
(45, '', 'Concordia', 2, 5, 4, 13, 100, 'Memory', 'Czech Board Games', 2013, 7.88, 5950, 'Expert', 'Used - Acceptable', 'Y', 'Y', 'Political'),
(46, '', 'Trajan', 2, 4, 4, 12, 90, 'Board', 'Ravensburger', 2011, 7.83, 7672, 'Beginner', 'New', 'Y', 'Y', 'Popular Culture'),
(47, '', 'T.I.M.E Stories', 2, 4, 4, 12, 90, 'Dice', 'Lookout Games', 2015, 8.25, 2609, 'Intermediate', 'Used - like new', 'Y', 'Y', 'Prehistoric'),
(48, '', 'Russian Railroads', 2, 4, 4, 12, 120, 'Cards', 'alea', 2013, 7.85, 6426, 'Expert', 'Used - very good', 'Y', 'Y', 'Press Your Luck'),
(49, '', 'Pandemic', 2, 4, 4, 8, 90, 'Board', 'WizKids Games', 2008, 7.66, 48702, 'Beginner', 'Used - good', 'Y', 'Y', 'Print & Play'),
(50, '', 'Crokinole', 2, 4, 2, 8, 30, 'Dice', 'Asterion Press', 1998, 7.80, 6667, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Puzzle'),
(51, '', 'A Game of Thrones: The Board Game (Second Edition)', 3, 6, 6, 14, 240, 'Memory', 'Z-Man Games', 2011, 7.77, 13489, 'Expert', 'New', 'Y', 'Y', 'Racing'),
(52, '', 'Descent: Journeys in the Dark (Second Edition)', 2, 5, 5, 14, 120, 'Board', 'GMT Games', 2012, 7.79, 10838, 'Beginner', 'Used - like new', 'Y', 'Y', 'Radio'),
(53, '', 'Troyes', 2, 4, 3, 12, 90, 'Dice', 'Feuerland Spiele', 2010, 7.74, 9497, 'Intermediate', 'Used - very good', 'Y', 'Y', 'Role Playing'),
(54, '', 'Nations', 1, 5, 3, 14, 200, 'Cards', 'Lookout Games', 2013, 7.82, 6390, 'Expert', 'Used - good', 'Y', 'Y', 'Secret Agents'),
(55, '', 'Ora et Labora', 1, 4, 3, 13, 180, 'Board', 'Czech Board Games', 2011, 7.80, 6486, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Simulation'),
(56, '', 'Mage Wars Arena', 2, 2, 2, 13, 90, 'Dice', 'Ravensburger', 2012, 7.95, 5101, 'Intermediate', 'New', 'Y', 'Y', 'Simultaneous Action'),
(57, '', 'Orléans', 2, 4, 4, 12, 90, 'Cards', 'Lookout Games', 2014, 8.03, 3306, 'Expert', 'Used - like new', 'Y', 'Y', 'Single Player'),
(58, '', 'Stone Age', 2, 4, 4, 10, 90, 'Board', 'alea', 2008, 7.64, 25414, 'Beginner', 'Used - very good', 'Y', 'Y', 'Spin and Move'),
(59, '', 'Commands & Colors: Ancients', 2, 2, 2, 12, 60, 'Dice', 'WizKids Games', 2006, 7.82, 6286, 'Intermediate', 'Used - good', 'Y', 'Y', 'Sports'),
(60, '', 'Suburbia', 1, 4, 3, 8, 90, 'Memory', 'Asterion Press', 2012, 7.70, 11330, 'Expert', 'Used - Acceptable', 'Y', 'Y', 'Storytelling'),
(61, '', 'Sherlock Holmes Consulting Detective', 1, 8, 2, 10, 120, 'Dice', 'Z-Man Games', 1981, 7.83, 5561, 'Beginner', 'New', 'Y', 'Y', 'Teen'),
(62, '', 'Paths of Glory', 2, 2, 2, 14, 480, 'Cards', 'GMT Games', 1999, 8.02, 3243, 'Intermediate', 'Used - like new', 'Y', 'Y', 'Territory Building'),
(63, '', 'Legendary Encounters: An Alien Deck Building Game', 1, 5, 3, 17, 45, 'Board', 'Feuerland Spiele', 2014, 7.97, 3950, 'Expert', 'Used - very good', 'Y', 'Y', 'Tile Placement'),
(64, '', 'Alchemists', 2, 4, 4, 14, 120, 'Dice', 'Lookout Games', 2014, 7.84, 6052, 'Beginner', 'Used - good', 'Y', 'Y', 'Trivia'),
(65, '', 'Star Realms', 2, 2, 2, 12, 20, 'Memory', 'Czech Board Games', 2014, 7.69, 11883, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'TV'),
(66, '', 'Combat Commander: Europe', 2, 2, 2, 12, 180, 'Board', 'Ravensburger', 2006, 7.93, 3934, 'Expert', 'New', 'Y', 'Y', 'Video Game Theme'),
(67, '', 'Kemet', 2, 5, 4, 13, 120, 'Dice', 'Lookout Games', 2012, 7.78, 6395, 'Beginner', 'Used - like new', 'Y', 'Y', 'Voting'),
(68, '', 'Railways of the World', 2, 6, 5, 10, 120, 'Cards', 'alea', 2005, 7.71, 8771, 'Intermediate', 'Used - very good', 'Y', 'Y', 'Wargame'),
(69, '', 'Goa', 2, 4, 4, 12, 90, 'Board', 'WizKids Games', 2004, 7.68, 8953, 'Expert', 'Used - good', 'Y', 'Y', 'Word Game'),
(70, '', 'Steam', 3, 5, 4, 10, 90, 'Dice', 'Asterion Press', 2009, 7.71, 7190, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Worker Placement'),
(71, '', 'Chaos in the Old World', 3, 4, 4, 13, 120, 'Memory', 'Z-Man Games', 2009, 7.69, 9669, 'Intermediate', 'New', 'Y', 'Y', 'World War I'),
(72, '', 'Fields of Arle', 1, 2, 2, 13, 120, 'Board', 'GMT Games', 2014, 8.33, 1830, 'Expert', 'Used - like new', 'Y', 'Y', 'World War II'),
(73, '', 'Ticket to Ride: Europe', 2, 5, 4, 8, 60, 'Dice', 'Feuerland Spiele', 2005, 7.60, 28521, 'Beginner', 'Used - very good', 'Y', 'Y', 'Zombies'),
(74, '', 'The Princes of Florence', 2, 5, 5, 12, 100, 'Memory', 'Lookout Games', 2000, 7.62, 12421, 'Intermediate', 'Used - good', 'Y', 'Y', 'Abstract Strategy'),
(75, '', 'Age of Steam', 1, 6, 4, 13, 120, 'Board', 'Czech Board Games', 2002, 7.72, 6264, 'Expert', 'Used - Acceptable', 'Y', 'Y', 'Acting'),
(76, '', 'Splendor', 2, 4, 3, 10, 30, 'Dice', 'Ravensburger', 2014, 7.59, 18230, 'Beginner', 'New', 'Y', 'Y', 'Action'),
(77, '', 'Cosmic Encounter', 3, 5, 5, 12, 120, 'Cards', 'Lookout Games', 2008, 7.61, 15088, 'Intermediate', 'Used - like new', 'Y', 'Y', 'Adult'),
(78, '', 'Viticulture', 2, 6, 3, 13, 90, 'Board', 'alea', 2013, 7.86, 4010, 'Expert', 'Used - very good', 'Y', 'Y', 'Adventure'),
(79, '', 'Summoner Wars: Master Set', 2, 4, 2, 9, 30, 'Dice', 'WizKids Games', 2011, 7.70, 7485, 'Beginner', 'Used - good', 'Y', 'Y', 'Animals'),
(80, '', 'Go', 2, 2, 2, 8, 90, 'Cards', 'Asterion Press', 2001, 7.70, 10187, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Area Control'),
(81, '', 'Imperial Settlers', 1, 4, 2, 10, 90, 'Board', 'Z-Man Games', 2014, 7.68, 7587, 'Expert', 'New', 'Y', 'Y', 'Betting'),
(82, '', 'Tichu', 3, 10, 4, 10, 60, 'Dice', 'GMT Games', 1991, 7.63, 9469, 'Beginner', 'Used - like new', 'Y', 'Y', 'Bluffing'),
(83, '', 'The Lord of the Rings: The Card Game', 1, 4, 2, 13, 60, 'Memory', 'Feuerland Spiele', 2011, 7.64, 12136, 'Intermediate', 'Used - very good', 'Y', 'Y', 'Card Game'),
(84, '', 'Hannibal: Rome vs. Carthage', 2, 2, 2, 12, 200, 'Board', 'Lookout Games', 1996, 7.83, 4077, 'Expert', 'Used - good', 'Y', 'Y', 'Celebrity'),
(85, '', 'Lewis & Clark', 1, 5, 3, 14, 120, 'Dice', 'Czech Board Games', 2013, 7.67, 6669, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Children\'s Game'),
(86, '', 'Village', 2, 4, 4, 12, 90, 'Cards', 'Ravensburger', 2011, 7.59, 10930, 'Intermediate', 'New', 'Y', 'Y', 'City Building'),
(87, '', 'Hansa Teutonica', 2, 5, 5, 12, 90, 'Board', 'Lookout Games', 2009, 7.64, 7190, 'Expert', 'Used - like new', 'Y', 'Y', 'Co-operative Play'),
(88, '', 'Ticket to Ride: Nordic Countries', 2, 3, 3, 8, 60, 'Dice', 'alea', 2007, 7.68, 6666, 'Beginner', 'Used - very good', 'Y', 'Y', 'Collaborative'),
(89, '', 'Runewars', 2, 4, 4, 14, 180, 'Cards', 'WizKids Games', 2010, 7.74, 5722, 'Intermediate', 'Used - good', 'Y', 'Y', 'Comic Book'),
(90, '', 'Shogun', 3, 5, 4, 12, 150, 'Board', 'Asterion Press', 2006, 7.60, 9502, 'Expert', 'Used - Acceptable', 'Y', 'Y', 'Deduction'),
(91, '', 'Arcadia Quest', 2, 4, 4, 13, 60, 'Dice', 'Z-Man Games', 2014, 8.08, 2463, 'Beginner', 'New', 'Y', 'Y', 'Dexterity'),
(92, '', 'Space Alert', 1, 5, 4, 12, 30, 'Memory', 'GMT Games', 2008, 7.58, 10454, 'Intermediate', 'Used - like new', 'Y', 'Y', 'Dice'),
(93, '', 'Age of Empires III: The Age of Discovery', 2, 5, 4, 10, 120, 'Board', 'Feuerland Spiele', 2007, 7.61, 8290, 'Expert', 'Used - very good', 'Y', 'Y', 'Economic'),
(94, '', 'La Granja', 1, 4, 3, 12, 120, 'Dice', 'Lookout Games', 2014, 7.93, 2806, 'Beginner', 'Used - good', 'Y', 'Y', 'Educational'),
(95, '', 'Imperial', 2, 6, 4, 13, 180, 'Cards', 'Czech Board Games', 2006, 7.64, 6766, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Fantasy'),
(96, '', 'Ticket to Ride', 2, 5, 4, 8, 60, 'Memory', 'Ravensburger', 2004, 7.50, 40106, 'Expert', 'New', 'Y', 'Y', 'Farming'),
(97, '', 'Jaipur', 2, 2, 2, 12, 30, 'Memory', 'Lookout Games', 2009, 7.54, 12624, 'Beginner', 'Used - like new', 'Y', 'Y', 'Fighting'),
(98, '', 'Dungeon Petz', 2, 4, 4, 13, 90, 'Memory', 'alea', 2011, 7.63, 6893, 'Intermediate', 'Used - very good', 'Y', 'Y', 'Grid Movement'),
(99, '', 'Istanbul', 2, 5, 4, 10, 60, 'Dice', 'WizKids Games', 2014, 7.62, 7267, 'Expert', 'Used - good', 'Y', 'Y', 'Humor');

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
-- Table structure for table `EMPLOYEES`
--

CREATE TABLE `EMPLOYEES` (
  `EmployeeID` smallint(5) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `EMPLOYEES`
--

INSERT INTO `EMPLOYEES` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `PhoneNumber`) VALUES
(1234, 'Amy', 'Artist', '1 Big House', '07702234546'),
(1235, 'Bev', 'Baker', '2 Big House', '07702234547'),
(1236, 'Carol', 'Crispy', '3 Big House', '07702234548'),
(1237, 'Deb', 'Downer', '4 Big House', '07702234549'),
(1238, 'Eliza', 'Elbow', '5 Big House', '07702234550'),
(1239, 'Fiona', 'Fartsalot', '6 Big House', '07702234551'),
(1240, 'Gina', 'G', '7 Big House', '07702234552'),
(1241, 'Hannah', 'Hatter', '8 Big House', '07702234553'),
(1242, 'Irene', 'Icicles', '9 Big House', '07702234554');

-- --------------------------------------------------------

--
-- Table structure for table `GAME_CATEGORY`
--

CREATE TABLE `GAME_CATEGORY` (
  `CategoryID` tinyint(3) UNSIGNED NOT NULL,
  `CategoryName` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `GAME_CATEGORY`
--

INSERT INTO `GAME_CATEGORY` (`CategoryID`, `CategoryName`) VALUES
(1, 'Abstract Strategy'),
(2, 'Acting'),
(3, 'Action'),
(4, 'Adult'),
(5, 'Adventure'),
(6, 'Animals'),
(7, 'Area Control'),
(8, 'Betting'),
(9, 'Bluffing'),
(10, 'Card Game'),
(11, 'Celebrity'),
(12, 'Children\'s Game'),
(13, 'City Building'),
(14, 'Co-operative Play'),
(15, 'Collaborative'),
(16, 'Comic Book'),
(17, 'Deduction'),
(18, 'Dexterity'),
(19, 'Dice'),
(20, 'Economic'),
(21, 'Educational'),
(22, 'Fantasy'),
(23, 'Farming'),
(24, 'Fighting'),
(25, 'Grid Movement'),
(26, 'Humor'),
(27, 'Industry'),
(28, 'Maze'),
(29, 'Memory'),
(30, 'Movies'),
(31, 'Murder/Mystery'),
(32, 'Music'),
(33, 'Mythology'),
(34, 'Negotiation'),
(35, 'Network Building'),
(36, 'Novel-based'),
(37, 'Number'),
(38, 'Paper-and-Pencil'),
(39, 'Partnerships'),
(40, 'Party Game'),
(41, 'Pattern Building'),
(42, 'Pirates'),
(43, 'Player Elimination'),
(44, 'Point to Point Movement'),
(45, 'Political'),
(46, 'Popular Culture'),
(47, 'Prehistoric'),
(48, 'Press Your Luck'),
(49, 'Print & Play'),
(50, 'Puzzle'),
(51, 'Racing'),
(52, 'Radio'),
(53, 'Role Playing'),
(54, 'Secret Agents'),
(55, 'Simulation'),
(56, 'Simultaneous Action'),
(57, 'Single Player'),
(58, 'Spin and Move'),
(59, 'Sports'),
(60, 'Storytelling'),
(61, 'Teen'),
(62, 'Territory Building'),
(63, 'Tile Placement'),
(64, 'Trivia'),
(65, 'TV'),
(66, 'Video Game Theme'),
(67, 'Voting'),
(68, 'Wargame'),
(69, 'Word Game'),
(70, 'Worker Placement'),
(71, 'World War I'),
(72, 'World War II'),
(73, 'Zombies');

-- --------------------------------------------------------

--
-- Table structure for table `GAME_CATEGORY_LINK`
--

CREATE TABLE `GAME_CATEGORY_LINK` (
  `Category_to_game_ID` tinyint(3) UNSIGNED NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL,
  `CategoryID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `GAME_CATEGORY_LINK`
--

INSERT INTO `GAME_CATEGORY_LINK` (`Category_to_game_ID`, `GameID`, `CategoryID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 3, 3),
(6, 4, 4),
(7, 5, 5),
(8, 6, 6),
(9, 7, 7),
(10, 8, 1),
(11, 9, 2),
(12, 10, 3),
(13, 11, 4),
(14, 12, 5),
(15, 13, 6),
(16, 14, 7),
(17, 15, 1),
(18, 16, 2),
(19, 17, 3),
(20, 18, 4),
(21, 19, 5),
(22, 20, 6),
(23, 21, 7),
(24, 22, 1),
(25, 23, 2),
(26, 24, 3),
(27, 25, 4),
(28, 26, 5),
(29, 27, 6),
(30, 28, 7),
(31, 29, 1),
(32, 30, 2),
(33, 31, 3),
(34, 32, 4),
(35, 33, 5),
(36, 34, 6),
(37, 35, 7),
(38, 36, 1),
(39, 37, 2),
(40, 38, 3),
(41, 39, 4),
(42, 40, 5),
(43, 41, 6),
(44, 42, 7),
(45, 43, 1),
(46, 44, 2),
(47, 45, 3),
(48, 46, 4),
(49, 47, 5),
(50, 48, 6),
(51, 49, 7),
(52, 50, 1),
(53, 51, 2),
(54, 52, 3),
(55, 53, 4),
(56, 54, 5),
(57, 55, 6),
(58, 56, 7),
(59, 57, 1),
(60, 58, 2),
(61, 59, 3),
(62, 60, 4),
(63, 61, 5),
(64, 62, 6),
(65, 63, 7),
(66, 64, 1),
(67, 65, 2),
(68, 66, 3),
(69, 67, 4),
(70, 68, 5),
(71, 69, 6),
(72, 70, 7),
(73, 71, 1),
(74, 72, 2),
(75, 73, 3),
(76, 74, 4),
(77, 75, 5),
(78, 76, 6),
(79, 77, 7),
(80, 78, 1),
(81, 79, 2),
(82, 80, 3),
(83, 81, 4),
(84, 82, 5),
(85, 83, 6),
(86, 84, 7),
(87, 85, 1),
(88, 86, 2),
(89, 87, 3),
(90, 88, 4),
(91, 89, 5),
(92, 90, 6),
(93, 91, 7),
(94, 92, 1),
(95, 93, 2),
(96, 94, 3),
(97, 95, 4),
(98, 96, 5),
(99, 97, 6),
(100, 98, 7),
(101, 99, 1),
(102, 2, 3),
(103, 2, 4),
(104, 3, 6),
(105, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `GAME_REVIEW`
--

CREATE TABLE `GAME_REVIEW` (
  `ID` int(4) UNSIGNED NOT NULL,
  `Rating` tinyint(3) UNSIGNED DEFAULT NULL,
  `Review` varchar(254) DEFAULT NULL,
  `MemberID` int(10) UNSIGNED NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `GAME_REVIEW`
--

INSERT INTO `GAME_REVIEW` (`ID`, `Rating`, `Review`, `MemberID`, `GameID`) VALUES
(1, 10, 'It was really good. ', 1, 1),
(2, 1, 'I didn\'t like it. ', 2, 2),
(3, 2, 'It was broken. ', 3, 5),
(4, 9, 'I hope they make a sequel. ', 4, 9),
(5, 1, 'Ruined the family holiday. ', 5, 10),
(6, 10, 'Turns out I\'m a strategy genius.', 6, 12),
(7, 9, 'So fun.', 7, 14),
(8, 2, 'Who ever thought this would be a good game.', 8, 16),
(9, 4, 'It was okay.', 9, 20),
(10, 3, 'So boring.', 10, 22),
(11, 1, 'Ended in tears. ', 11, 23),
(12, 1, 'Ended in divorce.', 12, 25),
(13, 8, 'Brought us all closer.', 13, 22),
(14, 7, 'A real bonding experience. ', 14, 1),
(15, 4, 'Wouldn\'t get again.', 15, 2),
(16, 7, 'Great playing a pandemic game with all the news, felt I could take on the Coronavirus myself!', 1, 1),
(17, 8, 'Loads of fun', 2, 2),
(18, 8, 'Loved this game', 3, 5),
(19, 9, 'Almost perfect - shame it had to end', 4, 9),
(20, 10, 'THE BEST GAME EVER!!', 5, 10),
(21, 5, 'Very average, not awful, just meh', 6, 12),
(22, 6, 'Bit too young for us', 7, 14),
(23, 7, 'Great activity for a rainy weekend in Wales', 8, 16),
(24, 8, 'Daughter loved it!', 9, 20),
(25, 7, 'We played it 15 times in a weekend, addictive', 10, 22),
(26, 3, 'Fun for all the family, even grandma!', 11, 23),
(27, 5, 'Game wasn\'t as new as advertised, but still fun.', 12, 25),
(28, 4, 'Don\'t bother! Finished it in 15 minutes.', 13, 20),
(29, 2, 'Almost as boring as lord of the rings.', 14, 22),
(30, 7, 'Great fun, kids and adults had a great time.', 15, 23),
(31, 5, 'Took a bit too long and was quite confusing, but ok once you got into it.', 1, 25),
(32, 3, 'Very offensive, not one for Chruch Group', 2, 22),
(33, 6, 'Wasn\'t very authentic but good fun all the same.', 3, 1),
(34, 10, 'Better than the Twilight films!', 4, 2),
(35, 4, 'Felt a bit too close to home playing a Pandemic game as Italians', 5, 1),
(36, 4, 'Boring.', 6, 2),
(37, 6, 'Ok, felt a bit long.', 7, 5),
(38, 6, 'Not as good as the reviews said.', 8, 9),
(39, 10, 'GREAT GAME!!', 9, 20),
(40, 10, 'Loved it, challenging but we got the hang of it and played it all night.', 10, 22),
(41, 9, 'Great, would reccomend.', 11, 23),
(42, 10, 'Loved it, sad we have to return it.', 12, 25),
(43, 6, 'Good fun, better suited for those with children.', 13, 22),
(44, 8, 'Really great gameplay.', 14, 1),
(45, 8, 'Best game we\'ve bought in ages, condition was a bit worn.', 15, 2),
(46, 2, 'This game was NOT NEW!', 1, 1),
(47, 4, 'Really good quality, shame the game was dull.', 2, 2),
(48, 10, 'We all loved it and have bought it off Amazon.', 3, 5),
(49, 2, 'Returned as faulty - never got to try the game.', 4, 9),
(50, 5, 'Was a bit too grown up for my kid\'s 4th birthday.', 5, 1);

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
  `AddressLine` varchar(100) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Postcode` varchar(8) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `EmailAddress` varchar(254) NOT NULL,
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
-- Indexes for table `BORROW_HISTORY`
--
ALTER TABLE `BORROW_HISTORY`
  ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `GAME_CATEGORY_LINK`
--
ALTER TABLE `GAME_CATEGORY_LINK`
  ADD PRIMARY KEY (`Category_to_game_ID`);

--
-- Indexes for table `GAME_REVIEW`
--
ALTER TABLE `GAME_REVIEW`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT for table `BORROW_HISTORY`
--
ALTER TABLE `BORROW_HISTORY`
  MODIFY `RecordID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `EMPLOYEES`
--
ALTER TABLE `EMPLOYEES`
  MODIFY `EmployeeID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1243;

--
-- AUTO_INCREMENT for table `GAME_CATEGORY_LINK`
--
ALTER TABLE `GAME_CATEGORY_LINK`
  MODIFY `Category_to_game_ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `GAME_REVIEW`
--
ALTER TABLE `GAME_REVIEW`
  MODIFY `ID` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
