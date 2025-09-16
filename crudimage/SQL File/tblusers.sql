-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2025 at 06:09 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Address`, `ProfilePic`, `CreationDate`) VALUES
(1, 'Aden ', 'Momo', 6012342230, 'Aden@gmail.com', 'Johor', 'Aden.jpg', '2025-06-17 03:51:39'),
(2, 'Michael ', 'Buble', 1234567890, 'Michael@gmail.com', 'New York', 'Michael.jpeg', '2025-06-17 03:50:54'),
(3, 'Anka ', 'Momo', 6012342231, 'Anka@gmail.com', 'Mersing', 'Anka.jpg', '2025-06-17 03:55:51'),
(4, 'Henry ', 'Cavill', 6012342232, 'henry@gmail.com', 'London', 'Henry.jpg', '2025-06-17 04:00:36'),
(5, 'Astra ', 'Momo', 6012342233, 'astra@gmail.com', 'Kajang', 'Astra.jpg', '2025-06-17 04:08:41'),
(6, 'Dwayne ', 'Johnson', 6012345566, 'dwayne@gmail.com', 'Hawaii', 'Rock.jpg', '2025-06-17 05:08:41'),
(7, 'Aldo ', 'Momo', 6012346677, 'aldo@gmail.com', 'Puchong', 'Aldo.jpg', '2025-06-17 06:08:41'),
(8, 'Tom ', 'Cruise', 6012347788, 'Tom@gmail.com', 'Los Angeles', 'Tom.jpeg', '2025-06-17 07:08:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
