-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 05, 2020 at 01:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

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
  `NoLongerPlayable` enum('Y','N') NOT NULL DEFAULT 'Y',
  `Available` enum('Y','N') NOT NULL DEFAULT 'Y',
  `CategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `BORROW_HISTORY`
--

CREATE TABLE `BORROW_HISTORY` (
  `RecordID` int(10) UNSIGNED NOT NULL,
  `BorrowedDate` int(10) NOT NULL,
  `ReturnDate` int(10) NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL,
  `MemberID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `LinkID` tinyint(3) UNSIGNED NOT NULL,
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
  `Rating` tinyint(3) UNSIGNED DEFAULT NULL,
  `Review` varchar(254) DEFAULT NULL,
  `MemberID` int(10) UNSIGNED NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `GAME_CATEGORY`
--
ALTER TABLE `GAME_CATEGORY`
  ADD PRIMARY KEY (`LinkID`);

--
-- Indexes for table `GAME_CATEGORY_LINK`
--
ALTER TABLE `GAME_CATEGORY_LINK`
  ADD PRIMARY KEY (`Category_to_game_ID`);

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
  MODIFY `RecordID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
