-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2016 at 11:05 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `album_title` varchar(32) NOT NULL,
  `album_description` text NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `date_created` date NOT NULL,
  `uid` varchar(32) NOT NULL,
  `removed` varchar(5) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `album_title`, `album_description`, `created_by`, `date_created`, `uid`, `removed`) VALUES
(1, 'This is a test album', 'This is the description of my test album.', 'david2', '2012-11-09', 'test', 'no'),
(2, 'This is a test album', 'This is the description of my test album.', 'okoro', '2012-11-09', 'test', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `username` varchar(22) NOT NULL,
  `allow_email` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_liked` varchar(50) NOT NULL,
  `total_likes` int(11) NOT NULL,
  `uid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_liked`, `total_likes`, `uid`) VALUES
(8, 'david2', 1, 'adwfRGtbhna'),
(9, 'david2', -1, 'b4dfadf9d2d278e5f95c32ed9cdb82'),
(10, 'david2', -1, 'c398010c045347fbf222935e51ba7a'),
(11, 'david2', -1, 'b6130699fbdb9cbed817a2f52ce45f'),
(12, 'david2', -1, '63db74c265421cf450af8c7a1ab683'),
(13, 'david2', -1, '821f2579a9d8d02227524047a55dcd'),
(14, 'david2', -1, '74a1cd797b31d8c7a76dbf8c045147'),
(15, 'david2', -1, '7488f49944957b634b1ebb5d17fc7f'),
(16, 'david2', -1, 'a80e06882a64ddbe8acb3beec55c09'),
(17, 'david2', -1, 'david2'),
(18, 'okoro', 0, 'okoro'),
(19, 'okoro', -1, '48d825013ee75cc35515384e500a3c'),
(20, 'okoro', -1, '9b9c0effe85f334e1a60a4cf472d68'),
(21, 'david', -1, 'david'),
(22, 'david21', -1, 'david21'),
(23, 'okoros', -1, 'okoros');

-- --------------------------------------------------------

--
-- Table structure for table `like_buttons`
--

CREATE TABLE `like_buttons` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `page_url` text NOT NULL,
  `date_added` date NOT NULL,
  `uid` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like_buttons`
--

INSERT INTO `like_buttons` (`id`, `username`, `page_url`, `date_added`, `uid`) VALUES
(4, 'sinimma', 'http://www.google.com', '2012-10-23', 'c24cddc085e8165b5a74200999860e29'),
(7, 'sinimma', 'http://jfhjhgfjgf', '2012-10-23', '3bbd31d516d74de1c9c0a41135e1d615'),
(12, 'david2', 'http://youtube.com', '2016-06-30', 'b4dfadf9d2d278e5f95c32ed9cdb8243'),
(18, 'david2', 'http://Enter the URL of your Page...', '2016-06-30', '7488f49944957b634b1ebb5d17fc7f8f'),
(19, 'david2', 'http://fgvfvfbfda.com', '2016-06-30', 'a80e06882a64ddbe8acb3beec55c0928'),
(20, 'david2', 'http://localhost/tutorials/findFriends/david2', '2016-06-30', 'david2'),
(21, 'okoro', 'http://localhost/tutorials/findFriends/okoro', '2016-06-30', 'okoro'),
(22, 'okoro', 'http://wdef', '2016-06-30', '48d825013ee75cc35515384e500a3c9d'),
(23, 'okoro', 'http://goog.com', '2016-06-30', '9b9c0effe85f334e1a60a4cf472d687c'),
(24, 'david', 'http://localhost/tutorials/findFriends/david', '2016-06-30', 'david'),
(25, 'david21', 'http://localhost/socialnetworkcode2/david21', '2016-06-30', 'david21'),
(26, 'okoros', 'http://localhost/socialnetworkcode2/okoros', '2016-07-02', 'okoros');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `date_posted` date NOT NULL,
  `description` text NOT NULL,
  `image_url` text NOT NULL,
  `img_id` varchar(55) NOT NULL,
  `removed` varchar(5) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `uid`, `username`, `date_posted`, `description`, `image_url`, `img_id`, `removed`) VALUES
