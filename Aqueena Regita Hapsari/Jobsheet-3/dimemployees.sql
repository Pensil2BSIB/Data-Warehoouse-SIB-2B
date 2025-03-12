-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2025 at 08:24 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dw_legendvehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `dimemployees`
--

CREATE TABLE `dimemployees` (
  `id_dimEmployees` int NOT NULL,
  `employeeNumber` int DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `boss_firstName` varchar(50) DEFAULT NULL,
  `boss_lastName` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dimemployees`
--

INSERT INTO `dimemployees` (`id_dimEmployees`, `employeeNumber`, `firstName`, `lastName`, `jobTitle`, `boss_firstName`, `boss_lastName`, `updated`) VALUES
(1, 1002, 'Diane', 'Murphy', 'President', NULL, NULL, '2025-03-08 06:45:14'),
(2, 1056, 'Mary', 'Patterson', 'VP Sales', 'Diane', 'Murphy', '2025-03-08 06:45:14'),
(3, 1076, 'Jeff', 'Firrelli', 'VP Marketing', 'Diane', 'Murphy', '2025-03-08 06:45:14'),
(4, 1088, 'William', 'Patterson', 'Sales Manager (APAC)', 'Mary', 'Patterson', '2025-03-08 06:45:14'),
(5, 1102, 'Gerard', 'Bondur', 'Sale Manager (EMEA)', 'Mary', 'Patterson', '2025-03-08 06:45:14'),
(6, 1143, 'Anthony', 'Bow', 'Sales Manager (NA)', 'Mary', 'Patterson', '2025-03-08 06:45:14'),
(7, 1165, 'Leslie', 'Jennings', 'Sales Rep', 'Anthony', 'Bow', '2025-03-08 06:45:14'),
(8, 1166, 'Leslie', 'Thompson', 'Sales Rep', 'Anthony', 'Bow', '2025-03-08 06:45:14'),
(9, 1188, 'Julie', 'Firrelli', 'Sales Rep', 'Anthony', 'Bow', '2025-03-08 06:45:14'),
(10, 1216, 'Steve', 'Patterson', 'Sales Rep', 'Anthony', 'Bow', '2025-03-08 06:45:14'),
(11, 1286, 'Foon Yue', 'Tseng', 'Sales Rep', 'Anthony', 'Bow', '2025-03-08 06:45:14'),
(12, 1323, 'George', 'Vanauf', 'Sales Rep', 'Anthony', 'Bow', '2025-03-08 06:45:14'),
(13, 1337, 'Loui', 'Bondur', 'Sales Rep', 'Gerard', 'Bondur', '2025-03-08 06:45:14'),
(14, 1370, 'Gerard', 'Hernandez', 'Sales Rep', 'Gerard', 'Bondur', '2025-03-08 06:45:14'),
(15, 1401, 'Pamela', 'Castillo', 'Sales Rep', 'Gerard', 'Bondur', '2025-03-08 06:45:14'),
(16, 1501, 'Larry', 'Bott', 'Sales Rep', 'Gerard', 'Bondur', '2025-03-08 06:45:14'),
(17, 1504, 'Barry', 'Jones', 'Sales Rep', 'Gerard', 'Bondur', '2025-03-08 06:45:14'),
(18, 1611, 'Andy', 'Fixter', 'Sales Rep', 'William', 'Patterson', '2025-03-08 06:45:14'),
(19, 1612, 'Peter', 'Marsh', 'Sales Rep', 'William', 'Patterson', '2025-03-08 06:45:14'),
(20, 1619, 'Tom', 'King', 'Sales Rep', 'William', 'Patterson', '2025-03-08 06:45:14'),
(21, 1621, 'Mami', 'Nishi', 'Sales Rep', 'Mary', 'Patterson', '2025-03-08 06:45:14'),
(22, 1625, 'Yoshimi', 'Kato', 'Sales Rep', 'Mami', 'Nishi', '2025-03-08 06:45:14'),
(23, 1702, 'Martin', 'Gerard', 'Sales Rep', 'Gerard', 'Bondur', '2025-03-08 06:45:14'),
(24, 1002, 'Diane', 'Murphy', 'President', NULL, NULL, '2025-03-08 08:19:31'),
(25, 1202, 'Aqueena', 'Regita', 'Data Scientist', 'Diane', 'Murphy', '2025-03-08 08:19:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dimemployees`
--
ALTER TABLE `dimemployees`
  ADD PRIMARY KEY (`id_dimEmployees`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dimemployees`
--
ALTER TABLE `dimemployees`
  MODIFY `id_dimEmployees` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
