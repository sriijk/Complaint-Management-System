-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 01:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmspro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `AdminName` varchar(200) NOT NULL,
  `EmailId` varchar(150) NOT NULL,
  `ContactNumber` bigint(12) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `AdminName`, `EmailId`, `ContactNumber`, `password`, `updationDate`) VALUES
(1, 'admin', 'Dr. Varsha Chaurasia Mam', 'admin@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '25-06-2023 05:23:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(2, 'Other', 'Other Issue (like personal issue as an individual)', '2020-06-22 18:30:00', '2023-06-03 05:46:28'),
(4, 'College ', 'GGPR (include- All branch, Hostel, Library, Campus, Canteen.....etc all those facilities that is available for all students of the college).', '2023-05-27 08:08:45', '2023-06-09 11:42:39'),
(6, 'Pharmacy', 'Branch - Pharmacy', '2023-06-09 11:35:59', NULL),
(7, 'CDDM', 'Branch - Custom Designing and Dress making', '2023-06-09 11:37:45', NULL),
(8, 'Electronics', 'Branch - Electronics', '2023-06-09 11:39:00', NULL),
(10, 'CSE / IT', 'Branch 1: Computer Science and Technology \r\nBranch 2: Information & Technology', '2023-06-09 11:45:21', NULL),
(11, 'MOM', 'Morden office management ', '2023-07-08 11:23:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(14, 11, 'in process', 'consult to your HOD', '2023-06-19 07:37:15'),
(15, 12, 'closed', 'june ke end  tak hm 4-5 watercooler lagwa diya jayega ', '2023-06-19 08:09:55'),
(16, 14, 'in process', 'Consult to your HOD to get rid of the problems ', '2023-06-24 18:39:35'),
(18, 18, 'in process', 'Please Consult to your HOD for quick response.', '2023-06-25 11:48:36'),
(19, 19, 'in process', 'talk to your hod ', '2023-07-08 11:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Delhi', 'India Capital', '2020-06-27 19:18:02', NULL),
(2, 'Punjab', 'Punjab', '2020-06-27 19:18:14', NULL),
(3, 'Haryana', 'HR', '2020-06-27 19:18:34', NULL),
(5, 'Chhattisgarh ', 'CG', '2023-05-27 08:07:45', '2023-06-03 05:46:55'),
(6, 'Madhya Pradesh', 'MP', '2023-06-03 05:47:14', NULL),
(7, 'Uttar Pradesh', 'UP', '2023-06-03 05:47:28', NULL),
(8, 'Bihar', 'bihar', '2023-06-03 05:48:36', NULL),
(9, 'Odhisa', 'odhisa', '2023-06-03 05:49:20', NULL),
(10, 'Kerla', 'kerla', '2023-06-03 05:49:37', NULL),
(11, 'Tamil Nadu', 'TN', '2023-06-03 05:49:54', NULL),
(12, 'Maharastra', 'maharastra', '2023-06-25 09:40:39', NULL),
(13, 'Kerala', 'kerala', '2023-06-25 11:52:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 2, 'General Query', '2020-06-24 07:06:44', '2023-06-03 05:45:42'),
(6, 4, 'hostel management ', '2023-05-27 08:09:11', NULL),
(7, 4, 'Library books unavailable ', '2023-05-27 08:09:40', NULL),
(8, 4, 'Hostel Staff Misbehaviour', '2023-06-03 05:51:15', NULL),
(9, 4, 'Class Management ', '2023-06-03 05:51:59', NULL),
(10, 4, 'Campus Management', '2023-06-03 05:52:28', NULL),
(13, 4, 'Labs are not sufficient', '2023-06-03 08:08:32', NULL),
(14, 4, 'Classroom are not clean', '2023-06-03 08:11:02', NULL),
(15, 4, 'Washrooms are not clean', '2023-06-03 08:13:17', NULL),
(16, 4, 'benches is not enough in classes', '2023-06-03 08:14:09', NULL),
(17, 4, 'Mess food issue', '2023-06-03 08:16:09', NULL),
(18, 4, 'college staff misbehaviour', '2023-06-03 08:19:09', NULL),
(19, 4, 'College Faculties misbehaviour ', '2023-06-03 08:20:11', NULL),
(20, 2, 'Personal issue with staff', '2023-06-03 08:25:16', NULL),
(21, 2, 'Personal issue with Teachers', '2023-06-03 08:25:39', NULL),
(22, 2, 'Raging', '2023-06-03 08:26:09', NULL),
(23, 2, 'other personal issue', '2023-06-03 08:26:23', NULL),
(24, 4, 'College Lobby is not clean', '2023-06-03 08:27:49', NULL),
(25, 4, 'other', '2023-06-03 09:11:48', NULL),
(26, 8, 'Sufficient Devices are not available', '2023-06-09 14:52:01', NULL),
(27, 8, 'Labs not have sufficient facility', '2023-06-09 14:54:39', NULL),
(28, 8, 'Electronic equipments are not working', '2023-06-09 14:55:37', NULL),
(29, 8, 'Lack of security in labs', '2023-06-09 14:57:27', NULL),
(30, 8, 'other...', '2023-06-09 14:57:42', NULL),
(31, 6, 'Chemicals are not enough in labs', '2023-06-09 14:58:34', NULL),
(32, 6, 'Chemicals are expired in the labs', '2023-06-09 14:59:00', NULL),
(33, 6, 'Not enough materialistic equipments are present ', '2023-06-09 15:00:50', NULL),
(34, 6, 'Sphygmomanometer is not available', '2023-06-09 15:02:24', NULL),
(35, 6, 'Machines are not available for checkup', '2023-06-09 15:02:59', NULL),
(36, 6, 'other... ', '2023-06-09 15:03:13', NULL),
(37, 7, 'Machines are not available enough for student to use', '2023-06-09 15:05:09', NULL),
(38, 7, 'not enough placement (Job offers) is available for students', '2023-06-09 15:06:40', NULL),
(39, 7, 'Cutting lab is not available', '2023-06-09 15:07:03', NULL),
(40, 7, 'Stiching labs are available', '2023-06-09 15:07:30', NULL),
(41, 7, 'Students do not get enough lab facilities', '2023-06-09 15:09:42', NULL),
(42, 7, 'Students do not get enough lab facilities', '2023-06-09 15:10:04', NULL),
(43, 7, 'other...', '2023-06-09 15:10:37', NULL),
(44, 7, 'other...', '2023-06-09 15:14:14', NULL),
(45, 10, 'Computer system is not available', '2023-06-24 12:55:47', NULL),
(46, 10, 'AC is not Working in labs', '2023-06-24 12:56:55', NULL),
(47, 10, 'System are not properly working', '2023-06-24 12:57:45', NULL),
(48, 10, 'Labs Hardware are not working', '2023-06-24 12:58:54', NULL),
(49, 10, 'System are not able to install particular software', '2023-06-24 12:59:57', NULL),
(50, 10, 'Computers get easily overheated', '2023-06-24 13:02:29', NULL),
(51, 10, 'CPU is not working in multiple system', '2023-06-24 13:02:59', NULL),
(52, 10, 'other...', '2023-06-24 13:03:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(8, 1, 4, 'Library books unavailable ', ' Complaint', 'Chhattisgarh ', 'Online ', ';olikujytrefdghjkiloikujytrgfedcvbnmjk,iuytrfd', 'inverse[matrix2].exe', '2023-05-30 18:55:43', NULL, NULL),
(11, 12, 6, 'Machines are not available for checkup', ' Complaint', 'Chhattisgarh ', 'online', 'In pharmacy lab for 2nd year students , machine were not available for student practical.', 'F-Report.pdf', '2023-06-19 07:34:20', 'closed', '2023-06-19 07:44:49'),
(12, 13, 2, 'Select Subcategory', ' Complaint', 'Chhattisgarh ', 'online', 'hamare collage me  watercooler ka problem hai', 'MProfile.jpg', '2023-06-19 08:01:43', 'closed', '2023-06-19 08:09:55'),
(13, 11, 8, 'Electronic equipments are not working', ' Complaint', 'Chhattisgarh ', 'online', 'itrs 20th day that the electronics labs equipments are not working. we even requested the lab incharge to exchange the equipments but nothing happended. When we will be able to operate those equipments properly.', 'Semester Result.pdf', '2023-06-19 10:20:33', NULL, NULL),
(14, 9, 10, 'Computer system is not available', ' Complaint', 'Chhattisgarh ', 'online ', 'In batch 2022-23 of CSE, There are total 45 students but in most of the labs there are only 25-30 computer systems are available , which directly affect all students practical sessions and have adverse effects on their sessional outcome.', 'Document 67.pdf', '2023-06-24 13:52:45', 'closed', '2023-06-25 06:45:10'),
(15, 15, 10, 'CPU is not working in multiple system', ' Complaint', 'Chhattisgarh ', 'Online', 'In NL2 lab , From Computer system 4 to 8 the CPU are not working. This affect the students practical sessions \r\nwe Kindly request to solve our problem asap so that we can continue our studies ', 'F-Report.docx', '2023-06-25 09:34:38', 'in process', '2023-06-25 09:37:32'),
(16, 10, 7, 'Stiching labs are available', 'General Query', 'Bihar', 'dfghj', 'kjhgfdsaDFGHJGFDSAdfghyitresa', '', '2023-06-25 11:07:33', NULL, NULL),
(18, 23, 7, 'Cutting lab is not available', ' Complaint', 'Chhattisgarh ', 'Online', 'CDDM branch students do not have any proper cutting labs, which directly affect their sessional outcome. \r\nkindly solve the problem as soon as possible.', 'F-Report (1).docx', '2023-06-25 11:38:28', 'closed', '2023-06-25 12:01:53'),
(19, 24, 7, 'Cutting lab is not available', ' Complaint', 'Chhattisgarh ', 'online', 'cutting lab a not available and other problem ', 'tp123.png', '2023-07-08 10:58:15', 'closed', '2023-07-08 11:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblforwardhistory`
--

CREATE TABLE `tblforwardhistory` (
  `id` int(11) NOT NULL,
  `ComplaintNumber` bigint(12) DEFAULT NULL,
  `ForwardFrom` int(6) DEFAULT NULL,
  `ForwardTo` int(6) DEFAULT NULL,
  `ForwadDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblforwardhistory`
--

INSERT INTO `tblforwardhistory` (`id`, `ComplaintNumber`, `ForwardFrom`, `ForwardTo`, `ForwadDate`) VALUES
(1, 1, 1, 2, '2020-06-28 13:22:58'),
(2, 2, 1, 1, '2023-05-07 16:23:59'),
(3, 3, 1, 1, '2023-05-07 16:26:27'),
(4, 4, 1, 3, '2023-05-26 09:29:00'),
(5, 5, 1, 3, '2023-05-27 08:05:44'),
(6, 10, 1, 5, '2023-06-19 07:23:29'),
(7, 11, 1, 8, '2023-06-19 07:41:03'),
(10, 18, 1, 7, '2023-06-25 11:49:15'),
(11, 19, 1, 7, '2023-07-08 11:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubadmin`
--

CREATE TABLE `tblsubadmin` (
  `id` int(11) NOT NULL,
  `SubAdminName` varchar(150) DEFAULT NULL,
  `Department` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(12) DEFAULT NULL,
  `UserName` varchar(12) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubadmin`
--

INSERT INTO `tblsubadmin` (`id`, `SubAdminName`, `Department`, `EmailId`, `ContactNumber`, `UserName`, `Password`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(5, 'S.K. Behar', 'CSE/IT', 'Test@CSEIT', 7854123563, 'HOD_CSEIT', '5d6835962a15d30953309875ae3223e4', '2023-06-25 09:55:40', '2023-06-25 11:43:19', 1),
(6, 'R.G. Gupta', 'MOM', 'Test@MOM', 3216549877, 'HOD_MOM', '8038e2be8e8ce0155dc9d2b5bf9e95b2', '2023-06-03 08:38:22', NULL, 1),
(7, 'Mrs. Mamta Chandak ', 'CDDM ', 'Test@CDDM', 9638521470, 'HOD_CDDM', '727c35248d41fbbeeb7a41f6c0f9bc56', '2023-06-03 08:39:22', '2023-06-25 11:58:13', 1),
(8, 'Mr. Dhaneshwar Uraou ', 'Pharmacy', 'Test@Pharmacy', 6549873214, 'HOD_Pharmacy', 'ed7e1ee00cb1d63d34073e5c1126dc77', '2023-06-03 08:42:24', NULL, 1),
(9, 'Mr. Deepak Borkar', 'IDD', 'Test@IDD', 7539514562, 'HOD_IDD', '54cd7e9e2c9d0e00a88e3770b81ee161', '2023-06-03 08:45:11', NULL, 1),
(10, 'Mr. P.C. Tamarakar', 'Architecture', 'Test@arch', 3214785695, 'HOD_Arch', 'd6194c68fcc7e79bb57401be603cb1cc', '2023-06-03 08:47:57', '2023-06-25 11:47:33', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubadminremark`
--

CREATE TABLE `tblsubadminremark` (
  `id` int(11) NOT NULL,
  `ComplainNumber` bigint(12) DEFAULT NULL,
  `ComplainStatus` varchar(20) DEFAULT NULL,
  `ComplainRemark` mediumtext DEFAULT NULL,
  `RemarkBy` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubadminremark`
--

INSERT INTO `tblsubadminremark` (`id`, `ComplainNumber`, `ComplainStatus`, `ComplainRemark`, `RemarkBy`, `PostingDate`) VALUES
(1, 1, 'closed', 'Complaint closed.', 2, '2020-06-28 13:27:41'),
(2, 11, 'closed', 'i will arrange the machines for students practical before the exams. ', 8, '2023-06-19 07:44:49'),
(3, 14, 'closed', 'Okay ! I will talk with the lab assistants and arrange the system as soon as possible', 5, '2023-06-25 06:45:09'),
(4, 18, 'closed', 'Okay, all teachers/faculties and me will discuss this topic in our monthly meeting. And try to solve this problem as soon as possible.', 7, '2023-06-25 12:01:53'),
(5, 19, 'closed', 'sonam zindabad', 7, '2023-07-08 11:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'phpgurukulteam@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 19:14:33', '', 0),
(2, 1, 'phpgurukultest@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-27 19:15:08', '28-06-2020 12:47:04 AM', 1),
(3, 2, 'testuser@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-28 13:19:32', '28-06-2020 06:51:17 PM', 1),
(4, 2, 'testuser@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-28 14:12:03', '', 1),
(5, 0, 'bhatnagar40548@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-28 17:38:39', '', 0),
(6, 3, 'bhatnagar40548@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-28 17:39:32', '28-04-2023 11:09:52 PM', 1),
(7, 3, 'bhatnagar40548@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-28 17:43:03', '28-04-2023 11:13:52 PM', 1),
(8, 4, 'xyz123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-07 16:08:50', '07-05-2023 09:51:21 PM', 1),
(9, 4, 'xyz123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-07 16:25:10', '07-05-2023 09:55:50 PM', 1),
(10, 5, 'pqrst@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-26 09:17:56', '26-05-2023 02:53:25 PM', 1),
(11, 5, 'pqrst@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-26 09:54:37', '', 1),
(12, 0, 'Rinki548@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-27 07:57:59', '', 0),
(13, 0, 'Rinki458@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-05-27 08:00:01', '', 0),
(14, 6, 'Rinki548@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-05-27 08:00:37', '27-05-2023 01:33:55 PM', 1),
(15, 6, 'Rinki548@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-05-27 08:10:15', '27-05-2023 01:41:35 PM', 1),
(16, 7, 'Sarla123@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-05-27 08:42:05', '27-05-2023 02:14:40 PM', 1),
(17, 2, 'Rinki548@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 11:38:53', '', 1),
(18, 0, 'bhatnagar40548@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 18:47:29', '', 0),
(19, 1, 'bhatnagar40548@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 18:48:32', '31-05-2023 12:26:36 AM', 1),
(20, 8, 'sonam45@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-31 03:08:19', '31-05-2023 08:38:32 AM', 1),
(21, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 05:08:34', '03-06-2023 11:09:48 AM', 1),
(22, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 09:10:53', '03-06-2023 02:41:23 PM', 1),
(23, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 09:12:31', '03-06-2023 09:59:04 PM', 1),
(24, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 16:31:15', '03-06-2023 10:01:20 PM', 1),
(25, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-05 15:58:20', '06-06-2023 11:31:31 AM', 1),
(26, 10, 'tanuja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 14:43:33', '06-06-2023 08:13:38 PM', 1),
(27, 11, 'sush123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 14:44:39', '06-06-2023 08:14:41 PM', 1),
(28, 12, 'sonam123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 14:45:40', '06-06-2023 08:15:42 PM', 1),
(29, 13, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 14:47:00', '06-06-2023 08:17:03 PM', 1),
(30, 10, 'tanuja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 14:48:37', '06-06-2023 08:18:50 PM', 1),
(31, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 16:43:37', '06-06-2023 10:13:44 PM', 1),
(32, 10, 'tanuja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-09 11:32:44', '', 1),
(33, 10, 'tanuja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-14 15:04:46', '', 1),
(34, 12, 'sonam123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 07:27:49', '19-06-2023 01:05:13 PM', 1),
(35, 12, 'sonam123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 07:38:09', '19-06-2023 01:09:53 PM', 1),
(36, 12, 'sonam123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 07:46:31', '19-06-2023 01:17:32 PM', 1),
(37, 13, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 07:56:39', '19-06-2023 01:33:30 PM', 1),
(38, 13, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 08:11:23', '19-06-2023 01:42:06 PM', 1),
(39, 0, 'sush123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 10:01:11', '', 0),
(40, 0, 'sush123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 10:02:39', '', 0),
(41, 0, 'sush123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 10:03:28', '', 0),
(42, 0, 'sush123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 10:05:57', '', 0),
(43, 0, 'sush123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 10:08:04', '', 0),
(44, 11, 'sush123@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-06-19 10:08:39', '19-06-2023 03:53:31 PM', 1),
(45, 10, 'tanuja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-24 12:15:03', '24-06-2023 06:24:14 PM', 1),
(46, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-24 12:54:35', '24-06-2023 06:25:02 PM', 1),
(47, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-24 13:03:59', '24-06-2023 06:36:51 PM', 1),
(48, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-24 13:07:43', '24-06-2023 09:24:20 PM', 1),
(49, 9, 'bhavya03@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 07:15:28', '25-06-2023 01:56:37 PM', 1),
(50, 14, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 09:26:54', '25-06-2023 02:59:46 PM', 1),
(51, 15, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 09:30:51', '25-06-2023 03:05:33 PM', 1),
(52, 0, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 09:56:33', '', 0),
(53, 0, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 09:56:59', '', 0),
(54, 16, 'jyoti123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 10:46:49', '', 1),
(55, 10, 'tanuja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 11:06:58', '25-06-2023 04:37:45 PM', 1),
(56, 19, 'drishti@03gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 11:12:21', '25-06-2023 04:45:24 PM', 1),
(57, 20, 'drishti@03gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 11:18:56', '25-06-2023 04:54:51 PM', 1),
(58, 21, 'drishti@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 11:26:09', '25-06-2023 04:56:47 PM', 1),
(59, 22, 'drishti@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 11:28:17', '25-06-2023 05:03:05 PM', 1),
(60, 23, 'anju@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 11:35:03', '25-06-2023 05:09:29 PM', 1),
(61, 0, 'anju@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 12:02:34', '', 0),
(62, 23, 'anju@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 12:02:51', '', 1),
(63, 23, 'anju@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-25 12:04:15', '25-06-2023 05:35:06 PM', 1),
(64, 24, 'mushu@123gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-08 10:35:24', '08-07-2023 04:21:42 PM', 1),
(65, 0, 'mushu@123 gimail.com', 0x3a3a3100000000000000000000000000, '2023-07-08 10:52:31', '', 0),
(66, 0, 'mushu123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-08 10:53:27', '', 0),
(67, 24, 'mushu@123gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-08 10:55:29', '08-07-2023 04:29:02 PM', 1),
(68, 24, 'mushu@123gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-08 11:42:11', '08-07-2023 05:12:55 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Srishti Bhatnagar', 'bhatnagar40548@gmail.com', 'ca589cbd24b960d1ae669e30595425df', 7894561592, 'sheetla mahamaya mandir road near nav durga chowk , purani basti , Raipur, Chhattisgarh', 'Chhattisgarh ', 'India ', 492001, '691a195ddd86310a56f1bbcb42f54f3f.jpg', '2023-04-28 17:39:19', NULL, 1),
(2, 'Rinki Patel ', 'Rinki548@gmail.com', '93dbea5d6aa74cfa779258fda6e6e13d', 7539514562, '.kjhtgrfdsxzn', 'Punjab', 'India ', 482001, 'c9c12657d3e7c53d4b7e5f3547d8be8d.png', '2023-05-27 07:57:22', NULL, 1),
(9, 'Bhavya Soni', 'bhavya03@gmail.com', 'eda5ec3def8a7176a2195af7cb48d5f7', 7898880601, 'Near Nav durga chowk, Purani Basti ,Aminpara, Raipur , [C.G.]', 'Chhattisgarh ', 'India', 492001, '5eb83e47378dcf12ceba8f226e8f4c0b.jpg', '2023-06-03 05:04:37', NULL, 1),
(10, 'Tanuja Sahu', 'tanuja123@gmail.com', '0ecdcf61f5dae0bc9ae2a0937cdace06', 7894561232, NULL, NULL, NULL, NULL, NULL, '2023-06-06 14:43:01', NULL, 1),
(11, 'Sushmita', 'sush123@gmail.com', '10850424463acc5cb9704e0db70fa371', 321659877, 'G,cabine charoda BMY charoda', 'Chhattisgarh ', 'india', 490025, 'c9c12657d3e7c53d4b7e5f3547d8be8d.png', '2023-06-06 14:44:22', NULL, 1),
(12, 'Sonam Kumari', 'sonam123@gmail.com', '2dfadf1c87039ffa7beca3f732d544c4', 9638527412, 'nishad sewa smiti comp 2 bhilai', 'Chhattisgarh ', 'India ', 492001, 'cde4e9a009bdc73d660ecfa07241270b.png', '2023-06-06 14:45:22', NULL, 1),
(17, 'jyoti chauhan', 'jyoti123@gmail.com', 'e8daf03dfc550cda9136c35f70ddfaaf', 785412963, NULL, NULL, NULL, NULL, NULL, '2023-06-25 10:59:19', NULL, 1),
(23, 'Anju Sinha ', 'anju@gmail.com', '007639880bd59fa1ab5c83d131e274a5', 1234567890, 'Kankali Para, Raipur, Chhattisgarh', 'Chhattisgarh ', 'India', 492001, '29491ec16b2452829f6d99343044aa0djpeg', '2023-06-25 11:34:41', '0000-00-00 00:00:00', 1),
(24, 'muskan ', 'mushu@123gmail.com', '4f128b971ce57cd44d6aea172474f310', 8109620452, NULL, NULL, NULL, NULL, NULL, '2023-07-08 10:34:43', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `tblforwardhistory`
--
ALTER TABLE `tblforwardhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubadmin`
--
ALTER TABLE `tblsubadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubadminremark`
--
ALTER TABLE `tblsubadminremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblforwardhistory`
--
ALTER TABLE `tblforwardhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblsubadmin`
--
ALTER TABLE `tblsubadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblsubadminremark`
--
ALTER TABLE `tblsubadminremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
