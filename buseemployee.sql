-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2020 at 09:16 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buseemployee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `fullname`, `phoneNumber`, `email`) VALUES
(1, 'Admin', 'cfb545934516467ef3467d05dfb4a395', 'Inno Tauzeni', '0774914150', 'innocent.tauzeni@gmail.com'),
(2, 'HR', 'cfb545934516467ef3467d05dfb4a395', 'Mike Gauze', '0775091234', 'mike@buse.ac.zw');

-- --------------------------------------------------------

--
-- Table structure for table `clockinginout`
--

CREATE TABLE `clockinginout` (
  `id` int(11) NOT NULL,
  `empCode` int(11) NOT NULL,
  `timein` timestamp NULL DEFAULT NULL,
  `timeout` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clockinginout`
--

INSERT INTO `clockinginout` (`id`, `empCode`, `timein`, `timeout`, `date_registered`) VALUES
(1, 1, '2020-01-30 06:00:00', '2020-01-30 15:00:00', '2020-01-30 09:22:04'),
(2, 3, '2020-01-30 06:00:00', '2020-01-30 16:00:00', '2020-01-30 09:23:24'),
(3, 2, '2020-01-30 06:00:00', '2020-01-30 13:00:00', '2020-01-31 11:56:55'),
(4, 1, '2020-01-31 06:00:00', '2020-01-30 11:00:00', '2020-01-31 11:57:51'),
(5, 2, '2020-01-31 12:00:29', '2020-01-31 10:00:38', '2020-01-31 12:00:54'),
(6, 3, '2020-01-31 07:01:22', '2020-01-31 10:01:32', '2020-01-31 12:01:39'),
(7, 1, '2020-02-01 05:38:33', '2020-02-01 08:38:44', '2020-02-01 09:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `employeelocation`
--

CREATE TABLE `employeelocation` (
  `id` int(11) NOT NULL,
  `empCode` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `nameplace` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeelocation`
--

INSERT INTO `employeelocation` (`id`, `empCode`, `lat`, `lng`, `nameplace`) VALUES
(1, 1, -17.371307, 31.319847, 'Bindura University Main Campus'),
(2, 2, -17.371307, 31.319847, 'Bindura University Main Campus'),
(3, 3, -17.316311, 31.321445, 'Astra Campus B U S E'),
(4, 4, -17.311047, 31.338093, 'Bindura University Library'),
(5, 14, -17.311047, 31.338093, 'Bindura University Library'),
(6, 5, -17.291452, 31.329601, 'Bindura University Hostels'),
(7, 12, -17.311047, 31.338093, 'Bindura University Library'),
(8, 10, -17.311047, 31.338093, 'Bindura University Library'),
(9, 13, -17.311047, 31.338093, 'Bindura University Library'),
(10, 15, -17.291452, 31.329601, 'Bindura University Hostels'),
(12, 9, -17.291452, 31.329601, 'Bindura University Hostels'),
(13, 13, -17.371307, 31.319847, 'Bindura University Main Campus');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `empCode` int(11) NOT NULL,
  `emp_fname` varchar(50) DEFAULT NULL,
  `emp_lname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `emp_sex` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qualification` varchar(300) DEFAULT NULL,
  `imageurl` varchar(300) DEFAULT NULL,
  `status` varchar(15) DEFAULT 'Inactive',
  `date_employed` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `empCode`, `emp_fname`, `emp_lname`, `address`, `birth_date`, `emp_sex`, `password`, `phone`, `email`, `qualification`, `imageurl`, `status`, `date_employed`, `date_registered`) VALUES
