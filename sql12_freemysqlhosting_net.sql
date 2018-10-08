-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freemysqlhosting.net
-- Generation Time: Oct 02, 2018 at 06:20 AM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12259976`
--
CREATE DATABASE IF NOT EXISTS `sql12259976` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql12259976`;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `act_id` int(11) NOT NULL,
  `act_fname` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `act_lname` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `act_gender` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES
(101, 'James', 'Stewart', 'M'),
(102, 'Deborah', 'Kerr', 'F'),
(103, 'Peter', 'OToole', 'M'),
(104, 'Robert', 'De Niro', 'M'),
(105, 'F. Murray', 'Abraham', 'M'),
(106, 'Harrison', 'Ford', 'M'),
(107, 'Nicole', 'Kidman', 'F'),
(108, 'Stephen', 'Baldwin', 'M'),
(109, 'Jack', 'Nicholson', 'M'),
(110, 'Mark', 'Wahlberg', 'M'),
(111, 'Woody', 'Allen', 'M'),
(112, 'Claire', 'Danes', 'F'),
(113, 'Tim', 'Robbins', 'M'),
(114, 'Kevin', 'Spacey', 'M'),
(115, 'Kate', 'Winslet', 'F'),
(116, 'Robin', 'Williams', 'M'),
(117, 'Jon', 'Voight', 'M'),
(118, 'Ewan', 'McGregor', 'M'),
(119, 'Christian', 'Bale', 'M'),
(120, 'Maggie', 'Gyllenhaal', 'F'),
(121, 'Dev', 'Patel', 'M'),
(122, 'Sigourney', 'Weaver', 'F'),
(123, 'David', 'Aston', 'M'),
(124, 'Ali', 'Astin', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `dir_id` int(11) NOT NULL,
  `dir_fname` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `dir_lname` char(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES
(303, 'Alfred', 'Hitchcock'),
(304, 'Mel', 'Gibson'),
(305, 'David', 'Lean'),
(306, 'Jack', 'Clayton'),
(307, 'Robert', 'Zemeckis'),
(308, 'Michael', 'Cimino'),
(309, 'Hayao', 'Miyazaki'),
(310, 'Milos', 'Forman'),
(311, 'Akira', 'Kurosawa'),
(312, 'Ridley', 'Scott'),
(313, 'James', 'Cameron'),
(314, 'Stanley', 'Kubrick'),
(315, 'Kevin', 'Spacey'),
(316, 'Bryan', 'Singer'),
(317, 'Roman', 'Polanski'),
(318, 'Danny', 'Boyle'),
(319, 'Paul', 'Thomas Anderson'),
(320, 'Christopher', 'Nolan'),
(321, 'Woody', 'Allen'),
(322, 'Frank', 'Darabont'),
(323, 'Sam', 'Mendes'),
(324, 'Gus', 'Van Sant'),
(325, 'John', 'Boorman');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `gen_id` int(11) NOT NULL,
  `gen_title` char(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`gen_id`, `gen_title`) VALUES
(703, 'Action'),
(704, 'Adventure'),
(705, 'Comedy'),
(706, 'Crime'),
(707, 'Drama'),
(708, 'Fantasy'),
(709, 'Historical'),
(710, 'Horror'),
(711, 'Mystery'),
(712, 'Political'),
(713, 'Romance'),
(714, 'Saga'),
(715, 'Satire'),
(716, 'Science Fiction'),
(717, 'Social'),
(718, 'Thriller'),
(719, 'Western'),
(720, 'Animation'),
(721, 'Musical');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `mov_id` int(11) NOT NULL,
  `mov_title` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `mov_year` int(11) NOT NULL,
  `mov_time` int(11) NOT NULL,
  `mov_lang` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `mov_dt_rel` date NOT NULL,
  `mov_rel_country` char(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES
(901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK'),
(902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW'),
(903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK'),
(904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK'),
(905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'UK'),
(906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK'),
(907, 'Eyes Wide Shut', 1999, 159, 'English', '0000-00-00', 'UK'),
(908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK'),
(909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK'),
(910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK'),
(911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA'),
(912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK'),
(913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK'),
(914, 'American Beauty', 1999, 122, 'English', '0000-00-00', 'UK'),
(915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK'),
(916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK'),
(917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK'),
(918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK'),
(919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK'),
(920, 'Donnie Darko', 2001, 113, 'English', '0000-00-00', 'UK'),
(921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK'),
(922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK'),
(923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK'),
(924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK'),
(925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK'),
(926, 'Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP'),
(927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK'),
(928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

CREATE TABLE `movie_cast` (
  `act_id` int(11) NOT NULL,
  `mov_id` int(11) NOT NULL,
  `role` char(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie_cast`
--

INSERT INTO `movie_cast` (`act_id`, `mov_id`, `role`) VALUES
(101, 901, 'Det. John Ferguson'),
(102, 902, 'Governess'),
(103, 903, 'T. E. Lawrence'),
(104, 904, 'Michael'),
(105, 905, 'Antonio Salieri'),
(106, 906, 'Rick Deckard'),
(107, 907, 'Alice Harford'),
(108, 908, 'Michael McManus'),
(109, 909, 'J.J. Gittes'),
(110, 910, 'Dirk Diggler'),
(111, 911, 'Alvy Singer'),
(112, 912, 'San'),
(113, 913, 'Andy Dufresne'),
(114, 914, 'Lester Burnham'),
(115, 915, 'Rose DeWitt Bukater'),
(116, 916, 'Sean Maguire'),
(117, 917, 'Ed Gentry'),
(118, 918, 'Mark Renton'),
(119, 919, 'Alfred Borden'),
(120, 920, 'Elizabeth Darko'),
(121, 921, 'Jamal Malik'),
(122, 922, 'Ellen Ripley');

-- --------------------------------------------------------

--
-- Table structure for table `movie_direction`
--

CREATE TABLE `movie_direction` (
  `dir_id` int(11) NOT NULL,
  `mov_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie_direction`
--

INSERT INTO `movie_direction` (`dir_id`, `mov_id`) VALUES
(304, 925),
(306, 903),
(308, 904),
(309, 912),
(309, 927),
(310, 905),
(311, 926),
(312, 906),
(313, 915),
(313, 922),
(313, 924),
(314, 907),
(315, 923),
(316, 908),
(317, 909),
(318, 918),
(319, 919),
(320, 919),
(321, 911),
(322, 913),
(323, 914),
(324, 916),
(325, 917);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `mov_id` int(11) NOT NULL,
  `gen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`mov_id`, `gen_id`) VALUES
(901, 711),
(902, 711),
(902, 711),
(903, 707),
(903, 709),
(904, 707),
(904, 703),
(905, 707),
(905, 721),
(906, 716),
(906, 703),
(906, 708),
(907, 707),
(907, 711),
(908, 706),
(908, 707),
(908, 711),
(909, 707),
(909, 711),
(910, 705),
(910, 707),
(911, 713),
(911, 707),
(912, 720),
(913, 707),
(914, 715),
(914, 707),
(915, 707),
(916, 713),
(916, 707),
(917, 703),
(918, 715),
(918, 706),
(919, 707),
(920, 716),
(921, 707),
(922, 716),
(923, 707),
(923, 721),
(924, 716),
(926, 703),
(926, 707),
(927, 720),
(928, 716),
(925, 703),
(925, 709);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `mov_id` int(11) NOT NULL,
  `rev_id` int(11) NOT NULL,
  `rev_stars` int(11) NOT NULL,
  `num_o_ratings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES
(901, 9001, 8, 263575),
(902, 9002, 8, 20207),
(903, 9003, 8, 202778),
(906, 9005, 8, 484746),
(924, 9006, 7, 0),
(908, 9007, 9, 779489),
(909, 9008, 0, 227235),
(910, 9009, 3, 195961),
(911, 9010, 8, 203875),
(912, 9011, 8, 0),
(914, 9013, 7, 862618),
(915, 9001, 8, 830095),
(916, 9014, 4, 642132),
(925, 9015, 8, 81328),
(918, 9016, 0, 580301),
(920, 9017, 8, 609451),
(921, 9018, 8, 667758),
(922, 9019, 8, 511613),
(923, 9020, 7, 13091);

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE `reviewer` (
  `rev_id` int(11) NOT NULL,
  `rev_name` char(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`rev_id`, `rev_name`) VALUES
(9001, 'Righty Sock'),
(9002, 'Jack Malvern'),
(9003, 'Flagrant Baronessa'),
(9004, 'Alec Shaw'),
(9005, ''),
(9006, 'Victor Woeltjen'),
(9007, 'Simon Wright'),
(9008, 'Neal Wruck'),
(9009, 'Paul Monks'),
(9010, 'Mike Salvati'),
(9011, ''),
(9012, 'Wesley S. Walker'),
(9013, 'Sasha Goldshtein'),
(9014, 'Josh Cates'),
(9015, 'Krug Stillo'),
(9016, 'Scott LeBrun'),
(9017, 'Hannah Steele'),
(9018, 'Vincent Cadena'),
(9019, 'Brandt Sponseller'),
(9020, 'Richard Adams');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`act_id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`dir_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`gen_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`mov_id`);

--
-- Indexes for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD KEY `act_id` (`act_id`),
  ADD KEY `mov_id` (`mov_id`);

--
-- Indexes for table `movie_direction`
--
ALTER TABLE `movie_direction`
  ADD KEY `dir_id` (`dir_id`),
  ADD KEY `mov_id` (`mov_id`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD KEY `gen_id` (`gen_id`),
  ADD KEY `mov_id` (`mov_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD KEY `rev_id` (`rev_id`),
  ADD KEY `mov_id` (`mov_id`);

--
-- Indexes for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD PRIMARY KEY (`rev_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `dir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `gen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `mov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=929;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`),
  ADD CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`act_id`) REFERENCES `actor` (`act_id`);

--
-- Constraints for table `movie_direction`
--
ALTER TABLE `movie_direction`
  ADD CONSTRAINT `movie_direction_ibfk_2` FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`),
  ADD CONSTRAINT `movie_direction_ibfk_1` FOREIGN KEY (`dir_id`) REFERENCES `director` (`dir_id`);

--
-- Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`),
  ADD CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`gen_id`) REFERENCES `genres` (`gen_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`),
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`rev_id`) REFERENCES `reviewer` (`rev_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
