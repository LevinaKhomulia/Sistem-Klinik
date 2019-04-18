-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2019 at 01:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `MedRec`
--

CREATE TABLE `MedRec` (
  `MedID` varchar(20) NOT NULL,
  `PatientID` varchar(20) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `AppDate` date NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MedRec`
--

INSERT INTO `MedRec` (`MedID`, `PatientID`, `FullName`, `AppDate`, `Description`) VALUES
('2019041800001', '00001', 'Cynthia', '2019-04-18', 'Y'),
('2019041800002', '00004', 'Grizzly', '2019-04-18', 'asdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `PatientID` varchar(20) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Age` int(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `Address` text NOT NULL,
  `Appointment` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`PatientID`, `FullName`, `Age`, `Gender`, `DOB`, `Address`, `Appointment`, `Status`) VALUES
('00001', 'Cynthia', 19, 'Female', '2018-09-18', 'jln medan', '2019-04-18', 'Done'),
('00003', 'panda', 20, 'Female', '2019-01-13', 'jalan medan', '2019-04-17', 'Done'),
('00004', 'Grizzly', 20, 'Female', '2019-04-10', 'jalan medan', '2019-04-18', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Full Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Username`, `Password`, `Full Name`) VALUES
('admin', 'admin', 'admin'),
('doctor', 'doctor', 'doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MedRec`
--
ALTER TABLE `MedRec`
  ADD PRIMARY KEY (`MedID`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
