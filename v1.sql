-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 06:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `in surgery`
--

CREATE TABLE `in surgery` (
  `Needles Prepared` int(11) NOT NULL,
  `Sponges Prepared` int(11) NOT NULL,
  `Needles In` int(11) NOT NULL,
  `Sponges In` int(11) NOT NULL,
  `Needles Out` int(11) NOT NULL,
  `Sponges Out` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in surgery`
--

INSERT INTO `in surgery` (`Needles Prepared`, `Sponges Prepared`, `Needles In`, `Sponges In`, `Needles Out`, `Sponges Out`) VALUES
(10, 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Name`, `Username`, `Password`) VALUES
('Christina Yang', 'cyang', 'greysluvers');

-- --------------------------------------------------------

--
-- Table structure for table `patient information`
--

CREATE TABLE `patient information` (
  `Patient Name` varchar(100) NOT NULL,
  `MRN` int(11) NOT NULL,
  `Procedure` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Allergies` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient information`
--

INSERT INTO `patient information` (`Patient Name`, `MRN`, `Procedure`, `DOB`, `Allergies`) VALUES
('Leland Stanford', 123456, 'Robotic colectomy', '0000-00-00', 'Penicillin, bananas');

-- --------------------------------------------------------

--
-- Table structure for table `pref card`
--

CREATE TABLE `pref card` (
  `Surgeon Name` varchar(100) NOT NULL,
  `Surgeon ID` int(11) NOT NULL,
  `Procedure` varchar(100) NOT NULL,
  `Needle 1 Name` varchar(100) NOT NULL,
  `Needle 1 Count` int(11) NOT NULL,
  `Needle 1 Used` tinyint(1) NOT NULL,
  `Needle 2 Name` varchar(100) NOT NULL,
  `Needle 2 Count` int(11) NOT NULL,
  `Needle 2 Used` tinyint(1) NOT NULL,
  `Sponge 1 Name` varchar(100) NOT NULL,
  `Sponge 1 Count` int(11) NOT NULL,
  `Sponge 1 Used` tinyint(1) NOT NULL,
  `Sponge 2 Name` varchar(100) NOT NULL,
  `Sponge 2 Count` int(11) NOT NULL,
  `Sponge 2 Used` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pref card`
--

INSERT INTO `pref card` (`Surgeon Name`, `Surgeon ID`, `Procedure`, `Needle 1 Name`, `Needle 1 Count`, `Needle 1 Used`, `Needle 2 Name`, `Needle 2 Count`, `Needle 2 Used`, `Sponge 1 Name`, `Sponge 1 Count`, `Sponge 1 Used`, `Sponge 2 Name`, `Sponge 2 Count`, `Sponge 2 Used`) VALUES
('John Harvard', 98765, 'Robotic colectomy', 'idk this column might be useless', 5, 0, 'also useless', 5, 0, 'idk man', 5, 0, 'lol', 5, 0),
('John Harvard', 98765, 'Robotic colectomy', 'idk this column might be useless', 5, 0, 'also useless', 5, 0, 'idk man', 5, 0, 'lol', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `procedure information`
--

CREATE TABLE `procedure information` (
  `Operating Room` int(11) NOT NULL,
  `Patient Name` varchar(100) NOT NULL,
  `MRN` int(11) NOT NULL,
  `Surgeon Name` int(11) NOT NULL,
  `Surgeon ID` int(11) NOT NULL,
  `Procedure` int(11) NOT NULL,
  `Start Time` time NOT NULL,
  `End Time` time NOT NULL,
  `Anesthesia Timeout` tinyint(1) NOT NULL,
  `Anesthesia Timeout Time` time NOT NULL,
  `Final Timeout` tinyint(1) NOT NULL,
  `Final Timeout Time` time NOT NULL,
  `Debrief Timeout` tinyint(1) NOT NULL,
  `Debrief Timeout Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedure information`
--

INSERT INTO `procedure information` (`Operating Room`, `Patient Name`, `MRN`, `Surgeon Name`, `Surgeon ID`, `Procedure`, `Start Time`, `End Time`, `Anesthesia Timeout`, `Anesthesia Timeout Time`, `Final Timeout`, `Final Timeout Time`, `Debrief Timeout`, `Debrief Timeout Time`) VALUES
(1, 'Leland Stanford', 123456, 0, 98765, 0, '08:00:00', '10:30:00', 1, '07:45:00', 1, '07:50:00', 1, '10:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `surgical staff`
--

CREATE TABLE `surgical staff` (
  `Surgeon Name` varchar(100) NOT NULL,
  `Surgeon ID` int(11) NOT NULL,
  `Surgeon 2 Name` varchar(100) NOT NULL,
  `Surgeon 2 ID` int(11) NOT NULL,
  `Procedure` varchar(100) NOT NULL,
  `Anesthesiologist Name` varchar(100) NOT NULL,
  `Anesthesiologist ID` int(11) NOT NULL,
  `Circulating Nurse Name` varchar(100) NOT NULL,
  `Circulating Nurse ID` int(11) NOT NULL,
  `Scrub Tech Name` varchar(100) NOT NULL,
  `Scrub Tech ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surgical staff`
--

INSERT INTO `surgical staff` (`Surgeon Name`, `Surgeon ID`, `Surgeon 2 Name`, `Surgeon 2 ID`, `Procedure`, `Anesthesiologist Name`, `Anesthesiologist ID`, `Circulating Nurse Name`, `Circulating Nurse ID`, `Scrub Tech Name`, `Scrub Tech ID`) VALUES
('John Harvard', 98765, 'Derek Shepherd', 45678, 'Robotic colectomy', 'Meredith Grey', 121212, 'Christina Yang', 343434, 'Owen Hunt', 565656);

-- --------------------------------------------------------

--
-- Table structure for table `surgical tools time log`
--

CREATE TABLE `surgical tools time log` (
  `Tool Type` varchar(100) NOT NULL,
  `Tool Direction` varchar(100) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
