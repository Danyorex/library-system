-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 21, 2020 at 08:28 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$mk0kbB1DQdMVpWcn1tphPeiZ/WTXPAX1juk3LHWY1/suQXfORqL4m', 'Danyo', 'Rex', 'C360_2018-07-13-01-19-04-917.png', '2020-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `publish_date` date NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `category_id`, `title`, `author`, `publisher`, `publish_date`, `status`) VALUES
(2, '1593080417', 7, '(Barnes & Noble Classics)', ' Frederick Douglass', 'Admin', '2020-07-03', 1),
(4, '0262680920', 4, 'The Hackers Dictionary', 'Eric S. Raymond', 'Admin', '2020-07-17', NULL),
(5, '1593550417', 4, 'The metaphysics of Aristotle', 'Aristotle', 'Admin', '2020-07-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
CREATE TABLE IF NOT EXISTS `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(50) NOT NULL,
  `book_id` int(50) NOT NULL,
  `date_borrow` date NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `student_id`, `book_id`, `date_borrow`, `status`) VALUES
(2, '7', 2, '2020-07-17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Arts & Music'),
(2, 'Cooking'),
(3, 'Comics'),
(4, 'Computers & Tech'),
(5, 'Health & Fitness'),
(6, 'Entertainment'),
(7, 'History'),
(8, 'Literature & Fiction'),
(9, 'Religion'),
(10, 'Sports'),
(11, 'Social Sciences'),
(12, 'Medical'),
(13, 'Edu & Reference'),
(14, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `code` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `code`) VALUES
(4, 'SCIENCE', 'C1000'),
(5, 'AGRICULTURE SCIENCE', 'C1001'),
(6, 'GENERAL ART', 'C1002'),
(7, 'VISUAL  ART', 'C1003'),
(8, 'TECHNICAL', 'C1004'),
(10, 'HOME ECONOMICS', 'C1005');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(50) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_return` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `student_id`, `book_id`, `date_return`) VALUES
(2, '7', 2, '2020-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `firstname`, `lastname`, `photo`, `course_id`, `created_on`) VALUES
(7, 'PKD587213496', 'Keren ', 'Anum-Ashison', '', 5, '2020-07-01'),
(8, 'BAZ253846019', 'Bright Kumah', 'Anovey', '', 5, '2020-07-17'),
(9, 'AGO695143782', 'Salomey ', 'Ashison', '', 10, '2020-07-21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
