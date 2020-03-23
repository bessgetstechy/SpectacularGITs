-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2020 at 03:39 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

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


CREATE TABLE `board_games` (
  `GameID` int(10) UNSIGNED NOT NULL,
  `ThumbnailLink` text,
  `Title` text NOT NULL,
  `MinPlayers` tinyint(2) UNSIGNED DEFAULT NULL,
  `MaxPlayers` smallint(5) UNSIGNED DEFAULT NULL,
  `BestPlayers` smallint(5) UNSIGNED DEFAULT NULL,
  `MinAge` tinyint(3) UNSIGNED DEFAULT NULL,
  `PlayTime` smallint(5) UNSIGNED DEFAULT NULL,
  `GameMechanics` enum('Board','Dice','Cards','Memory','Other') NOT NULL,
  `Publisher` varchar(255) NOT NULL,
  `YearMade` smallint(5) UNSIGNED NOT NULL,
  `Rating` float(3,2) UNSIGNED DEFAULT NULL,
  `NoUsersRated` int(11) UNSIGNED DEFAULT NULL,
  `DifficultyRating` enum('Beginner','Intermediate','Expert') NOT NULL,
  `Quality` enum('New','Used - like new','Used - very good','Used - good','Used - Acceptable','Used - Missing pieces') DEFAULT 'New',
  `Playable` enum('Y','N') DEFAULT 'Y',
  `Available` enum('Y','N') DEFAULT 'Y',
  `CategoryName` varchar(255) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `board_games`
--

INSERT INTO `board_games` (`GameID`, `ThumbnailLink`, `Title`, `MinPlayers`, `MaxPlayers`, `BestPlayers`, `MinAge`, `PlayTime`, `GameMechanics`, `Publisher`, `YearMade`, `Rating`, `NoUsersRated`, `DifficultyRating`, `Quality`, `Playable`, `Available`, `CategoryName`, `DateAdded`) VALUES
(1, 'https://images-na.ssl-images-amazon.com/images/I/61rvNPPum1L._AC_SY400_.jpg', 'Pandemic Legacy: Season 1', 2, 4, 4, 13, 60, 'Board', 'Z-Man Games', 2015, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Strategy', '2020-03-01'),
(2, 'https://cdn.shopify.com/s/files/1/0800/4331/products/Twilight_Struggle_grande.jpg?v=1552754194', 'Twilight Struggle', 2, 2, 2, 13, 180, 'Board', 'GMT Games', 2005, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Wargame', '2020-03-07'),
(3, 'https://scale.coolshop-cdn.com/product-media.coolshop-cdn.com/AE7R6F/bd553b5d883b4cc899821bbc110b5e16.jpg/f/terra-mystica-braetspil-engelsk.jpg', 'Terra Mystica', 2, 5, 4, 12, 150, 'Board', 'Feuerland Spiele', 2012, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Strategy', '2020-03-01'),
(4, 'https://cdn.shopify.com/s/files/1/1381/2481/products/canva-photo-editor_3.png?v=1571306900', 'Caverna: The Cave Farmers', 1, 7, 4, 12, 210, 'Board', 'Lookout Games', 2013, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Animals', '2020-03-01'),
(5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQamBud2cZxqc31GM9QZVn2zuihYlKS459ZeQt94qE4A0Jr6GzD', 'Through the Ages: A Story of Civilization', 2, 4, 3, 12, 240, 'Dice', 'Czech Board Games', 2006, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Civilization', '2020-03-01'),
(6, 'https://img.grouponcdn.com/stores/3iUAhmjfuXN4x3WzM3u8eXcz4j4x/storespi1566741-1000x600/v1/c700x420.jpg', 'Puerto Rico', 2, 5, 4, 12, 150, 'Board', 'Ravensburger ', 2002, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'City Building', '2020-03-02'),
(7, 'https://images-na.ssl-images-amazon.com/images/I/91QYEiZW0iL._AC_SY679_.jpg', 'Agricola', 1, 5, 4, 12, 150, 'Memory', 'Lookout Games', 2007, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Strategy', '2020-03-02'),
(8, 'https://cdn11.bigcommerce.com/s-ohr394tcms/images/stencil/1280x1280/products/69407/159123/81ALqSnd1QL._AC_SL1500___98134.1578571521.jpg?c=1&imbypass=on', 'The Castles of Burgundy', 2, 4, 2, 12, 90, 'Board', 'alea', 2011, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Economic', '2020-03-02'),
(9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQU0GbS3gf1mqJ7pdL59SxXs5E5Kq5lQ9fEyJgdyi8pKnvebSEW', 'Mage Knight Board Game', 1, 4, 2, 14, 150, 'Dice', 'WizKids Games', 2011, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Role Playing', '2020-03-02'),
(10, 'https://images-na.ssl-images-amazon.com/images/I/6118P6WA-zL._AC_.jpg', 'Star Wars: Imperial Assault', 2, 5, 5, 14, 120, 'Board', 'Asterion Press', 2014, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Fantasy', '2020-03-07'),
(11, 'https://images-na.ssl-images-amazon.com/images/I/519CVRT008L._AC_SX466_.jpg', 'Android: Netrunner', 2, 2, 2, 14, 45, 'Dice', 'Z-Man Games', 2012, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Space', '2020-03-02'),
(12, 'https://i.ebayimg.com/images/g/bAwAAOSwudBdM12g/s-l600.jpg', 'Eclipse', 2, 6, 4, 14, 200, 'Cards', 'GMT Games', 2011, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Space', '2020-03-07'),
(13, 'https://images-na.ssl-images-amazon.com/images/I/918rhIM6GRL._AC_SX425_.jpg', 'Power Grid', 2, 6, 4, 12, 120, 'Board', 'Feuerland Spiele', 2004, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Strategy', '2020-03-07'),
(14, 'https://images-na.ssl-images-amazon.com/images/I/61cQ2uW5yEL._SL1000_.jpg', 'War of the Ring (second edition)', 2, 4, 2, 13, 150, 'Dice', 'Lookout Games', 2012, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Wargame', '2020-03-02'),
(15, 'https://images-na.ssl-images-amazon.com/images/I/81lmPZm3XEL._SL1500_.jpg', '7 Wonders', 2, 2, 2, 10, 30, 'Board', 'Czech Board Games', 2015, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Civilization', '2020-03-07'),
(16, 'https://images-na.ssl-images-amazon.com/images/I/71l3a3QT0yL._SL1500_.jpg', 'Robinson Crusoe: Adventures on the Cursed Island', 1, 4, 3, 14, 180, 'Board', 'Ravensburger ', 2012, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-06'),
(17, 'https://images-na.ssl-images-amazon.com/images/I/51QkyYS%2B98L._SL500_AC_SS350_.jpg', 'Brass', 3, 4, 4, 13, 180, 'Dice', 'Lookout Games', 2007, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Economic', '2020-03-06'),
(18, 'https://www.board-game.co.uk/wp-content/uploads/2017/02/Le-Havre-2.jpg', 'Le Havre', 1, 5, 3, 12, 200, 'Board', 'alea', 2008, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Economic', '2020-03-07'),
(19, 'https://images-na.ssl-images-amazon.com/images/I/71ZHkM7fHwL._AC_SL1000_.jpg', 'Codenames', 2, 8, 6, 14, 15, 'Cards', 'WizKids Games', 2015, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Spy', '2020-03-07'),
(20, 'https://images-na.ssl-images-amazon.com/images/I/71x3%2Bjw3khL._AC_SY450_.jpg', 'Tzolk\'in: The Mayan Calendar', 2, 4, 4, 13, 90, 'Board', 'Asterion Press', 2012, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Economic', '2020-03-07'),
(21, 'https://images-na.ssl-images-amazon.com/images/I/61MfnA37PKL._AC_SL1001_.jpg', 'Dead of Winter: A Crossroads Game', 2, 5, 4, 14, 210, 'Cards', 'Z-Man Games', 2014, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Survival', '2020-03-07'),
(22, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfM-j7-4XxS_da8qXkWcKdkwJqJ-eszTNEYg3ChiQ5Lh7AUKmVeg&s', 'Through the Ages: A New Story of Civilization', 2, 4, 3, 14, 240, 'Dice', 'GMT Games', 2015, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Civilization', '2020-03-07'),
(23, 'https://images-na.ssl-images-amazon.com/images/I/81pxNt1mY-L._SL1500_.jpg', 'Blood Rage', 2, 4, 4, 13, 90, 'Dice', 'Feuerland Spiele', 2015, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Wargame', '2020-03-07'),
(24, 'https://images-na.ssl-images-amazon.com/images/I/61Ew47ufr-L._SL1000_.jpg', 'Caylus', 2, 5, 3, 12, 150, 'Board', 'Czech Board Games', 2005, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Civilization', '2020-03-07'),
(25, 'https://cdn.shopify.com/s/files/1/0270/5480/1005/products/510yJMhB2mL_1024x1024.jpg?v=1572683962', 'Keyflower', 2, 6, 4, 12, 120, 'Board', 'Ravensburger ', 2012, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Economic', '2020-03-07'),
(26, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxg0kO9xSsGFPY5Rh3aKqRkhPWBwS-_1_jPKcwXma7gg2vAJct5Q&s', 'Dominion: Intrigue', 2, 4, 3, 13, 30, 'Board', 'Lookout Games', 2009, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Detective', '2020-03-07'),
(27, 'https://images-na.ssl-images-amazon.com/images/I/71jvwVl7cCL._SL1000_.jpg', 'Dominant Species', 2, 6, 4, 14, 240, 'Board', 'alea', 2010, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Fantasy', '2020-03-07'),
(28, 'https://images-na.ssl-images-amazon.com/images/I/61ZpTXnZKmL.jpg', 'Eldritch Horror', 1, 8, 4, 14, 240, 'Dice', 'WizKids Games', 2013, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Horror', '2020-03-07'),
(29, 'https://images-na.ssl-images-amazon.com/images/I/81JCwR9wkmL._SL1500_.jpg', 'Star Wars: X-Wing Miniatures Game', 2, 4, 2, 14, 45, 'Cards', 'Asterion Press', 2012, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Fantasy', '2020-03-07'),
(30, 'https://images-na.ssl-images-amazon.com/images/I/815TUZmxgyL._SL1500_.jpg', 'Race for the Galaxy: The Gathering Storm', 2, 4, 2, 12, 60, 'Board', 'Z-Man Games', 2007, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Space', '2020-03-09'),
(31, 'https://images-na.ssl-images-amazon.com/images/I/91d2joz5fqL._SL1500_.jpg', 'El Grande', 2, 5, 5, 12, 120, 'Dice', 'GMT Games', 1995, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Civilization', '2020-03-09'),
(32, 'https://images-na.ssl-images-amazon.com/images/I/51j8wb1wWVL.jpg', 'Twilight Imperium (Third Edition)', 3, 6, 6, 12, 240, 'Board', 'Feuerland Spiele', 2005, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Horror', '2020-03-09'),
(33, 'https://cdn.shopify.com/s/files/1/0921/7330/products/1_b15480a9-cde0-4e6f-af64-60bc322e8a46_1024x1024.JPG?v=1528540751', 'Lords of Waterdeep', 2, 5, 4, 12, 120, 'Board', 'Lookout Games', 2012, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Economic', '2020-03-09'),
(34, 'https://images-na.ssl-images-amazon.com/images/I/81LLUVpgb0L._SL1500_.jpg', 'Roll for the Galaxy', 2, 5, 4, 13, 45, 'Dice', 'Czech Board Games', 2014, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Space', '2020-03-09'),
(35, 'https://images-na.ssl-images-amazon.com/images/I/71eh6fPWZlL._SL1115_.jpg', 'Battlestar Galactica', 3, 6, 5, 10, 240, 'Cards', 'Ravensburger ', 2008, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Space', '2020-03-09'),
(36, 'https://images-na.ssl-images-amazon.com/images/I/81vyiJm8SmL._SL1500_.jpg', 'Five Tribes', 1, 4, 2, 13, 80, 'Board', 'Lookout Games', 2014, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Civilization', '2020-03-09'),
(37, 'https://images-na.ssl-images-amazon.com/images/I/81dMVC551jL._SL1500_.jpg', 'Dominion', 2, 4, 3, 13, 30, 'Dice', 'alea', 2008, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Adventure', '2020-03-09'),
(38, 'https://images-na.ssl-images-amazon.com/images/I/81BobvyYtPL._SL1061_.jpg', 'Tigris & Euphrates', 2, 4, 4, 12, 90, 'Cards', 'WizKids Games', 1997, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'City Building', '2020-03-09'),
(39, 'https://images-na.ssl-images-amazon.com/images/I/71pdB5D3XKL._SL1159_.jpg', 'The Resistance: Avalon', 5, 10, 8, 13, 30, 'Board', 'Asterion Press', 2012, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Wargame', '2020-03-09'),
(40, 'https://images.zmangames.com/filer_public/1a/3d/1a3d7542-cb1a-4bc6-b21c-ec94f1ebee3e/zm7590_box_front.png', 'The Voyages of Marco Polo', 2, 4, 4, 12, 100, 'Dice', 'Z-Man Games', 2015, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'City Building', '2020-03-09'),
(41, 'https://images-na.ssl-images-amazon.com/images/I/61cQ2uW5yEL._SL1000_.jpg', 'War of the Ring (first edition)', 2, 4, 2, 12, 180, 'Cards', 'GMT Games', 2004, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Wargame', '2020-03-09'),
(42, 'https://images-na.ssl-images-amazon.com/images/I/91Cgq7cGmdL._SL1500_.jpg', 'Patchwork', 2, 2, 2, 8, 30, 'Memory', 'Feuerland Spiele', 2014, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Strategy', '2020-03-09'),
(43, 'https://images-na.ssl-images-amazon.com/images/I/81oPItAnpGL._SL1279_.jpg', 'Castles of Mad King Ludwig', 1, 4, 4, 13, 90, 'Board', 'Lookout Games', 2014, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Adventure', '2020-03-09'),
(44, 'https://images-na.ssl-images-amazon.com/images/I/71AdsoGQ9aL._SL1342_.jpg', 'Concordia', 2, 5, 4, 13, 100, 'Board', 'Czech Board Games', 2013, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Political', '2020-03-09'),
(45, 'https://images-na.ssl-images-amazon.com/images/I/81M84IL07VL._SL1500_.jpg', 'Trajan', 2, 4, 4, 12, 90, 'Board', 'Ravensburger ', 2011, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Civilization', '2020-03-09'),
(46, 'https://images-na.ssl-images-amazon.com/images/I/41JvwtabEPL.jpg', 'T.I.M.E Stories', 2, 4, 4, 12, 90, 'Memory', 'Lookout Games', 2015, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Space', '2020-03-09'),
(47, 'https://images-na.ssl-images-amazon.com/images/I/91X%2BRwvyfNL._SL1500_.jpg', 'Russian Railroads', 2, 4, 4, 12, 120, 'Board', 'alea', 2013, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Economic', '2020-03-09'),
(48, 'https://images-na.ssl-images-amazon.com/images/I/814F5EyoMoL._SL1500_.jpg', 'Pandemic', 2, 4, 4, 8, 90, 'Board', 'WizKids Games', 2008, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Strategy', '2020-03-09'),
(49, 'https://images-na.ssl-images-amazon.com/images/I/71IbTD5%2BkGL._SL1000_.jpg', 'Plague Inc.', 2, 4, 2, 8, 60, 'Board', 'Ndemic Creations', 2017, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Strategy', '2020-03-09'),
(50, 'https://images-na.ssl-images-amazon.com/images/I/61Dh-B5RjhL.jpg', 'A Game of Thrones: The Board Game (Second Edition)', 3, 6, 6, 14, 240, 'Board', 'Z-Man Games', 2011, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'TV/Film', '2020-03-10'),
(51, 'https://images-na.ssl-images-amazon.com/images/I/6170ECLB%2BiL.jpg', 'Descent: Journeys in the Dark (Second Edition)', 2, 5, 5, 14, 120, 'Board', 'GMT Games', 2012, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Adventure', '2020-03-10'),
(52, 'https://images-na.ssl-images-amazon.com/images/I/91OPWEX9PCL._SY879_.jpg', 'Troyes', 2, 4, 3, 12, 90, 'Dice', 'Feuerland Spiele', 2010, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Civilization', '2020-03-10'),
(53, 'https://images-na.ssl-images-amazon.com/images/I/81tVtpW1kjL._SL1500_.jpg', 'Nations', 1, 5, 3, 14, 200, 'Board', 'Lookout Games', 2013, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Civilization', '2020-03-10'),
(54, 'https://images-na.ssl-images-amazon.com/images/I/81mIkXtk3LL._SL1500_.jpg', 'Risk: Game of Thrones', 2, 7, 4, 13, 180, 'Board', 'USAopoly', 2017, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Strategy', '2020-03-10'),
(55, 'https://images-na.ssl-images-amazon.com/images/I/618CpWH3QoL.jpg', 'Mage Wars Arena', 2, 2, 2, 13, 90, 'Cards', 'Ravensburger ', 2012, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Battle', '2020-03-10'),
(56, 'https://images-na.ssl-images-amazon.com/images/I/91utEiBrPwL._SL1500_.jpg', 'Orl?ans', 2, 4, 4, 12, 90, 'Cards', 'Lookout Games', 2014, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Civilization', '2020-03-10'),
(57, 'https://images-na.ssl-images-amazon.com/images/I/712qhFTnFRL._SL1241_.jpg', 'Stone Age', 2, 4, 4, 10, 90, 'Cards', 'alea', 2008, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-10'),
(58, 'https://images-na.ssl-images-amazon.com/images/I/71xpoAtLMzL._SL1500_.jpg', 'Quick And Dirty', 2, 20, 8, 17, 20, 'Cards', 'Quick and Dirty', 2017, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Adult', '2020-03-10'),
(59, 'https://images-na.ssl-images-amazon.com/images/I/71C%2BUbh1X7L._SL1289_.jpg', 'Suburbia', 1, 4, 3, 8, 90, 'Board', 'Asterion Press', 2012, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Economic', '2020-03-10'),
(60, 'https://images-na.ssl-images-amazon.com/images/I/51qMXocAQzL.jpg', 'Sherlock Holmes Consulting Detective', 1, 8, 2, 10, 120, 'Board', 'Z-Man Games', 1981, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Detective', '2020-03-10'),
(61, 'https://images-na.ssl-images-amazon.com/images/I/718AYbKcKhL._SL1000_.jpg', 'Legendary Encounters: An Alien Deck Building Game', 1, 5, 3, 17, 45, 'Board', 'Feuerland Spiele', 2014, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Fantasy', '2020-03-10'),
(62, 'https://images-na.ssl-images-amazon.com/images/I/81daYOwPDIL._SL1500_.jpg', 'Alchemists', 2, 4, 4, 14, 120, 'Dice', 'Lookout Games', 2014, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Fantasy', '2020-03-10'),
(63, 'https://images-na.ssl-images-amazon.com/images/I/813ZO-iNIyL._SL1500_.jpg', 'Star Realms', 2, 2, 2, 12, 20, 'Memory', 'Czech Board Games', 2014, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Space', '2020-03-10'),
(64, 'https://images-na.ssl-images-amazon.com/images/I/71uY1JtSJsL._SL1500_.jpg', 'Kemet', 2, 5, 4, 13, 120, 'Dice', 'Lookout Games', 2012, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-10'),
(65, 'https://images-na.ssl-images-amazon.com/images/I/91fkNzakHfL._SL1500_.jpg', 'Railways of the World', 2, 6, 5, 10, 120, 'Cards', 'alea', 2005, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Economic', '2020-03-10'),
(66, 'https://images-na.ssl-images-amazon.com/images/I/51ly62yg69L.jpg', 'Steam Park', 3, 5, 4, 10, 90, 'Board', 'Asterion Press', 2009, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Economic', '2020-03-10'),
(67, 'https://images-na.ssl-images-amazon.com/images/I/71DEZ6qjFkL._SL1100_.jpg', 'Chaos in the Old World', 3, 4, 4, 13, 120, 'Memory', 'Z-Man Games', 2009, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'World War I', '2020-03-10'),
(68, 'https://images-na.ssl-images-amazon.com/images/I/71YsXdBVaVL._SL1054_.jpg', 'Ticket to Ride: Europe', 2, 5, 4, 8, 60, 'Dice', 'Feuerland Spiele', 2005, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Economic', '2020-03-10'),
(69, 'https://images-na.ssl-images-amazon.com/images/I/613n3Gky43L._SL1024_.jpg', 'Splendor', 2, 4, 3, 10, 30, 'Dice', 'Ravensburger ', 2014, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Action', '2020-03-10'),
(70, 'https://images-na.ssl-images-amazon.com/images/I/91oWzz%2BNCKL._SL1500_.jpg', 'Cosmic Encounter', 3, 5, 5, 12, 120, 'Cards', 'Lookout Games', 2008, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Space', '2020-03-10'),
(71, 'https://images-na.ssl-images-amazon.com/images/I/91ZtO2M6LUL._SL1500_.jpg', 'Viticulture', 2, 6, 3, 13, 90, 'Board', 'alea', 2013, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Adventure', '2020-03-10'),
(72, 'https://images-na.ssl-images-amazon.com/images/I/71HVFNiW76L._SL1200_.jpg', 'Summoner Wars: Master Set', 2, 4, 2, 9, 30, 'Dice', 'WizKids Games', 2011, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Wargame', '2020-03-10'),
(73, 'https://images-na.ssl-images-amazon.com/images/I/61XzrfTuNHL.jpg', 'Imperial Settlers', 1, 4, 2, 10, 90, 'Board', 'Z-Man Games', 2014, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Civilization', '2020-03-10'),
(74, 'https://images-na.ssl-images-amazon.com/images/I/71vcfZIlXQL._SL1265_.jpg', 'Tichu', 3, 10, 4, 10, 60, 'Dice', 'GMT Games', 1991, 0.00, 0, 'Beginner', 'Used - like new', 'Y', 'Y', 'Bluffing', '2020-03-10'),
(75, 'https://images-na.ssl-images-amazon.com/images/I/A11E7WvlwBL._SL1500_.jpg', 'The Lord of the Rings: The Card Game', 1, 4, 2, 13, 60, 'Cards', 'Feuerland Spiele', 2011, 0.00, 0, 'Intermediate', 'Used - very good', 'Y', 'Y', 'TV/Film', '2020-03-10'),
(76, 'https://images-na.ssl-images-amazon.com/images/I/81%2BLs%2BCfC-L._SL1500_.jpg', 'Village', 2, 4, 4, 12, 90, 'Cards', 'Ravensburger ', 2011, 0.00, 0, 'Intermediate', 'Used - good', 'Y', 'Y', 'City Building', '2020-03-10'),
(77, 'https://images-na.ssl-images-amazon.com/images/I/61Ro1-IPnRL._SL1000_.jpg', 'Ticket to Ride: Nordic Countries', 2, 3, 3, 8, 60, 'Dice', 'alea', 2007, 0.00, 0, 'Beginner', 'Used - good', 'Y', 'Y', 'Family', '2020-03-10'),
(78, 'https://images-na.ssl-images-amazon.com/images/I/A1SD-UDU7NL._SL1500_.jpg', 'Runewars', 2, 4, 4, 14, 180, 'Cards', 'WizKids Games', 2010, 0.00, 0, 'Intermediate', 'Used - good', 'Y', 'Y', 'History', '2020-03-10'),
(79, 'https://images-na.ssl-images-amazon.com/images/I/81kMQEV3%2BJL._SL1500_.jpg', 'Shogun', 3, 5, 4, 12, 150, 'Board', 'Asterion Press', 2006, 0.00, 0, 'Expert', 'Used - Acceptable', 'Y', 'Y', 'Wargame', '2020-03-10'),
(80, 'https://images-na.ssl-images-amazon.com/images/I/81dymvItddL._SL1500_.jpg', 'Arcadia Quest', 2, 4, 4, 13, 60, 'Dice', 'Z-Man Games', 2014, 0.00, 0, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Adventure', '2020-03-11'),
(81, 'https://images-na.ssl-images-amazon.com/images/I/71F6XyOZfiL._SL1000_.jpg', 'Space Alert', 1, 5, 4, 12, 30, 'Memory', 'GMT Games', 2008, 0.00, 0, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Space', '2020-03-11'),
(82, 'https://images-na.ssl-images-amazon.com/images/I/81C4v0qlsTL._SL1500_.jpg', 'La Granja', 1, 4, 3, 12, 120, 'Dice', 'Lookout Games', 2014, 0.00, 0, 'Beginner', 'Used - Acceptable', 'Y', 'Y', 'Educational', '2020-03-11'),
(83, 'https://images-na.ssl-images-amazon.com/images/I/61yX5d7PYAL.jpg', 'Imperial', 2, 6, 4, 13, 180, 'Cards', 'Czech Board Games', 2006, 0.00, 0, 'Intermediate', 'Used - Acceptable', 'Y', 'Y', 'Fantasy', '2020-03-11'),
(84, 'https://images-na.ssl-images-amazon.com/images/I/81bLWZK-RNL._SL1500_.jpg', 'Ticket to Ride', 2, 5, 4, 8, 60, 'Memory', 'Ravensburger ', 2004, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Farming', '2020-03-11'),
(85, 'https://images-na.ssl-images-amazon.com/images/I/61ZL-IOIeHL._SL1024_.jpg', 'Jaipur', 2, 2, 2, 12, 30, 'Memory', 'Lookout Games', 2009, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Fighting', '2020-03-11'),
(86, 'https://images-na.ssl-images-amazon.com/images/I/91kVsbpPdkL._SL1500_.jpg', 'Dungeon Petz', 2, 4, 4, 13, 90, 'Memory', 'alea', 2011, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Grid Movement', '2020-03-11'),
(87, 'https://images-na.ssl-images-amazon.com/images/I/91r4cW9taLL._SL1500_.jpg', 'Istanbul', 2, 5, 4, 10, 60, 'Dice', 'WizKids Games', 2014, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(89, 'https://vignette.wikia.nocookie.net/rulebook/images/4/49/Monopoly.jpg/revision/latest/scale-to-width-down/340?cb=20121230024934', 'Monopoly', 2, 6, 4, 8, 60, 'Board', 'Hasbro', 2004, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Property', '2020-03-11'),
(90, 'https://images-na.ssl-images-amazon.com/images/I/71QAHYplT6L._SX425_.jpg', 'Monopoly: Millennial Edition', 2, 6, 4, 8, 60, 'Board', 'Hasbro', 2019, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Property', '2020-03-11'),
(91, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT-awVZqK2oG1Z9RqudRMSNSw07S6UlN7_xJXrlBFLsZSHubB6QQMQ&usqp=Cac', 'Scrabble', 2, 4, 2, 12, 60, 'Board', 'Mattel', 2002, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Word', '2020-03-11'),
(92, 'https://images-na.ssl-images-amazon.com/images/I/91wWOu4f4JL._SL1500_.jpg', 'Risk', 2, 4, 4, 4, 90, 'Board', 'Hasbro', 2012, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Strategy', '2020-03-11'),
(93, 'https://images-na.ssl-images-amazon.com/images/I/71LeXIucWnL._SL1024_.jpg', 'Boggle', 1, 8, 4, 8, 20, 'Other', 'Hasbro', 2013, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Word', '2020-03-11'),
(94, 'https://target.scene7.com/is/image/Target/GUEST_8503e7b9-c167-46f5-a556-488ef71a90fa?wid=488&hei=488&fmt=pjpeg', 'Uno', 2, 10, 4, 7, 20, 'Cards', 'Mattel', 2010, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Party Game', '2020-03-11'),
(95, 'https://images-na.ssl-images-amazon.com/images/I/71yp2-Y12LL._SL1500_.jpg', 'Scrabble Junior', 2, 4, 4, 6, 60, 'Board', 'Mattel', 2013, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Word', '2020-03-11'),
(96, 'https://johnlewis.scene7.com/is/image/JohnLewis/238038429?$rsp-pdp-port-1080$', 'Cards Against Humanity', 4, 20, 8, 17, 30, 'Cards', 'Cards Against Humanity', 2016, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Party Game', '2020-03-11'),
(97, 'https://images-na.ssl-images-amazon.com/images/I/91dtt4NiicL._SL1500_.jpg', 'The Game of Life', 2, 4, 4, 8, 60, 'Board', 'Hasbro', 2009, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(98, 'https://images-na.ssl-images-amazon.com/images/I/810bBCmZ9LL._SL1425_.jpg', 'Trivial Pursuit', 2, 4, 4, 16, 60, 'Board', 'Hasbro', 2012, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Quiz', '2020-03-11'),
(99, 'https://images-na.ssl-images-amazon.com/images/I/91FUEVnjT4L._SL1500_.jpg', 'Cluedo', 2, 4, 4, 12, 90, 'Board', 'Hasbro', 2009, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Detective', '2020-03-11'),
(100, 'https://i.ebayimg.com/images/g/d10AAOSwF1hcpIh7/s-l300.jpg', 'Rummikub', 2, 4, 4, 8, 60, 'Board', 'Ephraim Hertzano', 2010, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Number', '2020-03-11'),
(101, 'https://images-na.ssl-images-amazon.com/images/I/51dpHnvLPmL.jpg', 'Battleship', 2, 2, 2, 7, 30, 'Board', 'Hasbro', 2013, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Wargame', '2020-03-11'),
(102, 'https://images-na.ssl-images-amazon.com/images/I/81ElYmjpV5L._SL1500_.jpg', 'Jenga', 2, 8, 4, 6, 20, 'Other', 'Hasbro', 2018, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Strategy', '2020-03-11'),
(103, 'https://images-na.ssl-images-amazon.com/images/I/91cpdEOYabL._SL1500_.jpg', 'Twister', 2, 4, 4, 12, 30, 'Other', 'Hasbro', 2009, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Party Game', '2020-03-11'),
(104, 'https://images-na.ssl-images-amazon.com/images/I/811TiElBuML._SL1500_.jpg', 'Connect 4', 2, 4, 4, 8, 30, 'Other', 'Hasbro', 2002, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(105, 'https://images-na.ssl-images-amazon.com/images/I/91%2B1WPgQyhL._SL1500_.jpg', 'Operation', 1, 4, 4, 4, 30, 'Board', 'Hasbro', 2006, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(106, 'https://digitalcontent.api.tesco.com/v2/media/ghs/2cab8531-d108-4928-8345-4b07ccebca20/snapshotimagehandler_812613376.jpeg?h=540&w=540', 'Frustration', 2, 4, 4, 8, 60, 'Board', 'Hasbro', 2008, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(107, 'https://images-na.ssl-images-amazon.com/images/I/A1mbXP1a0VL._SL1500_.jpg', 'Hungry Hungry Hippos', 2, 4, 4, 4, 15, 'Board', 'Hasbro', 2017, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(108, 'https://images-na.ssl-images-amazon.com/images/I/51QJcm3mJDL.jpg', 'Mouse Trap', 2, 4, 4, 6, 60, 'Board', 'Hasbro', 2001, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(109, 'https://images-na.ssl-images-amazon.com/images/I/91Bh9jUyRYL._SL1500_.jpg', 'Cranium', 4, 4, 4, 16, 60, 'Board', 'Hasbro', 2017, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(110, 'https://images-na.ssl-images-amazon.com/images/I/81NZ6o5W6hL._SL1500_.jpg', 'Articulate', 4, 20, 6, 12, 60, 'Board', 'Drumond Park', 2002, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(111, 'https://images-na.ssl-images-amazon.com/images/I/91Wa4-xnpwL._SL1500_.jpg', 'The Really Nasty Horse Racing Game', 2, 6, 4, 13, 60, 'Board', 'Rascals', 2013, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Betting', '2020-03-11'),
(112, 'https://images-na.ssl-images-amazon.com/images/I/619-DP2ub1L._AC_UL320_SR270,320_.jpg', 'Concept', 4, 12, 6, 12, 60, 'Board', 'Repos', 2014, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(113, 'https://images-na.ssl-images-amazon.com/images/I/517xpShIkOL.jpg', 'Super Mario Chess', 2, 2, 2, 8, 60, 'Board', 'USAopoly', 2009, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Logic', '2020-03-11'),
(114, 'https://images-na.ssl-images-amazon.com/images/I/81K-77bFI0L._SL1500_.jpg', 'Pictionary', 2, 4, 4, 12, 60, 'Board', 'Mattel', 2015, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(115, 'https://images-na.ssl-images-amazon.com/images/I/816dVZLI%2BsL._SL1500_.jpg', 'Axis & Allies', 2, 5, 5, 12, 60, 'Board', 'Avalon Hill', 2017, 0.00, 0, 'Expert', 'New', 'Y', 'Y', 'Wargame', '2020-03-11'),
(116, 'https://static.theworks.co.uk/images/5052089018501_Z.jpg', 'Snakes and Ladders', 2, 4, 4, 6, 30, 'Board', 'Luptons', 2008, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(117, 'https://johnlewis.scene7.com/is/image/JohnLewis/238051320?$rsp-pdp-port-640$', 'What Do You Meme?', 4, 20, 6, 17, 30, 'Cards', 'What Do You Meme', 2016, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(118, 'https://johnlewis.scene7.com/is/image/JohnLewis/238155599?$rsp-pdp-port-640$', 'Drunk, Stoned or Stupid', 4, 20, 6, 17, 30, 'Cards', 'DSS Games', 2015, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(119, 'https://johnlewis.scene7.com/is/image/JohnLewis/233496415?$rsp-pdp-port-1080$', 'Mr & Mrs: Family edition', 2, 8, 4, 10, 60, 'Board', 'Rascals', 2012, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(120, 'https://www.mattelgames.com/sites/mattel_games/files/2017-09/UNO-ColorADD_Side_web.jpg', 'Uno: Colorblind Accessible Edition', 2, 10, 4, 7, 15, 'Cards', 'Mattel', 2018, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(121, 'https://images-na.ssl-images-amazon.com/images/I/71UUDAPpKWL._SL1500_.jpg', 'Exploding Kittens', 5, 20, 6, 14, 30, 'Cards', 'The Oatmeal', 2015, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(122, 'https://images-na.ssl-images-amazon.com/images/I/61ZLYBlRXmL._SL1000_.jpg', 'Obama Llama 2: Family Board Game', 4, 20, 6, 14, 15, 'Cards', 'Big Potato', 2019, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(123, 'https://images-na.ssl-images-amazon.com/images/I/61EGFvJ%2BLjL._SL1000_.jpg', 'Weird Things Humans Search For', 3, 20, 6, 14, 20, 'Cards', 'Big Potato', 2018, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(124, 'https://images-na.ssl-images-amazon.com/images/I/715s5mCq7TL._SL1024_.jpg', 'Obama llama', 3, 20, 6, 14, 20, 'Cards', 'Big Potato', 2016, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(125, 'https://images-na.ssl-images-amazon.com/images/I/81pHMp%2ByebL._SL1500_.jpg', 'Stupid Deaths', 2, 6, 4, 12, 60, 'Board', 'University Games', 2018, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(126, 'https://images-na.ssl-images-amazon.com/images/I/71RFQ7fsy0L._SL1500_.jpg', 'What Do You Meme? Basic Expansion Pack', 4, 20, 6, 17, 30, 'Cards', 'What Do You Meme', 2017, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Humour', '2020-03-11'),
(127, 'https://images-na.ssl-images-amazon.com/images/I/71Vh35WiK3L._SL1500_.jpg', 'Rummikub Large Number Edition', 2, 4, 4, 8, 60, 'Board', 'Ephraim Hertzano', 2010, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Number', '2020-03-11'),
(128, 'https://images-na.ssl-images-amazon.com/images/I/51nDvRulkvL.jpg', 'Trivial Pursuit: Family Edition', 2, 6, 4, 4, 60, 'Board', 'Hasbro', 2014, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(129, 'https://images-na.ssl-images-amazon.com/images/I/81kTx%2BhNbYL._SL1500_.jpg', 'Jumanji', 2, 4, 4, 3, 60, 'Board', 'Jumanji', 2006, 0.00, 0, 'Beginner', 'New', 'Y', 'Y', 'Family', '2020-03-11'),
(130, 'https://johnlewis.scene7.com/is/image/JohnLewis/237635203?$rsp-pdp-port-640$', 'Monopoly: Cheaters Edition', 2, 6, 4, 8, 60, 'Board', 'Hasbro', 2018, 0.00, 0, 'Intermediate', 'New', 'Y', 'Y', 'Property', '2020-03-11');


-- --------------------------------------------------------

--
-- Table structure for table `borrow_history`
--

CREATE TABLE `borrow_history` (
  `RecordID` int(10) UNSIGNED NOT NULL,
  `BorrowedDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `GameID` int(10) UNSIGNED NOT NULL,
  `MemberID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow_history`
--

INSERT INTO `borrow_history` (`RecordID`, `BorrowedDate`, `DueDate`, `ReturnDate`, `GameID`, `MemberID`) VALUES
(1, '2020-02-02', '2020-02-09', '2020-02-09', 54, 1),
(2, '2020-02-02', '2020-02-09', '2020-02-09', 37, 2),
(3, '2020-02-02', '2020-02-09', '2020-02-09', 41, 3),
(4, '2020-02-02', '2020-02-09', '2020-02-09', 80, 4),
(5, '2020-02-03', '2020-02-10', '2020-02-10', 17, 5),
(6, '2020-02-03', '2020-02-10', '2020-02-10', 124, 2),
(7, '2020-02-03', '2020-02-10', '2020-02-10', 26, 2),
(8, '2020-02-04', '2020-02-11', '2020-02-11', 9, 3),
(9, '2020-02-04', '2020-02-11', '2020-02-11', 87, 3),
(10, '2020-02-04', '2020-02-11', '2020-02-11', 117, 7),
(11, '2020-02-21', '2020-02-28', '2020-02-28', 117, 4),
(12, '2020-02-21', '2020-02-28', '2020-02-28', 5, 4),
(13, '2020-02-21', '2020-02-28', '2020-02-28', 14, 4),
(14, '2020-02-28', '2020-03-06', '2020-03-06', 88, 4),
(15, '2020-02-28', '2020-03-06', '2020-03-06', 40, 11),
(16, '2020-02-28', '2020-03-06', '2020-03-06', 15, 4),
(17, '2020-02-28', '2020-03-06', '2020-03-06', 34, 5),
(18, '2020-02-28', '2020-03-06', '2020-03-06', 1, 5),
(19, '2020-02-28', '2020-03-06', '2020-03-06', 53, 5),
(20, '2020-02-28', '2020-03-06', '2020-03-06', 75, 5),
(21, '2020-02-28', '2020-03-06', '2020-03-06', 118, 5),
(22, '2020-03-01', '2020-03-08', '2020-03-08', 55, 5),
(23, '2020-03-01', '2020-03-08', '2020-03-08', 15, 5),
(24, '2020-03-01', '2020-03-08', '2020-03-08', 123, 5),
(25, '2020-03-01', '2020-03-08', '2020-03-08', 96, 5),
(26, '2020-03-02', '2020-03-09', '2020-03-09', 98, 5),
(27, '2020-03-02', '2020-03-09', '2020-03-09', 104, 5),
(28, '2020-03-02', '2020-03-09', '2020-03-09', 60, 5),
(29, '2020-03-02', '2020-03-09', '2020-03-09', 30, 5),
(30, '2020-03-02', '2020-03-09', '2020-03-09', 102, 2),
(31, '2020-03-02', '2020-03-09', '2020-03-09', 93, 3),
(32, '2020-03-02', '2020-03-09', '2020-03-09', 34, 8),
(33, '2020-03-02', '2020-03-09', '2020-03-09', 57, 7),
(34, '2020-03-02', '2020-03-09', '2020-03-09', 15, 5),
(35, '2020-03-03', '2020-03-10', '2020-03-10', 38, 5),
(36, '2020-03-03', '2020-03-10', '2020-03-10', 8, 5),
(37, '2020-03-03', '2020-03-10', '2020-03-10', 46, 13),
(38, '2020-03-03', '2020-03-10', '2020-03-10', 1, 5),
(39, '2020-03-03', '2020-03-10', '2020-03-10', 82, 5),
(40, '2020-03-03', '2020-03-10', '2020-03-10', 51, 5),
(41, '2020-03-03', '2020-03-10', '2020-03-10', 14, 3),
(42, '2020-03-03', '2020-03-10', '2020-03-10', 62, 5),
(43, '2020-03-03', '2020-03-10', '2020-03-10', 58, 10),
(44, '2020-03-04', '2020-03-11', NULL, 3, 1),
(45, '2020-03-04', '2020-03-11', NULL, 129, 5),
(46, '2020-03-04', '2020-03-11', NULL, 125, 11),
(47, '2020-03-04', '2020-03-11', NULL, 27, 14),
(48, '2020-03-04', '2020-03-11', NULL, 23, 15),
(49, '2020-03-04', '2020-03-11', NULL, 4, 3),
(50, '2020-03-04', '2020-03-11', NULL, 16, 15),
(51, '2020-03-04', '2020-03-11', NULL, 92, 5),
(52, '2020-03-04', '2020-03-11', NULL, 120, 6),
(53, '2020-03-04', '2020-03-11', NULL, 113, 1),
(54, '2020-03-04', '2020-03-11', NULL, 62, 13),
(55, '2020-03-05', '2020-03-12', NULL, 84, 11),
(56, '2020-03-05', '2020-03-12', NULL, 8, 2),
(57, '2020-03-05', '2020-03-12', NULL, 122, 10),
(58, '2020-03-05', '2020-03-12', NULL, 109, 6),
(59, '2020-03-05', '2020-03-12', NULL, 33, 5),
(60, '2020-03-05', '2020-03-12', NULL, 127, 5),
(61, '2020-03-05', '2020-03-12', NULL, 92, 5),
(62, '2020-03-05', '2020-03-12', NULL, 98, 11),
(63, '2020-03-05', '2020-03-12', NULL, 98, 10),
(64, '2020-03-05', '2020-03-12', NULL, 106, 4),
(65, '2020-03-05', '2020-03-12', NULL, 101, 7),
(66, '2020-03-05', '2020-03-12', NULL, 110, 3),
(67, '2020-03-05', '2020-03-12', NULL, 67, 12),
(68, '2020-06-05', '2020-06-12', NULL, 99, 14),
(69, '2020-06-05', '2020-06-12', NULL, 96, 5),
(70, '2020-06-05', '2020-06-12', NULL, 6, 2),
(71, '2020-06-05', '2020-06-12', NULL, 15, 8),
(72, '2020-06-05', '2020-06-12', NULL, 59, 7),
(73, '2020-06-05', '2020-06-12', NULL, 41, 1),
(74, '2020-06-05', '2020-06-12', NULL, 41, 12),
(75, '2020-06-05', '2020-06-12', NULL, 18, 6),
(76, '2020-06-05', '2020-06-12', NULL, 36, 13),
(77, '2020-06-05', '2020-06-12', NULL, 79, 3),
(78, '2020-06-05', '2020-06-12', NULL, 12, 15),
(79, '2020-06-05', '2020-06-12', NULL, 35, 2),
(80, '2020-06-05', '2020-06-12', NULL, 56, 13);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` smallint(5) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `AddressLine` varchar(100) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Postcode` varchar(8) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `EmailAddress` varchar(254) NOT NULL,
  `Password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `FirstName`, `LastName`, `AddressLine`, `Town`, `Postcode`, `PhoneNumber`, `EmailAddress`, `Password`) VALUES
(1, 'Amy', 'Artist', '1 Big House', 'Hull', 'LS11 5NS', '07702234546', 'test@email.com', 'Password1'),
(2, 'Bev', 'Baker', '2 Big House', 'Hull', 'LS12 5NS', '07702234547', 'test2@email.com', 'Password2'),
(3, 'Carol', 'Crispy', '3 Big House', 'Hull', 'LS11 6NS', '07702234548', 'test3@email.com', 'Password3'),
(4, 'Deb', 'Downer', '4 Big House', 'Hull', 'LS12 7NS', '07702234549', 'test4@email.com', 'Password4'),
(5, 'Eliza', 'Elbow', '5 Big House', 'Hull', 'LS11 8NS', '07702234550', 'test5@email.com', 'Password5'),
(6, 'Fiona', 'Fartsalot', '6 Big House', 'Hull', 'LS12 9NS', '07702234551', 'test6@email.com', 'Password6'),
(7, 'Gina', 'G', '7 Big House', 'Hull', 'LS15 1NS', '07702234552', 'test7@email.com', 'Password7'),
(8, 'Hannah', 'Hatter', '8 Big House', 'Hull', 'LS16 5NS', '07702234553', 'test8@email.com', 'Password8'),
(9, 'Irene', 'Icicles', '9 Big House', 'Hull', 'LS17 5NS', '07702234554', 'test9@email.com', 'Password9');

-- --------------------------------------------------------

--
-- Table structure for table `game_category`
--

CREATE TABLE `game_category` (
  `CategoryID` tinyint(3) UNSIGNED NOT NULL,
  `CategoryName` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_category`
--

INSERT INTO `game_category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Accessible'),
(2, 'Action'),
(3, 'Adult'),
(4, 'Adventure'),
(5, 'Animals'),
(6, 'Apocalypse'),
(7, 'Battle'),
(8, 'Betting'),
(9, 'Bluffing'),
(10, 'Card Game'),
(11, 'Celebrity'),
(12, 'Children'),
(13, 'City Building'),
(14, 'Civilization'),
(15, 'Comic Book'),
(16, 'Detective'),
(17, 'Dice'),
(18, 'Economic'),
(19, 'Educational'),
(20, 'Family'),
(21, 'Fantasy'),
(22, 'Farming'),
(23, 'Fighting'),
(24, 'Grid Movement'),
(25, 'History'),
(26, 'Horror'),
(27, 'Humour'),
(28, 'Logic'),
(29, 'Maze'),
(30, 'Memory'),
(31, 'Music'),
(32, 'Mythology'),
(33, 'Negotiation'),
(34, 'Number'),
(35, 'Party Game'),
(36, 'Pirates'),
(37, 'Player Elimination'),
(38, 'Political'),
(39, 'Popular Culture'),
(40, 'Property'),
(41, 'Puzzle'),
(42, 'Quiz'),
(43, 'Racing'),
(44, 'Radio'),
(45, 'Role Playing'),
(46, 'Single Player'),
(47, 'Space'),
(48, 'Sports'),
(49, 'Spy'),
(50, 'Strategy'),
(51, 'Survival'),
(52, 'Teen'),
(53, 'Town'),
(54, 'Trivia'),
(55, 'TV/Film'),
(56, 'Video Game'),
(57, 'Voting'),
(58, 'Wargame'),
(59, 'Word'),
(60, 'Word Game'),
(61, 'Worker Placement'),
(62, 'World War I'),
(63, 'World War II'),
(64, 'Zombies');

-- --------------------------------------------------------

--
-- Table structure for table `game_category_link`
--

CREATE TABLE `game_category_link` (
  `LinkID` tinyint(3) UNSIGNED NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL,
  `CategoryID` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_category_link`
--

INSERT INTO `game_category_link` (`LinkID`, `GameID`, `CategoryID`) VALUES
(1, 1, 50),
(2, 1, 28),
(3, 1, 6),
(4, 2, 50),
(5, 2, 58),
(6, 2, 28),
(7, 3, 50),
(8, 4, 5),
(9, 4, 20),
(10, 5, 14),
(11, 5, 25),
(12, 6, 13),
(13, 6, 13),
(14, 6, 13),
(15, 7, 50),
(16, 7, 28),
(17, 7, 25),
(18, 8, 18),
(19, 8, 14),
(20, 8, 4),
(21, 9, 45),
(22, 9, 21),
(23, 9, 4),
(24, 9, 23),
(25, 10, 21),
(26, 10, 55),
(27, 10, 47),
(28, 11, 47),
(29, 12, 47),
(30, 13, 50),
(31, 13, 18),
(32, 13, 33),
(33, 14, 58),
(34, 15, 14),
(35, 15, 4),
(36, 15, 19),
(37, 16, 20),
(38, 17, 18),
(39, 18, 18),
(40, 18, 40),
(41, 19, 49),
(42, 20, 18),
(43, 21, 52),
(44, 22, 14),
(45, 23, 58),
(46, 24, 14),
(47, 25, 18),
(48, 26, 16),
(49, 27, 21),
(50, 28, 26),
(51, 29, 21),
(52, 30, 47),
(53, 31, 14),
(54, 32, 26),
(55, 33, 18),
(56, 34, 47),
(57, 35, 47),
(58, 36, 14),
(59, 37, 4),
(60, 38, 13),
(61, 39, 58),
(62, 40, 13),
(63, 41, 58),
(64, 42, 50),
(65, 43, 4),
(66, 44, 38),
(67, 45, 14),
(68, 46, 47),
(69, 47, 18),
(70, 47, 50),
(71, 48, 50),
(72, 48, 28),
(73, 48, 6),
(74, 49, 50),
(75, 50, 55),
(76, 51, 4),
(77, 52, 14),
(78, 52, 50),
(79, 53, 14),
(80, 53, 50),
(81, 54, 50),
(82, 54, 55),
(83, 55, 7),
(84, 56, 14),
(85, 56, 50),
(86, 57, 20),
(87, 58, 3),
(88, 58, 27),
(89, 58, 35),
(90, 59, 18),
(91, 60, 16),
(92, 61, 21),
(93, 62, 21),
(94, 63, 47),
(95, 64, 19),
(96, 65, 17),
(97, 66, 17),
(98, 67, 62),
(99, 68, 17),
(100, 69, 2),
(101, 70, 49),
(102, 71, 4),
(103, 72, 60),
(104, 73, 13),
(105, 74, 8),
(106, 75, 57),
(107, 76, 12),
(108, 77, 19),
(109, 78, 24),
(110, 79, 60),
(111, 80, 4),
(112, 81, 20),
(113, 81, 47),
(114, 82, 18),
(115, 83, 20),
(116, 84, 21),
(117, 85, 22),
(118, 86, 23),
(119, 87, 26),
(124, 89, 42),
(125, 89, 18),
(126, 89, 20),
(127, 89, 40),
(128, 90, 42),
(129, 90, 18),
(130, 90, 20),
(131, 90, 40),
(132, 91, 59),
(133, 92, 52),
(134, 92, 50),
(135, 93, 59),
(136, 93, 35),
(137, 94, 10),
(138, 94, 35),
(139, 94, 20),
(140, 95, 59),
(141, 95, 35),
(142, 95, 19),
(143, 96, 27),
(144, 96, 3),
(145, 96, 35),
(146, 96, 10),
(147, 97, 20),
(148, 98, 54),
(149, 98, 20),
(150, 98, 42),
(151, 99, 20),
(152, 99, 16),
(153, 99, 35),
(154, 100, 34),
(155, 100, 20),
(156, 101, 58),
(157, 101, 50),
(158, 102, 50),
(159, 103, 35),
(160, 104, 20),
(161, 105, 20),
(162, 106, 20),
(163, 107, 20),
(164, 108, 20),
(165, 109, 20),
(166, 110, 20),
(167, 111, 8),
(168, 111, 48),
(169, 112, 20),
(170, 113, 28),
(171, 113, 56),
(172, 114, 20),
(173, 115, 58),
(174, 116, 20),
(175, 117, 27),
(176, 117, 10),
(177, 118, 27),
(178, 118, 10),
(179, 118, 3),
(180, 119, 20),
(181, 119, 10),
(182, 120, 20),
(183, 120, 1),
(184, 120, 10),
(185, 121, 27),
(186, 121, 3),
(187, 121, 10),
(188, 122, 27),
(189, 122, 10),
(190, 123, 27),
(191, 123, 10),
(192, 123, 3),
(193, 124, 27),
(194, 124, 35),
(195, 124, 10),
(196, 124, 31),
(197, 125, 27),
(198, 125, 10),
(199, 126, 27),
(200, 126, 10),
(201, 127, 34),
(202, 127, 1),
(203, 128, 20),
(204, 128, 12),
(205, 128, 54),
(206, 129, 20);

-- --------------------------------------------------------

--
-- Table structure for table `game_review`
--

CREATE TABLE `game_review` (
  `ID` int(4) UNSIGNED NOT NULL,
  `Rating` tinyint(2) UNSIGNED NOT NULL,
  `Review` varchar(254) DEFAULT NULL,
  `ReviewDate` date NOT NULL,
  `MemberID` int(10) UNSIGNED NOT NULL,
  `GameID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_review`
--

INSERT INTO `game_review` (`ID`, `Rating`, `Review`, `ReviewDate`, `MemberID`, `GameID`) VALUES
(1, 10, 'It was really good, better than the mobile game.', '2020-03-01', 1, 1),
(2, 1, 'I didn\'t like it, didn\'t realise it would be so war heavy.', '2020-03-01', 2, 2),
(3, 2, 'It was broken. Such a shame I wanted to play it for ages.', '2020-03-01', 3, 5),
(4, 9, 'I hope they make a sequel. ', '2020-03-01', 4, 9),
(5, 1, 'Ruined the family holiday after our son ran off thinking he was a Jedi', '2020-03-01', 5, 10),
(6, 10, 'Turns out I am a strategy genius.', '2020-03-01', 6, 12),
(7, 9, 'So fun.', '2020-03-01', 7, 14),
(8, 2, 'Who ever thought this would be a good game.', '2020-03-01', 8, 16),
(9, 4, 'It was okay.', '2020-03-01', 9, 20),
(10, 3, 'So boring.', '2020-03-01', 10, 22),
(11, 1, 'Ended in tears. ', '2020-03-01', 11, 23),
(12, 1, 'Ended in divorce.', '2020-03-01', 12, 25),
(13, 8, 'Brought us all closer.', '2020-03-01', 13, 22),
(14, 7, 'A real bonding experience. ', '2020-03-01', 14, 1),
(15, 4, 'Would not get again.', '2020-03-01', 15, 2),
(16, 7, 'Great playing a pandemic game with all the news, felt I could take on the Coronavirus myself!', '2020-03-08', 1, 1),
(17, 8, 'Loads of fun', '2020-03-08', 2, 2),
(18, 8, 'Loved this game', '2020-03-08', 3, 5),
(19, 9, 'Almost perfect - shame it had to end', '2020-03-08', 4, 9),
(20, 10, 'THE BEST GAME EVER!!', '2020-03-08', 5, 10),
(21, 5, 'Very average, not awful, just meh', '2020-03-08', 6, 12),
(22, 6, 'Bit too young for us', '2020-03-08', 7, 14),
(23, 7, 'Great activity for a rainy weekend in Wales', '2020-03-08', 8, 16),
(24, 8, 'Daughter loved it!', '2020-03-08', 9, 20),
(25, 7, 'We played it 15 times in a weekend, addictive', '2020-03-08', 10, 22),
(26, 3, 'Fun for all the family, even grandma!', '2020-03-08', 11, 23),
(27, 5, 'Game wasn\'t as new as advertised, but still fun.', '2020-03-08', 12, 25),
(28, 4, 'Don\'t bother! Finished it in 15 minutes.', '2020-03-08', 13, 20),
(29, 2, 'Almost as boring as lord of the rings.', '2020-03-08', 14, 22),
(30, 7, 'Great fun, kids and adults had a great time.', '2020-03-08', 15, 23),
(31, 5, 'Took a bit too long and was quite confusing, but ok once you got into it.', '2020-03-08', 1, 25),
(32, 3, 'Very offensive, not one for Chruch Group', '2020-03-08', 2, 22),
(33, 6, 'Wasn\'t very authentic but good fun all the same.', '2020-03-08', 3, 1),
(34, 10, 'Better than the Twilight films!', '2020-03-08', 4, 2),
(35, 4, 'Felt a bit too close to home playing a Pandemic game as Italians', '2020-03-08', 5, 1),
(36, 4, 'Boring.', '2020-03-08', 6, 2),
(37, 6, 'Ok, felt a bit long.', '2020-03-08', 7, 5),
(38, 6, 'Not as good as the reviews said.', '2020-03-08', 8, 9),
(39, 10, 'GREAT GAME!!', '2020-03-08', 9, 20),
(40, 10, 'Loved it, challenging but we got the hang of it and played it all night.', '2020-03-08', 10, 22),
(41, 9, 'Great, would reccomend.', '2020-03-08', 11, 23),
(42, 10, 'Loved it, sad we have to return it.', '2020-03-08', 12, 25),
(43, 6, 'Good fun, better suited for those with children.', '2020-03-08', 13, 22),
(44, 8, 'Really great gameplay.', '2020-03-08', 14, 1),
(45, 8, 'Best game we\'ve bought in ages, condition was a bit worn.', '2020-03-08', 15, 2),
(46, 2, 'This game was NOT NEW!', '2020-03-08', 1, 1),
(47, 4, 'Really good quality, shame the game was dull.', '2020-03-08', 2, 2),
(48, 10, 'We all loved it and have bought it off Amazon.', '2020-03-08', 3, 5),
(49, 2, 'Returned as faulty - never got to try the game.', '2020-03-08', 4, 9),
(50, 5, 'Was a bit too grown up for my kid\'s 4th birthday.', '2020-03-08', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `LibraryID` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `EmailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`LibraryID`, `Name`, `Address`, `PhoneNumber`, `EmailAddress`) VALUES
(1, 'Spectacular Library', 'Sky 1, Leeds Dock', '07702234621', 'librarian@spectacular_library.com');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
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
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `FirstName`, `LastName`, `AddressLine`, `Town`, `Postcode`, `PhoneNumber`, `EmailAddress`, `Password`) VALUES
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
-- Indexes for table `board_games`
--
ALTER TABLE `board_games`
  ADD PRIMARY KEY (`GameID`);

--
-- Indexes for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD PRIMARY KEY (`RecordID`),
  ADD KEY `GameID` (`GameID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `game_category`
--
ALTER TABLE `game_category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `game_category_link`
--
ALTER TABLE `game_category_link`
  ADD PRIMARY KEY (`LinkID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `GameID` (`GameID`);

--
-- Indexes for table `game_review`
--
ALTER TABLE `game_review`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GameID` (`GameID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`LibraryID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`);

--
-- AUTO_INCREMENT for dumped tables
--

ALTER TABLE `BOARD_GAMES`
  MODIFY `GameID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BORROW_HISTORY`
--
ALTER TABLE `BORROW_HISTORY`
  MODIFY `RecordID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GAME_CATEGORY_LINK`
--
ALTER TABLE `GAME_CATEGORY_LINK`
  MODIFY `LinkID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LIBRARY`
--
ALTER TABLE `LIBRARY`
  MODIFY `LibraryID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `MEMBER`
--
ALTER TABLE `MEMBER`
  MODIFY `MemberID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;


--
-- Constraints for dumped tables
--



--
-- Constraints for table `game_category_link`
--
ALTER TABLE `game_category_link`
  ADD CONSTRAINT `game_category_link_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `game_category` (`CategoryID`),
  ADD CONSTRAINT `game_category_link_ibfk_2` FOREIGN KEY (`GameID`) REFERENCES `board_games` (`GameID`);

--
-- Constraints for table `game_review`
--
ALTER TABLE `game_review`
  ADD CONSTRAINT `game_review_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `board_games` (`GameID`),
  ADD CONSTRAINT `game_review_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);
--
-- Constraints for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD CONSTRAINT `borrow_history_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
