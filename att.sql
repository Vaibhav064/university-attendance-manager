-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2024 at 08:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `att`
--

-- --------------------------------------------------------

--
-- Table structure for table `atte`
--

CREATE TABLE `atte` (
  `regno` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `subid` varchar(7) NOT NULL,
  `date` date NOT NULL,
  `atten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `atte`
--

INSERT INTO `atte` (`regno`, `name`, `subid`, `date`, `atten`) VALUES
('23UCSE2178', 'Vaibhav Bose', '4CSE41A', '2024-04-07', 'Absent'),
('23UCSE2178', 'Vaibhav Bose', '4CSE41A', '2024-04-06', 'Present'),
('23UCSE2154', 'Rishabh Chauhan', '4CSE41A', '2024-04-07', 'Absent'),
('23UCSE2154', 'Rishabh Chauhan', '4CSE42A', '2024-04-06', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `subid` varchar(7) NOT NULL,
  `subname` text NOT NULL,
  `empno` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`subid`, `subname`, `empno`) VALUES
('4CSE41A', 'Design and Analysis of Algorithm', 'TEA1001'),
('4CSE42A', 'Web Technology', 'TEA1002'),
('4CSE43A', 'Computer Networks', 'TEA1003'),
('4CSE44A', 'Database Managment Systems', 'TEA1004'),
('4CSE45A', 'Computer Organization and Architecture', 'TEA1005');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `regno` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`regno`, `name`, `password`) VALUES
('23UCSE2154', 'Rishabh Chauhan', 'kota@go'),
('23UCSE2178', 'Vaibhav Bose', 'jaipur@go');

-- --------------------------------------------------------

--
-- Table structure for table `login1`
--

CREATE TABLE `login1` (
  `empno` varchar(7) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login1`
--

INSERT INTO `login1` (`empno`, `name`, `password`) VALUES
('TEA1001', 'Anil Gupta', 'a'),
('TEA1002', 'Shailesh Kanchandani', 'a'),
('TEA1003', 'NC Barwar', 'a'),
('TEA1004', 'Meenakshi Sankhla', 'a'),
('TEA1005', 'Deepika Chopra', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `regno` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `subid` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`regno`, `name`, `subid`) VALUES
('23UCSE2154', 'Rishabh Chauhan', '4CSE41A'),
('23UCSE2154', 'Rishabh Chauhan', '4CSE42A'),
('23UCSE2154', 'Rishabh Chauhan', '4CSE43A'),
('23UCSE2154', 'Rishabh Chauhan', '4CSE44A'),
('23UCSE2154', 'Rishabh Chauhan', '4CSE45A'),
('23UCSE2178', 'Vaibhav Bose', '4CSE41A'),
('23UCSE2178', 'Vaibhav Bose', '4CSE42A'),
('23UCSE2178', 'Vaibhav Bose', '4CSE43A'),
('23UCSE2178', 'Vaibhav Bose', '4CSE44A'),
('23UCSE2178', 'Vaibhav Bose', '4CSE45A'),
('23UFIA1004', 'AARYAN CHOUDHARY', '4CSE41A'),
('23UFIA1005', 'AASHITA BHANDARI', '4CSE41A'),
('85006272', 'ABHINAV BHARAT', '4CSE41A'),
('23UFIA1026', 'ADITYA VYAS', '4CSE41A'),
('23UFIA1029', 'Ajeet jain', '4CSE41A'),
('85004261', 'AKANKSHA SONI', '4CSE41A'),
('23UFIA1031', 'AKASH PARMAR', '4CSE41A'),
('23UFIA1094', 'ARYAN SWARNKAR', '4CSE41A'),
('23UFIA1095', 'ASAN ALI', '4CSE41A'),
('23UFIA1106', 'AYUSH CHOUHAN', '4CSE41A'),
('23UFIA1112', 'BHARAT SINGH', '4CSE41A'),
('23UFIA1137', 'DAKSHAY SINGH BHATI', '4CSE41A'),
('85005999', 'DEVANSH SILAN', '4CSE41A'),
('23UFIA1182', 'GARIMA CHOUDHARY', '4CSE41A'),
('23UFIA1195', 'GUNGUN GURJAR', '4CSE41A'),
('23UFIA1202', 'Harsh Rajani', '4CSE41A'),
('23UFIA1207', 'Harshit Gupta', '4CSE41A'),
('23UFIA1216', 'Harshita Atal', '4CSE41A'),
('23UFIA1219', 'HEM SINGH', '4CSE41A'),
('23UFIA1228', 'Himesh Parashar', '4CSE41A'),
('23UFIA1231', 'IKRAJ KHAN', '4CSE41A'),
('23UFIA1233', 'ISHA MEENA', '4CSE41A'),
('23UFIA1234', 'ISHA PANDEY', '4CSE41A'),
('23UFIA1252', 'JAYESH CHAUDHARY', '4CSE41A'),
('23UFIA1258', 'Kallu kumari', '4CSE41A'),
('23UFIA1261', 'Kanishka singhal', '4CSE41A'),
('23UFIA1270', 'KAVITA JAKHAR', '4CSE41A'),
('23UFIA1272', 'Ketan Rajesh meel', '4CSE41A'),
('23UFIA1273', 'KHALIL AHMED', '4CSE41A'),
('23UFIA1297', 'KULDEEP KANWAR', '4CSE41A'),
('23UFIA1306', 'KUSHAL DODIYAR', '4CSE41A'),
('23UFIA1310', 'LALIT RAJ', '4CSE41A'),
('23UFIA1314', 'LAXITA DETWAL', '4CSE41A'),
('23UFIA1323', 'mahendra gurjar', '4CSE41A'),
('23UFIA1327', 'MAHESH KUMAR', '4CSE41A'),
('23UFIA1331', 'MANAV JHA', '4CSE41A'),
('23UFIA1336', 'Manish Rahi', '4CSE41A'),
('85006501', 'MANOJ BHATT', '4CSE41A'),
('23UFIA1348', 'ONKAR NATH', '4CSE41A'),
('23UFIE2036', 'Mukul parwani', '4CSE41A'),
('23UFIE2044', 'NEERAJ GUPTA', '4CSE41A'),
('23UFIE2047', 'NEETU ROOP', '4CSE41A'),
('23UFIE2055', 'NIKHIL SWAMI', '4CSE41A'),
('23UFIE2075', 'pinki', '4CSE41A'),
('23UFIE2084', 'POONAM SAIN', '4CSE41A'),
('23UFIE2086', 'Prabhbir Singh Juneja', '4CSE41A'),
('23UFIE2090', 'Prateek Agrawal', '4CSE41A'),
('23UFIE2095', 'Preeti Yadav', '4CSE41A'),
('23UFIE2098', 'Prince Dayma', '4CSE41A'),
('23UFIE2106', 'PRIYANSHU KALAL', '4CSE41A'),
('23UFIE2110', 'PUSHKAR SINGH', '4CSE41A'),
('23UFIE2114', 'RAGHAV BOHRA', '4CSE41A'),
('23UFIE2129', 'Rajat Gaur', '4CSE41A'),
('23UFIE2136', 'Rakshit pandya', '4CSE41A'),
('23UFIE2155', 'RISHABH JAJU', '4CSE41A'),
('23UFIE2156', 'RISHABH SINGH', '4CSE41A'),
('85005191', 'RITIKA RUPARAM', '4CSE41A'),
('23UFIE2173', 'ROHIT KUMAR', '4CSE41A'),
('23UFIE2174', 'ROHIT PANWAR', '4CSE41A'),
('23UFIE2181', 'Rudraksh Vyas', '4CSE41A'),
('23UFIE2187', 'SAKSHI SINGHAL', '4CSE41A'),
('23UFIE2192', 'Sanjam Singh Chauhan', '4CSE41A'),
('23UFIE2198', 'Sankalp Sharma', '4CSE41A'),
('23UFIE2211', 'SHASHANK RAJPUROHIT', '4CSE41A'),
('85003788', 'SHIVENDER SINGH', '4CSE41A'),
('85004814', 'SHUBHAM GEHLOT', '4CSE41A'),
('23UFIE2233', 'SONIC VYAS', '4CSE41A'),
('23UFIE2245', 'SUMAN RAJBOHRA', '4CSE41A'),
('85005495', 'TAMANNA CHOUHAN', '4CSE41A'),
('23UFIE2272', 'TEJAS BHATI', '4CSE41A'),
('23UFIE2279', 'UDARAM SUJARAM REBARI', '4CSE41A'),
('23UFIE2286', 'Vaibhav Bose', '4CSE41A'),
('23UFIE2310', 'VIPASH MEENA', '4CSE41A'),
('85005040', 'VISHAL SOLANKI', '4CSE41A'),
('85003465', 'VISHWAS CHHABRA', '4CSE41A'),
('23UFIE2318', 'Vishwas Gaur', '4CSE41A'),
('85006176', 'VIVEK SAINI', '4CSE41A'),
('23UFIE2329', 'Yashika garg', '4CSE41A');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `login1`
--
ALTER TABLE `login1`
  ADD PRIMARY KEY (`empno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