(1, 'test', 'david2', '2012-11-12', 'This is a test', 'http://localhost/socialnetworkcode2/img/default_pic.jpg', '0', 'yes'),
(2, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/U3yvdZkRHbW01AC/735049_1674579702783020_2031715781141573421_n.jpg', '0', 'yes'),
(3, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/zVcvA72hXa3bNZw/12027626_1650564338517890_1433811200488803583_n.jpg', '44', 'no'),
(4, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/HFpyDLS1CqMXJi3/12654130_1684592638448393_1490405868294383008_n.jpg', '84da8c9df7dd3f7a94ae4a1d492447ca', 'no'),
(5, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/4of5wmFqNBy08QM/10624869_1495759323998393_5426962654497543202_n.jpg', 'ff35a22315e89140b94e6cf91e261bd8', 'no'),
(6, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/NMoFra3gPdlWJTb/11167686_1659977350909922_1130530091994735147_n.jpg', 'c2dd02866b4290405065b1be380b4616', 'no'),
(7, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/v6JQItyPd7NoUsk/11167686_1659977350909922_1130530091994735147_n.jpg', '7f83fc493df22df7b674c12079220cbe', 'yes'),
(8, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/wWTtIAZC5UoiQyP/11167686_1659977350909922_1130530091994735147_n.jpg', '094f8f02171f7f670b1a63db517b6ed4', 'yes'),
(9, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/PsIr3KZ2bnGS7cd/11167686_1659977350909922_1130530091994735147_n.jpg', 'e6e7249e32353977a1c9f6fb8c06dc9d', 'yes'),
(10, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/vTSXfMAb42gpwC3/12009818_1646228182284839_242293081467764408_n.jpg', '2ea7268a2cad8a15cba3b9ae18f35cb9', 'yes'),
(11, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/lQEYHi5S0gRkwJO/david.jpg', 'ec97b3b30d0a9ba117c8303744fd270b', 'no'),
(12, 'test', 'david2', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/RCFX39alumr8jPc/12009818_1646228182284839_242293081467764408_n.jpg', 'a7c1be22effe213d310346302a994a2f', 'no'),
(13, 'test', 'okoro', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/Uh5eDsRIOLprlci/11167686_1659977350909922_1130530091994735147_n.jpg', 'fe950832809c575f2e1ebc5e56350aac', 'yes'),
(14, 'test', 'okoro', '0000-00-00', '', 'http://localhost/socialnetworkcode2/userdata/user_photos/YXISr4iOpcM1zt3/12278864_1662851503955840_7748936175811238709_n.jpg', '37c56718bee0c864191dd73de7ca8ca8', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `pokes`
--

CREATE TABLE `pokes` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokes`
--

INSERT INTO `pokes` (`id`, `user_from`, `user_to`) VALUES
(2, 'david', 'david2'),
(3, 'okoro', 'david2');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `date_added` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `user_posted_to` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `date_added`, `added_by`, `user_posted_to`) VALUES
(15, 'send post is move to another page', '2016-06-25', 'david', 'david'),
(26, 'helo any body in the house', '2016-06-26', 'okoro', 'okoro'),
(25, 'am post on davids wall', '2016-06-25', 'okoro', 'david'),
(24, 'am post on davids wall', '2016-06-25', 'okoro', 'david'),
(43, 'wos going on here', '2016-06-26', 'david2', 'david2'),
(44, 'gud night pals', '2016-06-26', 'david2', 'david'),
(45, 'my name is david2 wos going on guys', '2016-06-27', 'david2', 'david2'),
(46, 'heloo mr okoro', '2016-06-27', 'david2', 'okoro'),
(47, 'mr david from david2', '2016-06-27', 'david2', 'david'),
(49, 'hi bro', '2016-06-29', 'david2', 'david'),
(42, 'wos going on here', '2016-06-26', 'david2', 'okoro'),
(41, 'wos going on here', '2016-06-26', 'david2', 'okoro'),
(40, 'hi pal am new here wos going on here', '2016-06-26', 'david2', 'david');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `posted_to` varchar(255) NOT NULL,
  `post_removed` tinyint(1) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_body`, `posted_by`, `posted_to`, `post_removed`, `post_id`) VALUES
(6, 'hi mr david2...wos happen', 'okoro', 'sinimma', 0, 46),
(7, 'fine to mr david2', 'david', 'sinimma', 0, 49),
(8, 'fjgg fjgdlfsk fjkf', 'david2', '', 0, 45),
(11, 'dsddddddddddddddd', 'david2', 'david2', 0, 45);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_messages`
--

CREATE TABLE `pvt_messages` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL,
  `msg_title` varchar(255) NOT NULL,
  `msg_body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(255) NOT NULL,
  `deleted` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pvt_messages`
--

INSERT INTO `pvt_messages` (`id`, `user_from`, `user_to`, `msg_title`, `msg_body`, `date`, `opened`, `deleted`) VALUES
(11, 'david', 'okoro', 'message okoro', 'mr okoro how are u to day', '2016-06-25 00:00:00', 'yes', 'yes'),
(17, 'okoro', 'david2', 'hi mr david2', 'mr david2 am back again1', '2016-06-27 00:00:00', 'yes', 'yes'),
(18, 'okoro', 'david2', 'mr david2 2', 'mr david2 am back agian 2', '2016-06-27 00:00:00', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `sign_up_date` date NOT NULL,
  `activated` enum('0','1') NOT NULL,
  `bio` text NOT NULL,
  `profile_pic` text NOT NULL,
  `friend_array` text NOT NULL,
  `closed` varchar(50) NOT NULL DEFAULT 'no',
  `male` varchar(3) NOT NULL DEFAULT '0',
  `female` varchar(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `sign_up_date`, `activated`, `bio`, `profile_pic`, `friend_array`, `closed`, `male`, `female`) VALUES
(5, 'david', 'david', 'echeta', 'davidechta599@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2016-06-25', '', 'hello guy wos up this is my very first web site design.for any of u that are intereseed to learn should join me on www.davidecheta599@yahoo.com', 'vVpF7RhnjbKHTW0/12278864_1662851503955840_7748936175811238709_n.jpg', 'okoro,okoro,okoro,okoro,david2', 'no', '0', '0'),
(9, 'okoro', 'okoro', 'echetas', 'okoro@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2016-06-25', '', 'my name is okoro', 'fIbOT4iSN5EZgcr/Snapshot(15).jpg', 'david,david,david,david,david2', 'no', '0', '0'),
(10, 'david2', 'david2', 'echeta', 'dera@yahoo.com ', 'e10adc3949ba59abbe56e057f20f883e', '2016-06-26', '0', 'am new here!wos up with this new social network..any way my name is david2', 'sh6oNCaWiMHrFxn/12009818_1646228182284839_242293081467764408_n.jpg', 'david,okoro', 'no', '0', '0'),
(23, 'okoros', 'okoros', 'echetas', 'okoro@yahoo.net', 'e10adc3949ba59abbe56e057f20f883e', '2016-07-02', '0', 'Write something about yourself.', '', '', 'no', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_likes`
--

CREATE TABLE `user_likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_likes`
--

INSERT INTO `user_likes` (`id`, `username`, `uid`) VALUES
(5, 'okoro', 'okoro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_buttons`
--
ALTER TABLE `like_buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokes`
--
ALTER TABLE `pokes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_likes`
--
ALTER TABLE `user_likes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `like_buttons`
--
ALTER TABLE `like_buttons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pokes`
--
ALTER TABLE `pokes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user_likes`
--
ALTER TABLE `user_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
