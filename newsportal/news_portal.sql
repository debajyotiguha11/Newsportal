-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2017 at 06:31 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idcategory` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`idcategory`, `title`, `description`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 'Economy', 'Economy news from all around the world', '2015-08-02 08:42:51', 'web', '0000-00-00 00:00:00', 'web'),
(2, 'Sports', 'Are you a sports fanatic?', '2015-08-02 08:43:10', 'web', '0000-00-00 00:00:00', 'web'),
(3, 'Technology', 'All the cutting edge technology news', '2015-08-02 08:43:34', 'web', '0000-00-00 00:00:00', 'web'),
(4, 'World', 'What''s going on out there?', '2015-08-02 08:43:51', 'web', '0000-00-00 00:00:00', 'web'),
(5, 'Entertainment', '', '2017-07-06 19:04:42', 'web', '2017-07-06 18:30:00', 'web'),
(6, 'Others', '', '2017-07-06 19:05:27', 'web', '2017-07-06 18:30:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `idpost` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`idpost`, `iduser`, `title`, `body`, `image`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 4, 'Test Post', 'This is a Test post by system for configuration..... done! working correctly', '25abd400919043fac8070da24a3c66d3.png', '2017-07-07 10:07:16', 'web', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `idpost_category` int(10) UNSIGNED NOT NULL,
  `idpost` int(10) UNSIGNED NOT NULL,
  `idcategory` int(10) UNSIGNED NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`idpost_category`, `idpost`, `idcategory`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 1, 6, '2017-07-07 10:07:16', '4', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `idpost_tag` int(10) UNSIGNED NOT NULL,
  `idpost` int(10) UNSIGNED NOT NULL,
  `idtag` int(10) UNSIGNED NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`idpost_tag`, `idpost`, `idtag`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 1, 12, '2017-07-07 10:07:16', '4', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `idprofile` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`idprofile`, `iduser`, `first_name`, `last_name`, `display_name`, `gravatar_email`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(3, 4, 'Debjyoti', 'Guha', 'Debjyoti', 'debajyotiguha11@gmail.com', '2017-07-06 20:03:02', 'web', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `idtag` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`idtag`, `title`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 'news', '2015-08-02 09:08:11', 'web', '0000-00-00 00:00:00', 'web'),
(2, 'world', '2015-08-02 09:08:11', 'web', '0000-00-00 00:00:00', 'web'),
(3, 'economy', '2015-08-02 09:39:54', 'web', '0000-00-00 00:00:00', 'web'),
(4, 'sport', '2015-08-02 09:44:33', 'web', '0000-00-00 00:00:00', 'web'),
(5, 'space', '2015-08-02 10:58:50', '1', '0000-00-00 00:00:00', 'web'),
(6, 'science', '2015-08-02 10:58:51', '1', '0000-00-00 00:00:00', 'web'),
(7, 'war', '2015-08-02 11:00:04', '1', '0000-00-00 00:00:00', 'web'),
(8, 'sports', '2015-08-02 19:44:55', '2', '0000-00-00 00:00:00', 'web'),
(9, 'lorem', '2015-08-02 19:44:55', '2', '0000-00-00 00:00:00', 'web'),
(10, 'technology', '2015-08-02 19:45:49', '2', '0000-00-00 00:00:00', 'web'),
(11, 'test', '2017-07-07 02:31:03', '4', '0000-00-00 00:00:00', 'web'),
(12, 'test post', '2017-07-07 10:07:16', '4', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `iduser` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) CHARACTER SET latin1 NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) CHARACTER SET latin1 DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `email`, `password`, `code`, `status`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(4, 'debajyotiguha11@gmail.com', '25f9e794323b453885f5181f1b624d0b', '4de53edf82f545e1dd6ee92b8855a6db', 1, '2017-07-06 19:46:07', 'web', '2017-07-06 16:32:06', 'web');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `FK_posts_user` (`iduser`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`idpost_category`),
  ADD KEY `FK_post_categories_post` (`idpost`),
  ADD KEY `FK_post_categories_category` (`idcategory`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`idpost_tag`),
  ADD KEY `FK_post_tags_post` (`idpost`),
  ADD KEY `FK_post_tags_tag` (`idtag`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`idprofile`),
  ADD KEY `unique_iduser` (`iduser`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`idtag`),
  ADD UNIQUE KEY `unique_title` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `idpost` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `idpost_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `idpost_tag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `idprofile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `idtag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_posts_user` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `FK_post_categories_category` FOREIGN KEY (`idcategory`) REFERENCES `categories` (`idcategory`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_post_categories_post` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `FK_post_tags_post` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_post_tags_tag` FOREIGN KEY (`idtag`) REFERENCES `tags` (`idtag`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `FK_profiles_users` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