(1, 1201, 'Innocentia', 'Tauzeni', 'Harare, Zimbabwe (ZW)', '12-12-1992', 'M', 'e10adc3949ba59abbe56e057f20f883e', '0774914150', 'innocenttauzen@gmail.com', 'Masters in  Software Engineering from Harvard University', '../uploads/PhotoGrid_1480051373835.png', 'Inactive', '2009-01-28 22:00:00', '2020-01-29 21:43:29'),
(2, 1202, 'Emaly', 'Taranya', 'Gweru Mukoba, Zimbabwe (ZW)', '1989-01-02', 'F', 'e10adc3949ba59abbe56e057f20f883e', '0773402345', 'ema@gmail.com', 'B.Sc.Hon in Software Engineering  from the University of Zimbabwe', '../uploads/GBWA-20180412173017.jpg', 'Inactive', '2011-01-06 22:00:00', '2020-01-29 22:45:09'),
(3, 1203, 'Arthur', 'Marange', 'Hagathon Park Mashonaland Central, Bindura, Zimbab', '1987-11-17', 'M', 'e10adc3949ba59abbe56e057f20f883e', '0773402389', 'arthur@buse.ac.zw', 'Certificate of Oracle Database from Oracle Inc', '../uploads/IMG_20131027_050302.jpg', 'Inactive', '2002-09-20 22:00:00', '2020-01-30 09:35:15'),
(4, 1204, 'Anah', 'Nasho', '2387 Kuwadzana Extension, ZW', '1997-09-12', 'F', 'e10adc3949ba59abbe56e057f20f883e', '8966669066', 'anah@buse.ac.zw', 'Bsc. IT', ' ../uploads/MYXJ_20190330152730_save.jpg', 'Inactive', '2003-02-20 22:00:00', '2020-02-01 08:07:33'),
(5, 1206, 'Marshall', 'Chikuruwo', 'Bindura, Zimbabwe (ZW)', '12-12-1991', 'M', 'e10adc3949ba59abbe56e057f20f883e', '077657272', 'chikuruwo@gmail.com', 'M.Sc.Hon in Data Analysist from Harvard University', '../uploads/DSC_0214.JPG', 'Inactive', '2020-01-29 16:50:09', '2020-01-29 16:43:29'),
(6, 1207, 'Sharon', 'Nyasha', 'Gweru Mukoba, Zimbabwe (ZW)', '1989-01-02', 'F', 'e10adc3949ba59abbe56e057f20f883e', '0773402345', 'sharon@buse.ac.zw', 'B.Sc.Hon in Software Engineering  from the University of Zimbabwe', '../uploads/GBWA-20180412173017.jpg', 'Inactive', '2011-01-06 18:00:00', '2020-01-29 17:45:09'),
(7, 1208, 'Johane', 'Mebo', 'Hagathon Park Mashonaland Central, Bindura, Zimbab', '1987-11-17', 'M', 'e10adc3949ba59abbe56e057f20f883e', '0773402389', 'Johane@buse.ac.zw', 'Certificate of Oracle Database from Oracle Inc', '../uploads/IMG_20131027_050302.jpg', 'Inactive', '2002-09-20 17:00:00', '2020-01-30 04:35:15'),
(8, 1209, 'Anesuishe', 'Tauzeni', '2387 Kuwadzana Extension, ZW', '1997-09-12', 'F', 'e10adc3949ba59abbe56e057f20f883e', '8966669066', 'Anesuishe@buse.ac.zw', 'Bsc. IT', ' ../uploads/MYXJ_20190330152730_save.jpg', 'Inactive', '2003-02-20 18:00:00', '2020-02-01 03:07:33'),
(9, 1205, 'Nyasha', 'Meza', 'Hagathon Park Mashonaland Central, Bindura, Zimbab', '1977-11-17', 'F', 'e10adc3949ba59abbe56e057f20f883e', '0773402389', 'arthur@buse.ac.zw', 'Certificate of Oracle Database from Oracle Inc', '../uploads/IMG_20131027_050302.jpg', 'Inactive', '2002-09-20 17:00:00', '2020-01-30 04:35:15'),
(10, 1210, 'Clarity', 'Mebo', 'Bindura, Zimbabwe (ZW)', '12-12-1981', 'F', 'e10adc3949ba59abbe56e057f20f883e', '077657272', 'chikuruwo@gmail.com', 'M.Sc.Hon in Data Analysist from Harvard University', '../uploads/DSC_0214.JPG', 'Inactive', '2020-01-29 16:50:09', '2020-01-29 16:43:29'),
(11, 1212, 'Shandu', 'Norbet', 'Gweru Mukoba, Zimbabwe (ZW)', '1979-01-02', 'F', 'e10adc3949ba59abbe56e057f20f883e', '0773402345', 'sharon@buse.ac.zw', 'B.Sc.Hon in Software Engineering  from the University of Zimbabwe', '../uploads/GBWA-20180412173017.jpg', 'Inactive', '2011-01-06 18:00:00', '2020-01-29 17:45:09'),
(12, 1213, 'James', 'James', 'Hagathon Park Mashonaland Central, Bindura, Zimbab', '1987-11-17', 'M', 'e10adc3949ba59abbe56e057f20f883e', '0773402389', 'Johane@buse.ac.zw', 'Certificate of Oracle Database from Oracle Inc', '../uploads/IMG_20131027_050302.jpg', 'Inactive', '2002-09-20 17:00:00', '2020-01-30 04:35:15'),
(13, 1214, 'Faith', 'Mukuyu', '2387 Kuwadzana Extension, ZW', '1987-09-12', 'F', 'e10adc3949ba59abbe56e057f20f883e', '8966669066', 'Anesuishe@buse.ac.zw', 'Bsc. IT', ' ../uploads/MYXJ_20190330152730_save.jpg', 'Inactive', '2003-02-20 18:00:00', '2020-02-01 03:07:33'),
(14, 1215, 'Makesure', 'Jimu', '2390 Mupandenyama', '1996-02-07', 'M', 'e10adc3949ba59abbe56e057f20f883e', '0772772383', 'mkjimu@buse.ac.zw', 'HND', ' ../uploads/Screenshot (15).png', 'Inactive', '2012-03-20 22:00:00', '2020-03-11 17:14:02'),
(15, 1216, 'Makesure3', 'JimuA', '2399 Mupandenyama', '1978-02-12', 'M', 'e10adc3949ba59abbe56e057f20f883e', '0772772383', 'mkjimu2@buse.ac.zw', 'HND 1', ' ../uploads/Screenshot (18).png', 'Inactive', '2003-12-11 22:00:00', '2020-03-11 17:18:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clockinginout`
--
ALTER TABLE `clockinginout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empCode` (`empCode`);

--
-- Indexes for table `employeelocation`
--
ALTER TABLE `employeelocation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empCode` (`empCode`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clockinginout`
--
ALTER TABLE `clockinginout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employeelocation`
--
ALTER TABLE `employeelocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clockinginout`
--
ALTER TABLE `clockinginout`
  ADD CONSTRAINT `empcodeID` FOREIGN KEY (`empCode`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employeelocation`
--
ALTER TABLE `employeelocation`
  ADD CONSTRAINT `empData` FOREIGN KEY (`empCode`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
