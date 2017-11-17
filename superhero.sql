-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2017 at 04:15 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superhero`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(280) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `sender_user_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `user_id`, `sender_user_id`) VALUES
(1, 'Hello this is a comment to Wonder Woman :) (Spiderman)', 'wonderwoman@gmail.com', 'spiderman@gmail.com'),
(2, 'Hello this is a comment to Wolverine :O (from Spiderman)', 'wolverine@gmail.com', 'spiderman@gmail.com'),
(3, 'Hello test person this is a comment', 'test@gmail.com', 'wonderwoman@gmail.com'),
(4, 'Another comment for the test person', 'test@gmail.com', 'spiderman@gmail.com'),
(5, 'Hello Spiderman!', 'spiderman@gmail.com', 'wolverine@gmail.com'),
(10, ':)', 'spiderman@gmail.com', 'test@gmail.com'),
(11, 'Hello Wolverine!', 'wolverine@gmail.com', 'test@gmail.com'),
(12, 'Hey Wonder Woman <3', 'wonderwoman@gmail.com', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gift`
--

CREATE TABLE `gift` (
  `id` int(11) NOT NULL,
  `content` varchar(280) NOT NULL,
  `gift_type_name` varchar(50) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `sender_user_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gift`
--

INSERT INTO `gift` (`id`, `content`, `gift_type_name`, `user_id`, `sender_user_id`) VALUES
(1, 'Hello here\'s a gift from Spiderman to Wonder Woman', 'Hug', 'wonderwoman@gmail.com', 'spiderman@gmail.com'),
(2, 'Hello here\'s a gift from Wolverine to Spiderman', 'Smile', 'wolverine@gmail.com', 'spiderman@gmail.com'),
(4, 'wdad', 'Hug', 'spiderman@gmail.com', 'test@gmail.com'),
(5, 'test gift', 'Kiss', 'spiderman@gmail.com', 'test@gmail.com'),
(6, 'Hugs to Wonder Woman', 'Hug', 'wonderwoman@gmail.com', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gift_type`
--

CREATE TABLE `gift_type` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gift_type`
--

INSERT INTO `gift_type` (`name`) VALUES
('Chocolate'),
('Flowers'),
('Hug'),
('Kiss'),
('Smile');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `likes` int(1) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `sender_user_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `likes`, `user_id`, `sender_user_id`) VALUES
(1, 0, 'wonderwoman@gmail.com', 'spiderman@gmail.com'),
(2, 0, 'wonderwoman@gmail.com', 'wolverine@gmail.com'),
(3, 0, 'spiderman@gmail.com', 'wolverine@gmail.com'),
(33, 0, 'wonderwoman@gmail.com', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `user_id` varchar(128) NOT NULL,
  `sender_user_id` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `content`, `user_id`, `sender_user_id`) VALUES
(1, 'Hello message from Spiderman to Wonder Woman', 'wonderwoman@gmail.com', 'spiderman@gmail.com'),
(2, 'Hello message from Wonder Woman to wolverine', 'wonderwoman@gmail.com', 'wolverine@gmail.com'),
(3, 'test message to test person', 'test@gmail.com', 'spiderman@gmail.com'),
(4, 'another test message to test person', 'test@gmail.com', 'wonderwoman@gmail.com'),
(5, 'This is a new message', 'spiderman@gmail.com', 'test@gmail.com'),
(6, 'new test message!', 'spiderman@gmail.com', 'test@gmail.com'),
(7, 'Hello spiderman! This is a message', 'spiderman@gmail.com', 'test@gmail.com'),
(8, 'New private message to Wonder Woman from Test Hero!', 'wonderwoman@gmail.com', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `age` int(3) NOT NULL,
  `superpower` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `name`, `age`, `superpower`, `description`) VALUES
('spiderman@gmail.com', 'Spider Man', 16, 'Has the speed, strength and powers of a spider!', 'I am an accomplished scientist, inventor and photographer. I always attempting to do right but is however viewed with suspicion by the authorities, who seem unsure as to whether I am a helpful vigilante or a clever criminal.\r\n'),
('test@gmail.com', 'The Test Hero', 999, 'Testing Power', 'Can like and send gifts to other superheros, post comments and send messages...'),
('wolverine@gmail.com', 'Wolverine', 137, 'Mutant with the ability to regenerate', 'I\'m known as Logan and sometimes as Weapon X. I was born with super-human senses and the power to heal from almost any wound, I was captured by a secret Canadian organization and given an unbreakable skeleton and claws. Treated like an animal, it took years for me to control Myself.'),
('wonderwoman@gmail.com', 'Wonder Woman', 23, 'Superhuman Powers', 'A founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazonian people.  In my homeland, the island nation of Themyscira, my official title was Princess Diana of Themyscira, Daughter of Hippolyta. When blending into the society outside my homeland, I adopt the civilian identity Diana Prince.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_user_id` (`sender_user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gift_type_name` (`gift_type_name`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sender_user_id` (`sender_user_id`);

--
-- Indexes for table `gift_type`
--
ALTER TABLE `gift_type`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sender_user_id` (`sender_user_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sender_user_id` (`sender_user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gift`
--
ALTER TABLE `gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`sender_user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gift`
--
ALTER TABLE `gift`
  ADD CONSTRAINT `gift_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gift_ibfk_2` FOREIGN KEY (`sender_user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gift_ibfk_3` FOREIGN KEY (`gift_type_name`) REFERENCES `gift_type` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`sender_user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`sender_user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
