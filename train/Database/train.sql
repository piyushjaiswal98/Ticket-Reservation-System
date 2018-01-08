-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 07:05 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `train`
--

-- --------------------------------------------------------

--
-- Table structure for table `canc`
--

CREATE TABLE `canc` (
  `pnr` int(11) NOT NULL,
  `rfare` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canc`
--

INSERT INTO `canc` (`pnr`, `rfare`) VALUES
(45, 1100),
(49, 5600),
(64, 1210),
(65, 850),
(66, 850),
(73, 2200),
(74, 1100),
(80, 375);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cname`) VALUES
('AC1'),
('AC2'),
('AC3'),
('CC'),
('EC'),
('SL');

-- --------------------------------------------------------

--
-- Table structure for table `classseats`
--

CREATE TABLE `classseats` (
  `trainno` int(11) NOT NULL,
  `tname` varchar(50) NOT NULL,
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `doj` date NOT NULL,
  `class` varchar(10) NOT NULL,
  `fare` int(11) NOT NULL,
  `seatsleft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classseats`
--

INSERT INTO `classseats` (`trainno`, `tname`, `sp`, `dp`, `doj`, `class`, `fare`, `seatsleft`) VALUES
(12, 'Shatabdi Express', 'Chandigarh', 'Jaipur', '2017-10-26', 'AC3', 2400, 59),
(12, 'Shatabdi Express', 'Chandigarh', 'Jaipur', '2017-10-26', 'SL', 500, 199),
(12, 'Shatabdi Express', 'Chandigarh', 'Jaipur', '2017-10-27', 'EC', 1200, 99),
(12, 'Shatabdi Express', 'Chandigarh', 'Jaipur', '2017-10-30', 'AC1', 2200, 104),
(12, 'Shatabdi Express', 'Chandigarh', 'Jaipur', '2017-11-02', 'AC1', 2000, 32),
(12, 'Shatabdi Express', 'Chandigarh', 'Jaipur', '2017-12-20', 'AC1', 3200, 20),
(12, 'Shatabdi Express', 'Jaipur', 'Kolkata', '2017-10-26', 'AC1', 1434, 243),
(12, 'Shatabdi Express', 'Jaipur', 'Kolkata', '2017-10-27', 'AC1', 2900, 15),
(12, 'Shatabdi Express', 'Jaipur', 'Kolkata', '2017-10-27', 'EC', 1500, 120),
(12, 'Shatabdi Express', 'Jaipur', 'Kolkata', '2017-10-30', 'AC3', 2100, 40),
(12, 'Shatabdi Express', 'Jaipur', 'Kolkata', '2017-12-13', 'SL', 800, 250),
(12, 'Shatabdi Express', 'Kolkata', 'Lucknow', '2017-10-26', 'AC1', 3100, 30),
(12, 'Shatabdi Express', 'Kolkata', 'Lucknow', '2017-10-27', 'AC1', 934, 322),
(12, 'Shatabdi Express', 'Kolkata', 'Lucknow', '2017-10-27', 'AC3', 1900, 30),
(12, 'Shatabdi Express', 'Kolkata', 'Lucknow', '2017-10-30', 'SL', 700, 220),
(12, 'Shatabdi Express', 'Kolkata', 'Lucknow', '2017-12-13', 'EC', 1700, 150),
(12, 'Shatabdi Express', 'Lucknow', 'Delhi', '2017-10-26', 'SL', 900, 180),
(12, 'Shatabdi Express', 'Lucknow', 'Delhi', '2017-10-27', 'AC1', 344, 326),
(12, 'Shatabdi Express', 'Lucknow', 'Delhi', '2017-10-27', 'AC3', 2350, 60),
(12, 'Shatabdi Express', 'Lucknow', 'Delhi', '2017-10-30', 'EC', 1100, 118),
(12, 'Shatabdi Express', 'Lucknow', 'Delhi', '2017-12-13', 'AC1', 2750, 20),
(14, 'Jammu Mail Express', 'Allahbad', 'Delhi', '2017-10-27', 'AC2', 3000, 7),
(18, 'Chandigarh Delhi Shatabdi', 'Chandigarh', 'Jaipur', '2017-10-27', 'AC1', 2420, 48),
(18, 'Chandigarh Delhi Shatabdi', 'Chandigarh', 'Jaipur', '2017-10-28', 'AC3', 1700, 15),
(18, 'Chandigarh Delhi Shatabdi', 'Chandigarh', 'Jaipur', '2017-11-12', 'CC', 750, 120),
(18, 'Chandigarh Delhi Shatabdi', 'Jaipur', 'Delhi', '2017-10-26', 'CC', 900, 150),
(18, 'Chandigarh Delhi Shatabdi', 'Jaipur', 'Delhi', '2017-10-27', 'AC3', 1200, 20),
(18, 'Chandigarh Delhi Shatabdi', 'Jaipur', 'Delhi', '2017-10-30', 'AC1', 2750, 20),
(20, 'Frontier Express', 'Delhi', 'Jaipur', '2017-10-27', 'AC1', 4500, 20),
(20, 'Frontier Express', 'Delhi', 'Jaipur', '2017-10-28', 'AC2', 3200, 50),
(20, 'Frontier Express', 'Delhi', 'Jaipur', '2017-10-30', 'SL', 900, 300),
(20, 'Frontier Express', 'Delhi', 'Jaipur', '2017-11-12', 'AC3', 2700, 50);

--
-- Triggers `classseats`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_classseats` BEFORE INSERT ON `classseats` FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = 'Check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_classseats` BEFORE UPDATE ON `classseats` FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pd`
--

CREATE TABLE `pd` (
  `pnr` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `page` int(11) NOT NULL,
  `pgender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pd`
--

INSERT INTO `pd` (`pnr`, `pname`, `page`, `pgender`) VALUES
(58, 'akhil', 20, 'M'),
(58, 'deepak', 21, 'M'),
(58, 'rahul', 12, 'M'),
(58, 'shyam', 50, 'M'),
(59, 'abhinav', 20, 'M'),
(59, 'vikas', 40, 'M'),
(60, 'mohan', 20, 'M'),
(61, 'Milan', 23, 'M'),
(61, 'Piyush', 19, 'M'),
(61, 'Piyush', 20, 'M'),
(64, 'aslhd', 18, 'M'),
(64, 'kaan', 20, 'M'),
(64, 'kjasdg', 62, 'F'),
(65, 'Mayank Gupta', 20, 'M'),
(65, 'piyush', 20, 'M'),
(65, 'Piyush Jaiswal', 20, 'M'),
(73, 'adj', 23, 'M'),
(73, 'Harshit', 21, 'M'),
(73, 'karan', 20, 'M'),
(73, 'lsfls', 30, 'M'),
(73, 'Piyush', 20, 'M'),
(73, 'Piyush', 21, 'M'),
(78, 'K', 20, 'M'),
(78, 'ks', 20, 'M'),
(80, 'Faizal', 45, 'F');

--
-- Triggers `pd`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_pd` BEFORE INSERT ON `pd` FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_pd` BEFORE UPDATE ON `pd` FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `resv`
--

CREATE TABLE `resv` (
  `pnr` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `uid` varchar(30) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL,
  `dp` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `tfare` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `nos` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resv`
--

INSERT INTO `resv` (`pnr`, `id`, `uid`, `trainno`, `sp`, `dp`, `doj`, `tfare`, `class`, `nos`, `status`) VALUES
(64, '', 'faizal', 18, 'Chandigarh', 'Jaipur', '2017-10-27', 2420, 'AC1', 1, 'CANCELLED'),
(65, '', 'piyushjais', 18, 'Chandigarh', 'Jaipur', '2017-10-28', 1700, 'AC3', 1, 'CANCELLED'),
(66, '1', 'piyushjais', 18, 'Chandigarh', 'Jaipur', '2017-10-28', 1700, 'AC3', 1, 'CANCELLED'),
(67, '1', 'piyushjais', 18, 'Chandigarh', 'Jaipur', '2017-10-28', 1700, 'AC3', 1, 'BOOKED'),
(68, '1', 'piyushjais', 18, 'Chandigarh', 'Jaipur', '2017-10-28', 1700, 'AC3', 1, 'BOOKED'),
(69, '1', 'piyushjais', 18, 'Chandigarh', 'Jaipur', '2017-10-28', 1700, 'AC3', 1, 'BOOKED'),
(70, '1', 'faizal', 12, 'Chandigarh', 'Jaipur', '2017-10-27', 1200, 'EC', 1, 'BOOKED'),
(71, '1', 'faizal', 18, 'Chandigarh', 'Jaipur', '2017-10-27', 4840, 'AC1', 2, 'BOOKED'),
(72, '1', 'piyushjais', 18, 'Chandigarh', 'Jaipur', '2017-10-28', 3400, 'AC3', 2, 'BOOKED'),
(73, '1', 'piyushjais', 12, 'Chandigarh', 'Jaipur', '2017-10-30', 4400, 'AC1', 2, 'CANCELLED'),
(74, '1', 'piyushjais', 12, 'Chandigarh', 'Jaipur', '2017-10-30', 2200, 'AC1', 1, 'CANCELLED'),
(75, '1', 'harshit1234', 12, 'Chandigarh', 'Jaipur', '2017-10-30', 2200, 'AC1', 1, 'CANCELLED'),
(76, '1', 'harish1234', 12, 'Chandigarh', 'Jaipur', '2017-10-30', 2200, 'AC1', 1, 'BOOKED'),
(77, '1', 'piyushjais', 12, 'Chandigarh', 'Jaipur', '2017-10-30', 2200, 'AC1', 1, 'BOOKED'),
(78, '1', 'karan', 12, 'Chandigarh', 'Jaipur', '2017-11-02', 2000, 'AC1', 1, 'CANCELLED'),
(79, '1', 'karan', 12, 'Chandigarh', 'Jaipur', '2017-11-02', 2000, 'AC1', 1, 'CANCELLED'),
(80, '1', 'faizal', 18, 'Chandigarh', 'Jaipur', '2017-11-12', 750, 'CC', 1, 'CANCELLED');

--
-- Triggers `resv`
--
DELIMITER $$
CREATE TRIGGER `after_insert_on_resv` AFTER INSERT ON `resv` FOR EACH ROW begin
UPDATE classseats SET seatsleft=seatsleft-new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_on_resv` AFTER UPDATE ON `resv` FOR EACH ROW begin
if (new.status='CANCELLED' AND datediff(new.doj,curdate())<0 ) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cancellation Not Possible!!!!';
end if;

if (new.status='CANCELLED' AND datediff(new.doj,curdate())>0 )then
UPDATE classseats SET seatsleft=seatsleft+new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
 if datediff(new.doj,curdate())>=30 then 
 INSERT INTO canc values (new.pnr,new.tfare);
 end if;
 if datediff(new.doj,curdate())<30 then 
 INSERT INTO canc values (new.pnr,0.5*new.tfare);
 end if;
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_on_resv` BEFORE INSERT ON `resv` FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
if datediff(new.doj,curdate())<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Booking Not Possible!!!!';
end if;
SET new.status='BOOKED';
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_resv` BEFORE UPDATE ON `resv` FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `trainno`, `sname`, `arrival_time`, `departure_time`, `distance`) VALUES
(1, 12, 'Chandigarh', '01:00:12', '01:00:00', 0),
(2, 12, 'Jaipur', '03:45:15', '03:50:00', 100),
(3, 12, 'Kolkata', '05:00:00', '05:15:00', 300),
(4, 12, 'Lucknow', '11:50:10', '12:00:00', 450),
(5, 12, 'Delhi', '16:30:00', '16:30:00', 600),
(6, 13, 'Jammu Kashmir', '22:00:00', '22:00:00', 0),
(7, 13, 'Delhi', '04:00:00', '04:05:00', 700),
(8, 13, 'Rajasthan', '07:30:50', '07:33:00', 900),
(9, 13, 'Allahbad', '09:00:00', '09:10:00', 1700),
(10, 13, 'Patna', '11:45:00', '11:47:00', 2500),
(11, 13, 'Madhya Pradesh', '13:00:00', '13:00:00', 3600),
(12, 14, 'Jammu Kashmir', '01:00:12', '01:00:12', 0),
(13, 14, 'Madras', '22:00:00', '22:00:00', 2500),
(14, 15, 'Delhi', '16:00:00', '16:00:00', 0),
(15, 15, 'Jaipur', '22:45:00', '22:45:00', 800),
(16, 16, 'Jaipur', '03:30:00', '03:30:00', 0),
(17, 16, 'Delhi', '09:30:00', '09:30:00', 800),
(18, 17, 'Delhi', '00:00:14', '00:00:14', 0),
(19, 17, 'Jaipur', '16:00:00', '16:10:00', 500),
(20, 17, 'Chandigarh', '20:30:00', '20:30:00', 1200),
(21, 18, 'Chandigarh', '08:05:00', '08:05:00', 0),
(22, 18, 'Jaipur', '10:15:00', '10:20:00', 700),
(23, 18, 'Delhi', '14:00:00', '14:00:00', 1200),
(24, 6, 'Jaipur', '03:30:00', '03:30:00', 0),
(25, 6, 'Allahbad', '08:00:00', '08:15:00', 200),
(26, 6, 'Lucknow', '15:15:00', '15:15:00', 700),
(27, 19, 'Lucknow', '13:30:00', '13:30:00', 0),
(28, 19, 'Allahbad', '20:00:00', '20:10:00', 300),
(29, 19, 'Jaipur', '05:15:00', '05:15:00', 700),
(30, 20, 'Delhi', '10:04:00', '10:04:00', 0),
(31, 20, 'Jaipur', '16:00:00', '16:00:00', 800),
(32, 21, 'Jaipur', '20:00:00', '20:00:00', 0),
(33, 21, 'Delhi', '10:00:00', '10:00:00', 800),
(34, 22, 'Delhi', '16:35:00', '16:35:00', 0),
(35, 22, 'Rajasthan', '20:00:00', '20:10:00', 1100),
(36, 22, 'Madhya Pradesh', '03:30:00', '03:33:00', 1500),
(37, 22, 'Mumbai', '09:00:00', '09:00:00', 2300),
(38, 23, 'Mumbai', '01:00:00', '01:00:00', 0),
(39, 23, 'Madhya Pradesh', '05:30:00', '05:40:00', 1500),
(40, 23, 'Rajasthan', '15:45:00', '15:50:00', 2000),
(41, 23, 'Delhi', '20:30:00', '20:30:00', 2300);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `sname`) VALUES
(1, 'Chandigarh'),
(2, 'Delhi'),
(3, 'Jaipur'),
(4, 'Lucknow'),
(5, 'Mumbai'),
(6, 'Allahbad'),
(7, 'Kolkata'),
(8, 'Patna'),
(9, 'Madras'),
(10, 'Jammu Kashmir'),
(11, 'Rajasthan'),
(12, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `trainno` int(11) NOT NULL COMMENT 'Train_no',
  `tname` varchar(50) NOT NULL COMMENT 'Train_name',
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `st` time NOT NULL COMMENT 'Arrival_Time',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `dt` time NOT NULL,
  `dd` varchar(10) DEFAULT NULL COMMENT 'Day',
  `distance` int(11) NOT NULL COMMENT 'Distance'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`trainno`, `tname`, `sp`, `st`, `dp`, `dt`, `dd`, `distance`) VALUES
(6, 'Ashram Express', 'Jaipur', '10:00:00', 'Lucknow', '21:30:00', 'Day 1', 700),
(12, 'Shatabdi Express', 'Chandigarh', '01:00:12', 'Delhi', '16:30:00', 'Day 1', 600),
(13, 'Harijan Express', 'Jammu Kashmir', '22:00:00', 'Madhya Pradesh', '13:00:00', 'Day2', 3600),
(14, 'Jammu Mail Express', 'Jammu Kashmir', '01:00:12', 'Madras', '22:00:00', 'Day 1', 2500),
(15, 'Delhi Jaipur Double Decker', 'Delhi', '16:00:00', 'Jaipur', '22:45:00', 'Day 1', 800),
(16, 'Jaipur Delhi Double Decker', 'Jaipur', '03:30:00', 'Delhi', '09:30:00', 'Day 1', 800),
(17, 'Delhi Chandigarh Shatabdi', 'Delhi', '00:00:14', 'Chandigarh', '20:30:00', 'Day 1', 1200),
(18, 'Chandigarh Delhi Shatabdi', 'Chandigarh', '08:05:00', 'Delhi', '14:00:00', 'Day 2', 1200),
(19, 'Ashram Express', 'Lucknow', '13:30:00', 'Jaipur', '05:15:00', 'Day 2', 700),
(20, 'Frontier Express', 'Delhi', '10:04:00', 'Jaipur', '16:00:00', 'Day 1', 800),
(21, 'Frontier Express', 'Jaipur', '20:00:00', 'Delhi', '10:00:00', 'Day 2', 800),
(22, 'Rajdhani Express', 'Delhi', '16:35:00', 'Mumbai', '09:00:00', 'Day 2 ', 2300),
(23, 'Rajdhani Express', 'Mumbai', '01:00:00', 'Delhi', '20:30:00', 'Day 1', 2300);

--
-- Triggers `train`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_train` BEFORE INSERT ON `train` FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
if (new.dp=new.sp) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Same Starting & Destination Points not allowed';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_train` BEFORE UPDATE ON `train` FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `password` varchar(50) NOT NULL,
  `mobileno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`password`, `mobileno`) VALUES
('aakash', '9013452635'),
('chirag', '9123456789'),
('garvit', '9312201852'),
('deepak', '9312201853'),
('dhruv', '9807890453'),
('ayush', '9810150525'),
('akhil', '9872231234'),
('abhinav', '9876675567'),
('aman', '9878876654');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_user` BEFORE INSERT ON `user` FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_user` BEFORE UPDATE ON `user` FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canc`
--
ALTER TABLE `canc`
  ADD PRIMARY KEY (`pnr`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `classseats`
--
ALTER TABLE `classseats`
  ADD PRIMARY KEY (`trainno`,`sp`,`dp`,`doj`,`class`),
  ADD KEY `class` (`class`),
  ADD KEY `sp` (`sp`,`dp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `pd`
--
ALTER TABLE `pd`
  ADD PRIMARY KEY (`pnr`,`pname`,`page`,`pgender`);

--
-- Indexes for table `resv`
--
ALTER TABLE `resv`
  ADD PRIMARY KEY (`pnr`),
  ADD KEY `FK_TN_DOJ_C` (`trainno`,`doj`,`class`),
  ADD KEY `sp` (`sp`,`dp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainno` (`trainno`),
  ADD KEY `sname` (`sname`),
  ADD KEY `id` (`id`),
  ADD KEY `distance` (`distance`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`sname`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`trainno`),
  ADD KEY `sp` (`sp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `UNIQUEMN` (`mobileno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resv`
--
ALTER TABLE `resv`
  MODIFY `pnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `trainno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Train_no', AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `classseats`
--
ALTER TABLE `classseats`
  ADD CONSTRAINT `classseats_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `classseats_ibfk_3` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_4` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_5` FOREIGN KEY (`class`) REFERENCES `class` (`cname`);

--
-- Constraints for table `resv`
--
ALTER TABLE `resv`
  ADD CONSTRAINT `resv_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `resv_ibfk_2` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `resv_ibfk_3` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
