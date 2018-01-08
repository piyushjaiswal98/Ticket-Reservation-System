-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 07:15 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourist`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `first` varchar(128) NOT NULL,
  `last` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `userid` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first`, `last`, `email`, `userid`, `password`) VALUES
('', '', '', '', ''),
('hello', 'refsf', 'sfnsd@dl', 'abc', '123'),
('Roshan', 'Basu', 'roshantapas.basu2015@vit.ac.in', 'faizal', 'kankroli'),
('Harish', 'Chandra', 'har@gmail.com', 'harish', 'chandra@123'),
('Harish1', 'Chandra', 'har1@gmail.com', 'harish1', 'har@123'),
('Harish12', 'Chandra', 'har1@gmail.com', 'harish12', '1234'),
('Harish123', 'Chandra', 'har1@gmail.com', 'harish123', '234'),
('harshit1', 'sharma1', 'harshitsharma.2015@vit.ac.in', 'harish1234', '123456'),
('hello', 'world', 'h1@gmail.com', 'hello', '1234'),
('Harshit', 'Sharma', 'harshitsharma.2015@vit.ac.in', 'hsharma', '1234'),
('Karan', 'Sharma', '1107karan@gmail.com', 'karan', '1107'),
('karan_shar', 'Sharma', 'kkas@gmail.com', 'karan1', '12345'),
('Mayank', 'Gupta', 'mayank.gupta2015@vit.ac.in', 'mggupta', 'mayank1234'),
('Milan', 'Sanadhya', 'milan.sanadhya2015@vit.ac.in', 'msan', 'ms123'),
('Piyush', 'Jaiswal', 'piyush.jaiswal2015@vit.ac.in', 'piyushjais', '12345'),
('hello', 'refsf', 'sfnsd@dl', 'qdeef', '123'),
('qw', 'we', 'wee', 'we', '23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
