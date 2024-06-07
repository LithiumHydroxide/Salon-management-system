-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 11:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'test', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-07-25 06:21:50'),
(2, 'admin2', 'jos', 712345678, 'jos@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-04-16 09:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(7, '601677931', 'Hudson kibera', 'kibera@gmail.com', 712345678, '4/18/2024', '5:00pm', 'Normal Manicure', '2024-04-16 09:16:19', '', '', '0000-00-00 00:00:00'),
(8, '909173971', 'Rebecca Deng', 'deng@gmail.com', 713234567, '4/20/2024', '4:00pm', 'Rebonding', '2024-04-16 09:17:38', '', '', '0000-00-00 00:00:00'),
(9, '101280091', 'John Kamau', 'kamau@gmail.com', 743165876, '4/20/2024', '3:00pm', 'U-Shape Hair Cut', '2024-04-16 09:18:22', '', '', '0000-00-00 00:00:00'),
(10, '964762831', 'Angelina Jolie', 'jolie@gmail.com', 712345097, '4/27/2024', '11:30am', 'Normal Pedicure', '2024-04-16 09:18:58', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Hudson Kibera', 'kibera@gmail.com', 5546464646, 'Male', 'Taking Hair Spa', '2024-05-15 11:09:10', '2024-05-17 15:15:54'),
(2, 'Rebecca Deng', 'deng@gmail.com', 5565565656, 'Female', 'Fruit Facial', '2024-04-19 11:10:02', NULL),
(3, 'John Kamau', 'kamau@gmail.com', 4646445464, 'Male', 'Layer Haircut', '2024-04-19 11:10:28', NULL),
(4, 'Angelina Jolie', 'jolie@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2024-04-20 13:38:58', NULL),
(5, 'Josphine Ndung\'u', 'jos@gmail.com', 1234567890, 'Female', 'Normal Pedicure', '2024-04-27 16:24:53', '2024-04-27 16:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 2, 621839533, '2024-03-14 15:33:22'),
(2, 2, 5, 621839533, '2024-04-20 15:33:22'),
(3, 2, 6, 621839533, '2024-04-27 15:33:22'),
(4, 2, 7, 621839533, '2024-04-19 15:33:22'),
(5, 1, 1, 904156433, '2024-04-27 15:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '(Umoja inner core/Nairobi/Kenya)', 'jos@gmail.com', 7896541236, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'Full body Massage', 1200, '2024-04-02 11:22:38'),
(2, 'Fruit Facial', 500, '2024-03-21 11:22:53'),
(3, 'Charcoal Facial', 1000, '2024-04-03 11:23:10'),
(4, 'Deluxe Manicure', 500, '2024-04-03 11:23:34'),
(5, 'Deluxe Pedicure', 600, '2024-04-04 11:23:47'),
(6, 'Normal Manicure', 300, '2024-04-05 11:24:01'),
(7, 'Normal Pedicure', 400, '2024-04-05 11:24:19'),
(8, 'U-Shape Hair Cut', 250, '2024-04-02 11:24:38'),
(9, 'Layer Haircut', 550, '2024-04-02 11:24:53'),
(10, 'Rebonding', 3999, '2024-04-03 11:25:08'),
(11, 'Loreal Hair Color(Full)', 1200, '2024-04-02 11:25:35'),
(12, 'Body Spa', 1500, '2024-04-02 13:36:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
