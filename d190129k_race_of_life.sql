-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2022 at 12:55 PM
-- Server version: 10.2.40-MariaDB-log
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d190129k_race_of_life`
--

-- --------------------------------------------------------

--
-- Table structure for table `levels_master`
--

CREATE TABLE `levels_master` (
  `id` int(11) NOT NULL,
  `unlocked_at_xp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `levels_master`
--

INSERT INTO `levels_master` (`id`, `unlocked_at_xp`) VALUES
(1, 0),
(2, 100),
(3, 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `social_user_id` text DEFAULT NULL,
  `username` text NOT NULL,
  `device_token` text NOT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `game_coin` int(11) NOT NULL DEFAULT 100,
  `avatarId` int(11) NOT NULL DEFAULT 101,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `social_user_id`, `username`, `device_token`, `email`, `password`, `game_coin`, `avatarId`, `created_at`, `updated_at`) VALUES
(1, '524533', 'guest68761', 'cfcjlljgh45221212kjjkj', 'email@gmail.com', '$2y$10$iimAffdwVSt0f4WpyoK.m.HAFs9KSJpInkqs1rL2ZCv4gq8L0hIya', 100, 0, '2022-05-27 13:10:15', '2022-05-27 14:36:35'),
(2, NULL, 'suman', '[0k0902k323pjaojoje0j0', 'aeretrtr@gmail.com', '$2y$10$5Z/IOHaSCHgS.VOwB6Lj/uyNbJ4S4o19ezNxEDwD51MveGIdRybH2', 100, 65168, '2022-05-27 13:10:50', '2022-05-31 10:09:31'),
(3, '115040557881284', 'banjo', 'f2c3a0180da2e9bcaf0126d5fd397d22d4139c7e:1654075521', NULL, NULL, 100, 123, '2022-05-27 13:13:51', '2022-06-01 09:25:35'),
(4, NULL, 'guest81409', '8u82iupoa20903maf09j2m09002m320:1653964452', NULL, NULL, 100, 0, '2022-05-31 02:34:16', NULL),
(5, '115040557881284', 'rangomango', 'f2c3a0180da2e9bcaf0126d5fd397d22d4139c7e:1654093584', 'rangomango@email.com', '$2y$10$XI/9qguXjVb/vxkPD4Y6mOPyqY.nvP57ybrhhDHgnYHw8c7OVMmCu', 100, 123, '2022-05-31 10:58:54', '2022-06-01 14:26:44'),
(6, NULL, 'guest71117', '0d91b81b8f608df62b16465c621655da:1653994911', NULL, NULL, 100, 101, '2022-05-31 11:01:52', NULL),
(7, NULL, 'guest94775', 'f2c3a0180da2e9bcaf0126d5fd397d22d4139c7e:1653996106', NULL, NULL, 100, 101, '2022-05-31 11:21:47', NULL),
(8, NULL, 'guest4492', '0d91b81b8f608df62b16465c621655da:1653996787', NULL, NULL, 100, 101, '2022-05-31 11:33:09', NULL),
(9, '111745198292931844072', 'Deepak', '8bc3358f428bd56e48e9e89642bf1795:1654078111', 'kundra1985@gmail.com', '$2y$10$5epV30KqxAOjAFH4SmJ8MODBaW4kqExvGHqsSDBlBBK2T5aI2StJu', 100, 123, '2022-06-01 06:39:18', '2022-06-01 10:09:32'),
(10, NULL, 'guest54450', '8bc3358f428bd56e48e9e89642bf1795:1654065816', 'amrit37c@gmail.com', '$2y$10$to0Hf2vxQqTfMs0INJVZ2.2kFbwOacETeEUtvp37olGYrRE/vVwEG', 100, 101, '2022-06-01 06:43:36', '2022-06-01 06:44:04'),
(11, '105857883212479482994', 'Deepak', '8bc3358f428bd56e48e9e89642bf1795:1654065974', NULL, NULL, 100, 123, '2022-06-01 06:46:15', '2022-06-01 06:47:06'),
(12, NULL, 'guest61438', 'f2c3a0180da2e9bcaf0126d5fd397d22d4139c7e:1654074620', NULL, NULL, 100, 101, '2022-06-01 09:10:21', NULL),
(15, NULL, 'guest10854', '8bc3358f428bd56e48e9e89642bf1795:1654078111', NULL, NULL, 100, 101, '2022-06-01 10:08:32', NULL),
(13, NULL, 'guest1745', 'f2c3a0180da2e9bcaf0126d5fd397d22d4139c7e:1654075521', NULL, NULL, 100, 101, '2022-06-01 09:25:22', NULL),
(14, NULL, 'guest24597', '0d91b81b8f608df62b16465c621655da:1654077261', NULL, NULL, 100, 101, '2022-06-01 09:54:24', NULL),
(16, NULL, 'guest67516', '8bc3358f428bd56e48e9e89642bf1795:1654078242', 'sam@gmail.com', '$2y$10$Z8AFUt2T9O2LZdipIrpRuuIPp6bh/deXgXPwIn8DwEvaWzXsb/Qpm', 100, 101, '2022-06-01 10:10:42', '2022-06-01 10:11:04'),
(17, '101777319487424814006', 'Deepak', '8bc3358f428bd56e48e9e89642bf1795:1654078299', NULL, NULL, 100, 123, '2022-06-01 10:11:39', '2022-06-01 10:12:34'),
(18, NULL, 'Tsietsi', '50e5b7406de14955404688f9b41fd127:1654085294', 'mokoenatsietsi002@gmail.com', '$2y$10$i22F/Y9Q5CBqraCAh/6mKe0S00WD4mJA6ahxGWII0ZF17q2fbZfSK', 100, 123, '2022-06-01 12:08:19', '2022-06-01 12:10:41'),
(19, NULL, 'guest88505', 'f2c3a0180da2e9bcaf0126d5fd397d22d4139c7e:1654093584', NULL, NULL, 100, 101, '2022-06-01 14:26:25', NULL),
(20, NULL, 'guest76562', '50e5b7406de14955404688f9b41fd127:1654191420', NULL, NULL, 100, 101, '2022-06-02 17:37:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_achivements`
--

CREATE TABLE `users_achivements` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_achivements`
--

INSERT INTO `users_achivements` (`id`, `user_id`, `score`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_levels`
--

CREATE TABLE `users_levels` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `xp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_levels`
--

INSERT INTO `users_levels` (`id`, `user_id`, `xp`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `levels_master`
--
ALTER TABLE `levels_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_achivements`
--
ALTER TABLE `users_achivements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_levels`
--
ALTER TABLE `users_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `levels_master`
--
ALTER TABLE `levels_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_achivements`
--
ALTER TABLE `users_achivements`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_levels`
--
ALTER TABLE `users_levels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
