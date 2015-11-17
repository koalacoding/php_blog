-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 17, 2015 at 01:54 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yoBlog`
--

-- --------------------------------------------------------

--
-- Table structure for table `anti_flood`
--

CREATE TABLE IF NOT EXISTS `anti_flood` (
  `ip_address` varchar(50) NOT NULL,
  `first_request_time` int(11) NOT NULL,
  `number_of_requests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anti_flood`
--

INSERT INTO `anti_flood` (`ip_address`, `first_request_time`, `number_of_requests`) VALUES
('127.0.0.1', 1447721554, 3),
('::1', 1447475044, 0);

-- --------------------------------------------------------

--
-- Table structure for table `archives_months`
--

CREATE TABLE IF NOT EXISTS `archives_months` (
`id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archives_months`
--

INSERT INTO `archives_months` (`id`, `month`, `year`) VALUES
(5, 2, 2015),
(6, 1, 2015),
(7, 3, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `blog_options`
--

CREATE TABLE IF NOT EXISTS `blog_options` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `headerBackgroundImage` text NOT NULL,
  `headerTextColor` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_options`
--

INSERT INTO `blog_options` (`id`, `username`, `headerBackgroundImage`, `headerTextColor`, `title`, `description`) VALUES
(2, 'admin', 'https://upload.wikimedia.org/wikipedia/commons/8/8c/Center_of_the_Milky_Way_Galaxy_III_%E2%80%93_Chandra_(X-ray).jpg', 'rgb(255, 255, 255)', 'The up and comin''', 'The background-image property sets one or more background images for an element.'),
(3, 'johndoe', 'https://upload.wikimedia.org/wikipedia/commons/8/8c/Center_of_the_Milky_Way_Galaxy_III_%E2%80%93_Chandra_(X-ray).jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `post_date` datetime NOT NULL,
  `time_since_unix_epoch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `author`, `email`, `comment`, `post_date`, `time_since_unix_epoch`) VALUES
(35, 13, 'bob', 'bob@live.com', 'I love my brother too. He has consoled and comforted me many, many times. I owe him so much.', '2015-02-21 22:18:10', 0),
(36, 13, 'rob', '', '*grins* Aunt B’s is without a doubt one of the best blogs out there. It’s awesome to see her getting the recognition she deserves!', '2015-02-21 22:18:21', 1424553501),
(37, 12, 'mini-mouse', '', 'sup loc', '2015-02-21 22:18:35', 1424553515),
(38, 29, 'loc', '', 'sup log', '2015-03-06 07:32:45', 1425623565);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postDate` datetime NOT NULL,
  `timeSinceEpoch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `username`, `title`, `content`, `postDate`, `timeSinceEpoch`) VALUES
(81, 'admin', 'my first posters', 'sup yo', '2015-11-13 02:59:49', 1447379989),
(83, 'admin', 'bonjour', 'aurevoir', '2015-11-14 04:05:24', 1447470324);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE IF NOT EXISTS `post_categories` (
`id` int(11) NOT NULL,
  `username` varchar(17) NOT NULL,
  `category_name` varchar(36) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `username`, `category_name`) VALUES
(3, 'admin', 'cat2'),
(4, 'admin', 'cat3'),
(5, 'admin', 'cat1'),
(6, 'admin', 'cat66'),
(8, 'admin', '<strong>test</strong>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `registration_date`) VALUES
(13, 'admin2', '7a42703f64598e83e7c579112cb80f254b27b53b089c8a7cd14badc6165e78aa', 'mp', '2015-02-01 01:56:24'),
(14, 'koooooooooooooooo', 'c2f42a4d2a709a412b612ce9c6930676904c7c96d07602d5b57a046ee4f69a82', 'lolo', '2015-02-10 13:38:08'),
(15, 'jean', '689856308efb50cf3b1250c2327b17ecf12e9d6d5fa2b0615fb398c827a4cf7b', 'test@test.fr', '2015-02-10 16:40:50'),
(16, 'BIGBOSS88', '689856308efb50cf3b1250c2327b17ecf12e9d6d5fa2b0615fb398c827a4cf7b', 'test@test.fr', '2015-02-10 16:42:35'),
(17, 'jeang', '689856308efb50cf3b1250c2327b17ecf12e9d6d5fa2b0615fb398c827a4cf7b', 'test@cococococococ.fr', '2015-02-10 16:43:39'),
(18, 'johnny', '0988f4a1ebe478008013721c00b4853783648c37b5ca1e901ba1a6811942a124', 'john@gmail.com', '2015-03-14 14:06:00'),
(19, 'admin', 'cd678cdb5a3c5e70f29805f1c864111a6ff354f6d18dae076a08ab1a46cf846e', '', '2015-11-11 14:44:04'),
(20, 'johndoe', 'cd678cdb5a3c5e70f29805f1c864111a6ff354f6d18dae076a08ab1a46cf846e', '', '2015-11-11 23:04:04'),
(21, 'tyu', '86063db2ef0e73e592fd0b182cf40bab0bd4eb56dee469f76a87db9c9849b4ba', '', '2015-11-14 03:25:27'),
(22, 'lilg', 'cd678cdb5a3c5e70f29805f1c864111a6ff354f6d18dae076a08ab1a46cf846e', '', '2015-11-14 03:28:13'),
(23, 'admin3', 'cd678cdb5a3c5e70f29805f1c864111a6ff354f6d18dae076a08ab1a46cf846e', '', '2015-11-14 05:22:04'),
(24, 'admin4', 'cd678cdb5a3c5e70f29805f1c864111a6ff354f6d18dae076a08ab1a46cf846e', '', '2015-11-17 01:48:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anti_flood`
--
ALTER TABLE `anti_flood`
 ADD PRIMARY KEY (`ip_address`);

--
-- Indexes for table `archives_months`
--
ALTER TABLE `archives_months`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_options`
--
ALTER TABLE `blog_options`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archives_months`
--
ALTER TABLE `archives_months`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `blog_options`
--
ALTER TABLE `blog_options`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
