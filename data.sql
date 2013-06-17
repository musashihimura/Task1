-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2013 at 01:49 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `condo`
--

CREATE TABLE IF NOT EXISTS `condo` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `SwimmingPool` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `idx_PID` (`PID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `condo`
--

INSERT INTO `condo` (`ID`, `PID`, `SwimmingPool`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hdb`
--

CREATE TABLE IF NOT EXISTS `hdb` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PID` bigint(20) NOT NULL,
  `HDBBlock` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_PID` (`PID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hdb`
--

INSERT INTO `hdb` (`ID`, `PID`, `HDBBlock`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) DEFAULT '1',
  `Title` char(255) DEFAULT '',
  `Address` text NOT NULL,
  `Bedroom` int(11) DEFAULT '0',
  `Living_room` int(11) DEFAULT '0',
  `Diningroom` int(11) DEFAULT '0',
  `Size` decimal(6,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`ID`, `Type`, `Title`, `Address`, `Bedroom`, `Living_room`, `Diningroom`, `Size`) VALUES
(1, 1, '1', '1123123123', 1, 2, 3, 5.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
