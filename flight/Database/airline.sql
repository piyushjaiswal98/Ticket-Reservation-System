-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 07:07 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `nick`, `password`) VALUES
(1, 'Admin', '8402712c14c498f45ae62ae0f9ece5f2');

-- --------------------------------------------------------

--
-- Table structure for table `booked_places`
--

CREATE TABLE `booked_places` (
  `booked_place_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `place_number` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booked_places`
--

INSERT INTO `booked_places` (`booked_place_id`, `book_id`, `place_number`) VALUES
(1, 1, '5_2'),
(2, 2, '6_1'),
(3, 2, '6_2'),
(4, 2, '6_3'),
(5, 3, '7_1'),
(6, 3, '7_2'),
(7, 3, '6_3'),
(8, 4, '8_1'),
(9, 4, '9_1'),
(10, 5, '7_1'),
(11, 5, '7_2'),
(12, 5, '7_3'),
(13, 6, '8_1'),
(14, 6, '8_2'),
(15, 8, '8_1'),
(16, 8, '8_2'),
(17, 9, '5_1'),
(18, 10, '5_2'),
(19, 11, '5_2'),
(20, 12, '5_1'),
(21, 12, '5_2'),
(24, 15, '1_1'),
(25, 16, '1_1');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `adult_quantity` int(2) DEFAULT NULL,
  `child_quantity` int(2) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `check_status` varchar(11) DEFAULT 'not chacked',
  `unic_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `flight_id`, `person_id`, `adult_quantity`, `child_quantity`, `total_price`, `check_status`, `unic_code`) VALUES
(1, 2, 2, 1, 0, 200, 'not chacked', NULL),
(2, 4, 1, 2, 1, 550, 'not chacked', NULL),
(3, 6, 1, 2, 1, 1450, 'not chacked', NULL),
(4, 2, 4, 1, 1, 350, 'checked', 'Giorgi4Al'),
(5, 2, 8, 2, 1, 550, 'checked', 'Guram8Ge'),
(6, 4, 5, 1, 1, 350, 'checked', 'Iveri5Ke'),
(8, 6, 5, 1, 1, 950, 'checked', 'Iveri5Ke'),
(9, 4, 6, 1, 0, 200, 'checked', 'Iveri6Ba'),
(10, 4, 9, 1, 0, 200, 'checked', 'Mariam9Ch'),
(11, 6, 9, 1, 0, 500, 'checked', 'Mariam9Ch'),
(12, 17, 10, 1, 1, 350, 'checked', 'Akaki10Si'),
(15, 3, 7, 1, 0, 250, 'checked', 'Tamar7Gu'),
(16, 5, 7, 1, 0, 600, 'checked', 'Tamar7Gu'),
(17, 11, 11, 4, 3, 4050, 'not chacked', 'Piyush11Ja');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `plain_id` int(11) DEFAULT NULL,
  `departure_city` varchar(25) NOT NULL,
  `arrival_city` varchar(25) NOT NULL,
  `departure_time` timestamp NULL DEFAULT NULL,
  `arrival_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `class_name` varchar(20) NOT NULL,
  `seats` int(2) NOT NULL,
  `adult_price` double NOT NULL,
  `child_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `plain_id`, `departure_city`, `arrival_city`, `departure_time`, `arrival_time`, `class_name`, `seats`, `adult_price`, `child_price`) VALUES
(1, 1, 'Bangalore', 'Chennai', '2017-11-01 08:00:00', '2017-11-01 09:00:00', 'economy', 18, 1000, 250),
(2, 1, 'Bangalore', 'Chennai', '2017-11-02 08:00:00', '2017-11-02 09:00:00', 'business', 48, 4000, 2000),
(3, 2, 'Bangalore', 'Mumbai', '2017-10-31 23:00:00', '2017-11-01 00:00:00', 'business', 18, 2500, 200),
(4, 2, 'Bangalore', 'Kolkata', '2017-11-01 23:00:00', '2017-11-02 00:00:00', 'economy', 48, 2000, 150),
(5, 3, 'Chandigarh', 'Jaipur', '2017-11-03 02:00:00', '2017-11-03 05:00:00', 'business', 18, 6000, 550),
(6, 3, 'Chandigarh', 'Delhi', '2017-11-03 02:00:00', '2017-11-03 05:00:00', 'economy', 48, 5000, 450),
(7, 4, 'Chennai', 'Patna', '2017-11-01 11:00:00', '2017-11-01 13:00:00', 'business', 18, 25000, 200),
(8, 4, 'Patna', 'Bangalore', '2017-11-02 11:00:00', '2017-01-02 13:00:00', 'economy', 48, 6000, 180),
(9, 4, 'Kolkata', 'Delhi', '2017-10-31 11:00:00', '2017-10-31 15:00:00', 'business', 18, 11000, 200),
(10, 4, 'Kolkata', 'Mumbai', '2017-10-31 11:00:00', '2017-10-31 15:00:00', 'economy', 48, 2000, 180),
(11, 3, 'Jaipur', 'Chennai', '2017-10-31 05:00:00', '2017-10-31 13:00:00', 'business', 18, 13000, 550),
(12, 3, 'Bhopal', 'Bangalore', '2017-11-01 05:00:00', '2017-11-01 13:00:00', 'economy', 48, 5000, 450),
(13, 2, 'Ahmedabad', 'Lucknow', '2017-11-02 16:00:00', '2017-11-01 19:00:00', 'business', 18, 15000, 200),
(14, 2, 'Pune', 'Chennai', '2017-11-01 16:00:00', '2017-11-01 19:00:00', 'economy', 48, 4000, 150),
(15, 1, 'Indore', 'Bangalore', '2017-11-02 08:00:00', '2017-11-02 11:00:00', 'business', 18, 12000, 250),
(16, 1, 'Bangalore', 'Indore', '2017-11-03 08:00:00', '2017-11-03 11:00:00', 'economy', 48, 4000, 150),
(17, 1, 'Indore', 'Kolkata', '2017-11-04 08:00:00', '2017-11-04 09:00:00', 'economy', 48, 5000, 150),
(18, 1, 'Kolkata', 'Mumbai', '2017-11-04 08:00:00', '2017-11-04 09:00:00', 'business', 18, 17000, 250);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `pay_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `pay_type` varchar(10) DEFAULT 'card',
  `card_number` varchar(20) DEFAULT NULL,
  `unic_number` varchar(3) DEFAULT NULL,
  `payment_amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`pay_id`, `book_id`, `person_id`, `pay_type`, `card_number`, `unic_number`, `payment_amount`) VALUES
(1, 1, 2, 'card', '2305-1202-2309-1201', '137', 200),
(2, 2, 1, 'card', '3406-5040-1240-3202', '321', 550),
(3, 3, 1, 'card', '3406-5040-1240-3202', '321', 1450),
(4, 4, 4, 'card', '3012-2908-2109-2301', '211', 350),
(5, 5, 8, 'card', '1202-2101-4578-9890', '909', 550),
(6, 6, 5, 'card', '3201-2398-4389-5476', '546', 350),
(7, 8, 5, 'card', '3201-2398-4389-5476', '546', 950),
(8, 9, 6, 'card', '3202-1203-4309-2309', '321', 200),
(9, 10, 9, 'card', '3201-2312-3212-9087', '324', 200),
(10, 11, 9, 'card', '3201-2312-3212-9087', '324', 500),
(11, 12, 10, 'card', '3112-2958-2129-2301', '312', 350),
(14, 15, 7, 'card', '2109-3210-5409-8798', '989', 250),
(15, 16, 7, 'card', '2109-3210-5409-8798', '989', 600),
(16, 17, 11, 'card', '324567234567', '234', 4050);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `person_id` int(11) NOT NULL,
  `person_name` varchar(30) NOT NULL,
  `person_surname` varchar(30) NOT NULL,
  `perons_id` varchar(11) NOT NULL,
  `password` varchar(150) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`person_id`, `person_name`, `person_surname`, `perons_id`, `password`, `date_of_birth`, `gender`, `email`) VALUES
(1, 'Anri', 'Morchiladze', '01019021234', '', '1994-06-18', 'male', 'anri@yahoo.com'),
(2, 'Shota', 'Lezhava', '01019062902', '', '1994-11-27', 'male', 'shota@yahoo.com'),
(4, 'Giorgi', 'Aladashvili', '02010521981', '0e5fa1ec93b54b230f9d34b3f16989c5', '1994-08-30', 'male', 'giorgi1994@gmail.com'),
(5, 'Iveri', 'Kervalishvili', '02010521101', 'bb6e1912243fdd8deba969f2e251c0ea', '1994-10-27', 'male', 'kervala@gmail.com'),
(6, 'Iveri', 'Balakhashvili', '06010521101', 'bb6e1912243fdd8deba969f2e251c0ea', '1994-10-05', 'male', 'iveri94@gmail.com'),
(7, 'Tamar', 'Gudavadze', '01012310341', 'bb6e1912243fdd8deba969f2e251c0ea', '1990-08-15', 'female', 'tamuna123@yahoo.com'),
(8, 'Guram', 'Gelkhauri', '00012109101', 'fa4fce93355d42bdd12b23bebdfb8ebb', '1998-12-12', 'male', 'gurami98@gmail.com'),
(9, 'Mariam', 'Chachava', '12329812901', '3aa3b7f331de3dbfb49d4b5176b11397', '1996-12-03', 'female', 'mariam96@gmail.com'),
(10, 'Akaki', 'Sirbiladze', '02302190291', '59a5aa0a9a17b8aa7479ebbe54472c08', '1990-08-21', 'male', 'kako@yahoo.com'),
(11, 'Piyush', 'Jaiswal', '1234', '6c9eade90944798090869b4c21ee9632', '1998-09-30', 'male', 'Piyush@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `plains`
--

CREATE TABLE `plains` (
  `plain_id` int(11) NOT NULL,
  `plain_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plains`
--

INSERT INTO `plains` (`plain_id`, `plain_name`) VALUES
(1, 'Boeing 707'),
(2, 'Boeing 708'),
(3, 'Airbus A320'),
(4, 'Boeing 710'),
(5, 'Airbus A330'),
(6, 'Boeing 777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_places`
--
ALTER TABLE `booked_places`
  ADD PRIMARY KEY (`booked_place_id`),
  ADD KEY `fk_book_id1` (`book_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `book_index` (`book_id`),
  ADD KEY `fk_flight_id` (`flight_id`),
  ADD KEY `fk_person_id` (`person_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD UNIQUE KEY `flight_index` (`flight_id`),
  ADD KEY `fk_plain_id` (`plain_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD UNIQUE KEY `pay_index` (`pay_id`),
  ADD KEY `fk_book_id` (`book_id`),
  ADD KEY `fk_person_id1` (`person_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `persons_index` (`person_id`);

--
-- Indexes for table `plains`
--
ALTER TABLE `plains`
  ADD PRIMARY KEY (`plain_id`),
  ADD UNIQUE KEY `plain_index` (`plain_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `booked_places`
--
ALTER TABLE `booked_places`
  MODIFY `booked_place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `plains`
--
ALTER TABLE `plains`
  MODIFY `plain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked_places`
--
ALTER TABLE `booked_places`
  ADD CONSTRAINT `fk_book_id1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`),
  ADD CONSTRAINT `fk_person_id` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`);

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `fk_plain_id` FOREIGN KEY (`plain_id`) REFERENCES `plains` (`plain_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `fk_person_id1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
