-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 09:50 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietgram`
--

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `likes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `username`, `url`, `caption`, `likes`) VALUES
(1, 'ghanikamil', 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/12/14/14/Nostradamus.jpg?w968h681', 'scary', 69000),
(2, 'ghanikamil', 'https://i.pinimg.com/originals/ba/15/e7/ba15e794557f4fbb779b5858d3b7623d.jpg', 'kawaii', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `username`, `name`, `website`, `bio`, `email`, `phonenumber`, `gender`) VALUES
(1, 'ghanikamil', 'Ghani Kamil', 'https://telkomuniversity.ac.id', 'yang patah tumbuh yang hilang kan berganti                    ', 'ghanikamil@gmail.com', '085236167522', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`) VALUES
('ghanikamil', 'ghanikamil', 'ghanikamil@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
