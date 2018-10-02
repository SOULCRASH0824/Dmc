-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2018 at 08:12 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpuuday`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblassevent`
--

CREATE TABLE `tblassevent` (
  `eventID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `eventName` varchar(250) NOT NULL,
  `eventYear` varchar(50) NOT NULL,
  `eventSemester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassevent`
--

INSERT INTO `tblassevent` (`eventID`, `deptID`, `eventName`, `eventYear`, `eventSemester`) VALUES
(1, 1, 'BASKETBALL', '', ''),
(2, 1, 'SOFTBALL', '', ''),
(3, 1, 'SWIMMING', '', ''),
(4, 2, 'BASKETBALL', '', ''),
(5, 2, 'LAWN TENNIS', '', ''),
(6, 2, 'QUIZ', '', ''),
(7, 3, 'ORATION', '', ''),
(8, 3, 'BADMINTON', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `catID` int(11) NOT NULL,
  `catName` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`catID`, `catName`) VALUES
(1, 'category1'),
(2, 'category2'),
(3, 'category3');

-- --------------------------------------------------------

--
-- Table structure for table `tbldept`
--

CREATE TABLE `tbldept` (
  `deptID` int(11) NOT NULL,
  `deptName` varchar(50) NOT NULL,
  `deptImage` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldept`
--

INSERT INTO `tbldept` (`deptID`, `deptName`, `deptImage`) VALUES
(1, 'CARES', '1528811116.png'),
(2, 'CAS', '1528811183.jpg'),
(3, 'CBA', '1528811320.jpg'),
(4, 'COED', '1528811338.jpg'),
(5, 'ENGG', '1528811359.jpg'),
(6, 'NURSING', '1528813798.png'),
(7, 'LAW', '1528813825.jpg'),
(8, 'THEO', '1528823249.png'),
(9, 'JHS', '1529438684.png'),
(10, 'SHS', '1531398934.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbldraft`
--

CREATE TABLE `tbldraft` (
  `draftID` int(11) NOT NULL,
  `draftDate` varchar(50) NOT NULL,
  `draftTime` varchar(50) NOT NULL,
  `draftEvent` varchar(100) NOT NULL,
  `draftVenue` varchar(250) NOT NULL,
  `draftChairperson` varchar(250) NOT NULL,
  `draftCoordinator` varchar(250) NOT NULL,
  `draftCommittee` varchar(250) NOT NULL,
  `eventID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldraft`
--

INSERT INTO `tbldraft` (`draftID`, `draftDate`, `draftTime`, `draftEvent`, `draftVenue`, `draftChairperson`, `draftCoordinator`, `draftCommittee`, `eventID`) VALUES
(1, '2017-07-25', '12:00', 'ORATION', 'EMCs', 'Mr. Efraim Alfaras ', 'MP Calvin Eriman', 'Eric Lagradilla', 1),
(2, '2018-09-25', '11:00', 'poerty', 'rma', 'null', 'null', 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

CREATE TABLE `tblevent` (
  `eventID` int(11) NOT NULL,
  `eventName` varchar(150) NOT NULL,
  `eventType` varchar(150) NOT NULL,
  `eventImage` varchar(225) NOT NULL,
  `eventStatus` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`eventID`, `eventName`, `eventType`, `eventImage`, `eventStatus`) VALUES
(1, 'BASKETBALL', 'category3', '1528794381.jpg', 1),
(2, 'SOFTBALL', 'category3', '1528773069.png', 1),
(3, 'FOOTBALL', 'category3', '1528773084.jpg', 1),
(4, 'SWIMMING', 'category3', '1528773120.png', 1),
(5, 'BINALAYBAY', 'category1', '1528816455.jpg', 1),
(6, 'DECLAMATION', 'category1', '1528816579.jpg', 1),
(7, 'GUITAR', 'category1', '1528816703.jpg', 1),
(8, 'ORATION', 'category1', '1528816716.png', 1),
(9, 'BADMINTON', 'category2', '1528816898.jpg', 1),
(10, 'CHESS', 'category2', '1528816911.jpg', 1),
(11, 'LAWN TENNIS', 'category2', '1528816922.png', 1),
(12, 'QUIZ', 'category2', '1528816936.png', 1),
(13, 'FRIZBEE', 'category3', '1530536074.png', 1),
(14, 'TAKRAW', 'category2', '1531492044.jpg', 1),
(15, 'TRIATLON', 'category1', '1530547083.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblguidelines`
--

CREATE TABLE `tblguidelines` (
  `guideID` int(11) NOT NULL,
  `guideName` varchar(4000) NOT NULL,
  `guideImage` varchar(3000) NOT NULL,
  `guideStatus` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblguidelines`
--

INSERT INTO `tblguidelines` (`guideID`, `guideName`, `guideImage`, `guideStatus`) VALUES
(1, 'chess', 'chess1.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `msID` int(11) NOT NULL,
  `msIDNumber` varchar(50) NOT NULL,
  `msName` varchar(50) NOT NULL,
  `msEmail` varchar(50) NOT NULL,
  `msMessage` text NOT NULL,
  `msDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`msID`, `msIDNumber`, `msName`, `msEmail`, `msMessage`, `msDate`) VALUES
(1, '11-0478-93', 'dummy', 'dummy', 'dummy message!', '2018-06-12 18:18:20'),
(2, '11047893', 'Dummy', 'Dummy', 'Sample', '2018-06-13 10:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed`
--

CREATE TABLE `tblnewsfeed` (
  `nfID` int(11) NOT NULL,
  `nfName` varchar(250) NOT NULL,
  `nfImage` varchar(250) NOT NULL,
  `nfStatus` int(2) NOT NULL,
  `nfDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnewsfeed`
--

INSERT INTO `tblnewsfeed` (`nfID`, `nfName`, `nfImage`, `nfStatus`, `nfDate`) VALUES
(1, 'BAKA MAHAWA AKO', '1528822713.jpg', 1, '2018-06-15 03:53:40'),
(2, 'PLAI-WVRLC', '1528823062.jpg', 1, '2018-06-12 18:21:32'),
(3, 'BILIS NG PANAHON', '1529397245.png', 1, '2018-06-19 08:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblpoints`
--

CREATE TABLE `tblpoints` (
  `ptID` int(11) NOT NULL,
  `ptDept` varchar(255) NOT NULL,
  `ptEvent` varchar(255) NOT NULL,
  `ptCategory` varchar(255) NOT NULL,
  `ptPoints` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpoints`
--

INSERT INTO `tblpoints` (`ptID`, `ptDept`, `ptEvent`, `ptCategory`, `ptPoints`) VALUES
(1, 'CARES', '', 'category1', '25'),
(2, '70', '', '', '6'),
(3, '1', '', '', '9'),
(4, 'CARES', 'BASKETBALL', 'category3', '20'),
(5, 'CARES', 'BINALAYBAY', 'category1', '2'),
(6, 'CARES', 'GUITAR', 'category1', '6'),
(7, 'THEO', 'SWIMMING', 'category3', '10'),
(8, 'CARES', 'SWIMMING', 'category3', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tblpointssys`
--

CREATE TABLE `tblpointssys` (
  `psID` int(11) NOT NULL,
  `psCategory` varchar(255) NOT NULL,
  `psPoints` varchar(255) NOT NULL,
  `psPlace` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpointssys`
--

INSERT INTO `tblpointssys` (`psID`, `psCategory`, `psPoints`, `psPlace`) VALUES
(1, 'category1', '10', '1'),
(2, 'category1', '8', '2'),
(3, 'category1', '6', '3'),
(4, 'category1', '4', '4'),
(5, 'category1', '3', '5'),
(6, 'category1', '2', '6'),
(7, 'category1', '1', '7'),
(8, 'category2', '15', '1'),
(9, 'category2', '12', '2'),
(10, 'category2', '9', '3'),
(11, 'category2', '6', '4'),
(12, 'category2', '4', '5'),
(13, 'category2', '3', '6'),
(14, 'category2', '2', '7'),
(15, 'category3', '25', '1'),
(16, 'category3', '20', '2'),
(17, 'category3', '15', '3'),
(18, 'category3', '10', '4'),
(19, 'category3', '6', '5'),
(20, 'category3', '4', '6'),
(21, 'category3', '3', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tblrank`
--

CREATE TABLE `tblrank` (
  `rankID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `rankPoints` varchar(150) NOT NULL,
  `rankYear` varchar(150) NOT NULL,
  `rankSemester` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrank`
--

INSERT INTO `tblrank` (`rankID`, `deptID`, `rankPoints`, `rankYear`, `rankSemester`) VALUES
(1, 1, '95', '', ''),
(2, 2, '55', '', ''),
(3, 3, '', '', ''),
(4, 4, '', '', ''),
(5, 5, '24', '', ''),
(6, 6, '10', '', ''),
(7, 7, '', '', ''),
(8, 8, '10', '', ''),
(9, 9, '30', '', ''),
(10, 10, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblsched`
--

CREATE TABLE `tblsched` (
  `schedID` int(11) NOT NULL,
  `schedBracket` varchar(15) NOT NULL,
  `schedDate` varchar(15) NOT NULL,
  `schedTime` varchar(15) NOT NULL,
  `schedTeam1` varchar(150) NOT NULL,
  `schedTeam2` varchar(100) NOT NULL,
  `schedEvent` varchar(15) NOT NULL,
  `schedEventID` varchar(10) NOT NULL,
  `schedVenue` varchar(200) NOT NULL,
  `schedGender` varchar(10) NOT NULL,
  `schedPoints1` varchar(50) NOT NULL,
  `schedPoints2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsched`
--

INSERT INTO `tblsched` (`schedID`, `schedBracket`, `schedDate`, `schedTime`, `schedTeam1`, `schedTeam2`, `schedEvent`, `schedEventID`, `schedVenue`, `schedGender`, `schedPoints1`, `schedPoints2`) VALUES
(1, 'A', '2018-12-02', '08:03', 'CARES', 'COED', 'BASKETBALL', '', 'EMCas', 'Men', '10', '25'),
(2, 'A', '2018-08-05', '08:30', 'NURSING', 'CBA', 'FOOTBALL', '', 'Football field', 'Men', '1', '2'),
(3, 'Bracket A', '2018-10-11', '11:00', 'CBA', 'ENGG', 'BADMINTON', '', 'gym', 'Male', '1', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `userID` int(11) NOT NULL,
  `userLN` varchar(50) NOT NULL,
  `userFN` varchar(50) NOT NULL,
  `userMN` varchar(50) NOT NULL,
  `userUsername` varchar(50) NOT NULL,
  `userPass` varchar(50) NOT NULL,
  `userType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`userID`, `userLN`, `userFN`, `userMN`, `userUsername`, `userPass`, `userType`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin', 'admin'),
(2, 'CCS', 'ccs', '', '11-0478-93', '11-0478-93', 'LAW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblassevent`
--
ALTER TABLE `tblassevent`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `tbldept`
--
ALTER TABLE `tbldept`
  ADD PRIMARY KEY (`deptID`);

--
-- Indexes for table `tbldraft`
--
ALTER TABLE `tbldraft`
  ADD PRIMARY KEY (`draftID`);

--
-- Indexes for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `tblguidelines`
--
ALTER TABLE `tblguidelines`
  ADD PRIMARY KEY (`guideID`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`msID`);

--
-- Indexes for table `tblnewsfeed`
--
ALTER TABLE `tblnewsfeed`
  ADD PRIMARY KEY (`nfID`);

--
-- Indexes for table `tblpoints`
--
ALTER TABLE `tblpoints`
  ADD PRIMARY KEY (`ptID`);

--
-- Indexes for table `tblpointssys`
--
ALTER TABLE `tblpointssys`
  ADD PRIMARY KEY (`psID`);

--
-- Indexes for table `tblrank`
--
ALTER TABLE `tblrank`
  ADD PRIMARY KEY (`rankID`);

--
-- Indexes for table `tblsched`
--
ALTER TABLE `tblsched`
  ADD PRIMARY KEY (`schedID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblassevent`
--
ALTER TABLE `tblassevent`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbldept`
--
ALTER TABLE `tbldept`
  MODIFY `deptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbldraft`
--
ALTER TABLE `tbldraft`
  MODIFY `draftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblevent`
--
ALTER TABLE `tblevent`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblguidelines`
--
ALTER TABLE `tblguidelines`
  MODIFY `guideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `msID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblnewsfeed`
--
ALTER TABLE `tblnewsfeed`
  MODIFY `nfID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpoints`
--
ALTER TABLE `tblpoints`
  MODIFY `ptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpointssys`
--
ALTER TABLE `tblpointssys`
  MODIFY `psID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblrank`
--
ALTER TABLE `tblrank`
  MODIFY `rankID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsched`
--
ALTER TABLE `tblsched`
  MODIFY `schedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
