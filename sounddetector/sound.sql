-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2018 at 11:53 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sound`
--

-- --------------------------------------------------------

--
-- Table structure for table `sound_logs`
--

CREATE TABLE `sound_logs` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `soundlevel` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sound_logs`
--

INSERT INTO `sound_logs` (`timestamp`, `soundlevel`) VALUES
('2018-07-16 09:19:48', 'Silent'),
('2018-07-16 09:20:08', 'Silent'),
('2018-07-16 09:20:28', 'Silent'),
('2018-07-16 09:20:48', 'Silent'),
('2018-07-16 09:21:09', 'Silent'),
('2018-07-16 09:21:29', 'Silent'),
('2018-07-16 09:21:49', 'Normal'),
('2018-07-16 09:22:09', 'Silent'),
('2018-07-16 09:22:29', 'Silent'),
('2018-07-16 09:22:49', 'Normal'),
('2018-07-16 09:23:09', 'Normal'),
('2018-07-16 09:23:29', 'Silent'),
('2018-07-16 09:23:50', 'Silent'),
('2018-07-16 09:24:10', 'Normal'),
('2018-07-16 09:24:30', 'Normal'),
('2018-07-16 09:24:50', 'Normal'),
('2018-07-16 09:25:10', 'Normal'),
('2018-07-16 09:25:30', 'Normal'),
('2018-07-16 09:25:50', 'Normal'),
('2018-07-16 09:26:11', 'Normal'),
('2018-07-16 09:26:31', 'Silent'),
('2018-07-16 09:26:51', 'Normal'),
('2018-07-16 09:27:11', 'Normal'),
('2018-07-16 09:27:31', 'Silent'),
('2018-07-16 09:27:51', 'Silent'),
('2018-07-16 09:28:11', 'Silent'),
('2018-07-16 09:28:31', 'Normal'),
('2018-07-16 09:28:52', 'Silent'),
('2018-07-16 09:29:12', 'Silent'),
('2018-07-16 09:29:32', 'Normal'),
('2018-07-16 09:29:52', 'Normal'),
('2018-07-16 09:30:12', 'Normal'),
('2018-07-16 09:30:32', 'Normal'),
('2018-07-16 09:30:52', 'Normal'),
('2018-07-16 09:31:13', 'Normal'),
('2018-07-16 09:31:33', 'Normal'),
('2018-07-16 09:31:53', 'Normal'),
('2018-07-16 09:32:13', 'Normal'),
('2018-07-16 09:32:33', 'Normal'),
('2018-07-16 09:32:53', 'Normal'),
('2018-07-16 09:33:13', 'Normal'),
('2018-07-16 09:33:34', 'Normal'),
('2018-07-16 09:33:54', 'Normal'),
('2018-07-16 09:34:14', 'Normal'),
('2018-07-16 09:34:34', 'Normal'),
('2018-07-16 09:34:54', 'Normal'),
('2018-07-16 09:35:14', 'Normal'),
('2018-07-16 09:35:34', 'Normal'),
('2018-07-16 09:35:54', 'Normal'),
('2018-07-16 09:36:15', 'Normal'),
('2018-07-16 09:36:35', 'Normal'),
('2018-07-16 09:36:55', 'Normal'),
('2018-07-16 09:37:15', 'Normal'),
('2018-07-16 09:37:35', 'Normal'),
('2018-07-16 09:37:55', 'Normal'),
('2018-07-16 09:38:15', 'Normal'),
('2018-07-16 09:38:35', 'Normal'),
('2018-07-16 09:38:56', 'Normal'),
('2018-07-16 09:39:16', 'Normal'),
('2018-07-16 09:39:36', 'Normal'),
('2018-07-16 09:39:56', 'Normal'),
('2018-07-16 09:40:16', 'Normal'),
('2018-07-16 09:40:36', 'Normal'),
('2018-07-16 09:40:56', 'Normal'),
('2018-07-16 09:41:17', 'Normal'),
('2018-07-16 09:41:37', 'Normal'),
('2018-07-16 09:41:57', 'Normal'),
('2018-07-16 09:42:17', 'Normal'),
('2018-07-16 09:42:37', 'Normal'),
('2018-07-16 09:42:57', 'Normal'),
('2018-07-16 09:43:17', 'Normal'),
('2018-07-16 09:43:37', 'Normal'),
('2018-07-16 09:43:58', 'Normal'),
('2018-07-16 09:44:18', 'Normal'),
('2018-07-16 09:44:38', 'Normal'),
('2018-07-16 09:44:58', 'Normal'),
('2018-07-16 09:45:18', 'Normal'),
('2018-07-16 09:45:38', 'Normal'),
('2018-07-16 09:45:58', 'Normal'),
('2018-07-16 09:46:18', 'Normal'),
('2018-07-16 09:46:39', 'Normal'),
('2018-07-16 09:46:59', 'Normal'),
('2018-07-16 09:47:19', 'Normal'),
('2018-07-16 09:47:39', 'Normal'),
('2018-07-16 09:47:59', 'Normal'),
('2018-07-16 09:48:19', 'Normal'),
('2018-07-16 09:48:39', 'Normal'),
('2018-07-16 09:49:00', 'Normal'),
('2018-07-16 09:49:20', 'Normal'),
('2018-07-16 09:49:40', 'Normal'),
('2018-07-16 09:50:00', 'Normal'),
('2018-07-16 09:50:20', 'Normal'),
('2018-07-16 09:50:40', 'Normal'),
('2018-07-16 09:51:01', 'Normal'),
('2018-07-16 09:51:21', 'Normal'),
('2018-07-16 09:51:41', 'Normal'),
('2018-07-16 09:52:01', 'Normal'),
('2018-07-16 09:52:21', 'Normal'),
('2018-07-16 09:52:41', 'Normal'),
('2018-07-16 09:53:01', 'Normal'),
('2018-07-16 09:53:22', 'Normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sound_logs`
--
ALTER TABLE `sound_logs`
  ADD PRIMARY KEY (`timestamp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
