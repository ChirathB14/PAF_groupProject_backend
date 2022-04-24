-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 24, 2022 at 12:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrogriddb`
--
CREATE DATABASE IF NOT EXISTS `electrogriddb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `electrogriddb`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `accountID` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(20) NOT NULL,
  `buildingNo` varchar(10) NOT NULL,
  `totalAmtToPay` double NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`accountID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountID`, `city`, `buildingNo`, `totalAmtToPay`, `userID`) VALUES
(1, 'Colobo', '754/A', 8500, 2),
(2, 'Kandy', '45/B', 8745, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `billID` int(11) NOT NULL AUTO_INCREMENT,
  `accountID` int(10) NOT NULL,
  `unitUsage` int(11) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`billID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`billID`, `accountID`, `unitUsage`, `month`, `year`, `amount`) VALUES
(1, 25, 95, '08', '2022', 750),
(2, 12, 85, '05', '2022', 742);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `accountID` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payMethod` varchar(10) NOT NULL,
  `payDate` varchar(15) NOT NULL,
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `accountID`, `amount`, `payMethod`, `payDate`) VALUES
(2, 2, 1000, 'card', '12/05/2022'),
(3, 5, 1542, 'bank', '05/07/2022'),
(4, 3, 9560, 'card', '05/12/2022');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `userNIC` varchar(20) NOT NULL,
  `userPhoneNo` varchar(12) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `userNIC`, `userPhoneNo`, `userEmail`) VALUES
(1, 'Kamal', '12457865', '0712345678', 'kamal@gmail.com'),
(5, 'sriyani', '48795612345', '074568953', 'sriyani@gmail.com'),
(6, 'kanthi', '4759561235', '072356985', 'kanthi@gmail.com'),
(9, 'siripala', '4579953214', '0735689458', 'siripala@gmail.com'),
(10, 'Amarapala', '1245967', '0124598', 'amarapala@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
