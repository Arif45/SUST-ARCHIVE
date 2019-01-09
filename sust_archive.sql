-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 07:57 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sust_archive`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `course_title` varchar(30) NOT NULL,
  `credit` double NOT NULL,
  `semester` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `offering_dept` varchar(30) NOT NULL,
  `accepting_dept` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_code`, `course_title`, `credit`, `semester`, `session`, `offering_dept`, `accepting_dept`) VALUES
(1, 'CSE 300', 'Project 300', 2, 6, 2011, '1', '1'),
(2, 'CSE 361', 'Networking', 3, 6, 2011, '1', '1'),
(3, 'CSE 331', 'Software Engineering', 3, 6, 2011, '1', '1'),
(4, 'CSE350', 'Project 350', 3, 5, 2014, '1', '1'),
(5, 'CSE233', 'Object Oriented Programming', 3, 3, 2015, '1', '1'),
(6, 'CSE133', 'Data Structure', 3, 2, 2016, '1', '1'),
(7, 'CSE133', 'Data Structure', 3, 3, 2015, '1', '1'),
(8, 'CSE233', 'Data Structure', 3, 2, 2014, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `course_reg_id` bigint(20) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `marks` double NOT NULL,
  `GPA` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`course_reg_id`, `student_id`, `course_id`, `is_approved`, `marks`, `GPA`) VALUES
(1, 1, 1, 1, 0, 0),
(2, 2, 1, 1, 0, 0),
(3, 3, 1, 1, 0, 0),
(4, 4, 1, 1, 0, 0),
(5, 5, 1, 1, 0, 0),
(6, 6, 1, 1, 0, 0),
(7, 7, 1, 1, 0, 0),
(8, 8, 1, 1, 0, 0),
(9, 9, 1, 1, 0, 0),
(10, 10, 1, 1, 0, 0),
(11, 11, 1, 1, 0, 0),
(12, 12, 1, 1, 0, 0),
(13, 13, 1, 1, 0, 0),
(14, 14, 1, 1, 0, 0),
(15, 15, 1, 1, 0, 0),
(16, 1, 2, 1, 0, 0),
(17, 2, 2, 1, 0, 0),
(18, 3, 2, 1, 0, 0),
(19, 4, 2, 1, 0, 0),
(20, 5, 2, 1, 0, 0),
(21, 6, 2, 1, 0, 0),
(22, 7, 2, 1, 0, 0),
(23, 8, 2, 1, 0, 0),
(24, 9, 2, 1, 0, 0),
(25, 10, 2, 1, 0, 0),
(26, 11, 2, 1, 0, 0),
(27, 12, 2, 1, 0, 0),
(28, 13, 2, 1, 0, 0),
(29, 14, 2, 1, 0, 0),
(30, 15, 2, 1, 0, 0),
(531, 300, 1, 1, 0, 0),
(532, 1, 3, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_task`
--

CREATE TABLE `course_task` (
  `course_task_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `exam_committee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_task`
--

INSERT INTO `course_task` (`course_task_id`, `course_id`, `task_id`, `exam_committee_id`) VALUES
(1, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(60) NOT NULL,
  `dept_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `dept_code`) VALUES
(1, 'Computer Science and Engineering', 'CSE'),
(2, 'Electrical & Electronic Engineering', 'EEE'),
(3, 'Industrial Production and Engineering', 'IPE'),
(4, 'Physics', 'PHY'),
(5, 'Genetic Engineering and Biotechnology', 'GEB');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `desig_id` int(11) NOT NULL,
  `desig_name` varchar(50) NOT NULL,
  `desig_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`desig_id`, `desig_name`, `desig_desc`) VALUES
(1, 'Professor', 'No description available'),
(2, 'Associate Professor', 'No description available'),
(3, 'Assistant Professor', 'No description available'),
(4, 'Lecturer', 'No description available');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` bigint(20) NOT NULL,
  `usn_no` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `exam_start` varchar(30) NOT NULL,
  `exam_end` varchar(30) NOT NULL,
  `reg_start` varchar(30) NOT NULL,
  `reg_end` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `usn_no`, `dept_id`, `exam_start`, `exam_end`, `reg_start`, `reg_end`) VALUES
(1, 1, 1, '2014-12-01', '2014-12-15', '2014-11-01', '2014-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `exam_committee`
--

CREATE TABLE `exam_committee` (
  `exam_committee_id` int(11) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `session` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `chairman_id` int(11) NOT NULL,
  `start_Date` varchar(30) NOT NULL,
  `end_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_committee`
--

INSERT INTO `exam_committee` (`exam_committee_id`, `exam_id`, `session`, `semester`, `chairman_id`, `start_Date`, `end_date`) VALUES
(1, 1, 2011, 6, 1, '2014-07-01', '2014-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(60) NOT NULL,
  `project_desc` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_title`, `project_desc`) VALUES
(1, 'Project250', 'For 2/2 Students');

-- --------------------------------------------------------

--
-- Table structure for table `project_group`
--

CREATE TABLE `project_group` (
  `project_group_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_group_submit`
--

CREATE TABLE `project_group_submit` (
  `project_group_submit_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `project_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_tag`
--

CREATE TABLE `project_tag` (
  `project_tag_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `registration_no` int(11) NOT NULL,
  `email_no` varchar(50) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `Address` varchar(90) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `marital_status` varchar(30) DEFAULT NULL,
  `blood_group` varchar(30) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(30) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `registration_no`, `email_no`, `dept_id`, `contact_no`, `Address`, `first_name`, `last_name`, `marital_status`, `blood_group`, `religion`, `date_of_birth`, `gender`, `user_id`) VALUES
(1, 2011331001, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHEIKH', '  SHAFIN MAHMUD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 5),
(2, 2011331002, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'PRANON', '  RAHMAN KHAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 6),
(3, 2011331003, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  AHSAN KABIR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 7),
(4, 2011331004, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SAKHAWAT', '  HOSSAIN SAIMON', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 8),
(5, 2011331005, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHUVANON', '  RAZIK', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 9),
(6, 2011331006, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHAMMAD', '  FAHIM RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 10),
(7, 2011331007, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ASSADUZZAMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 11),
(8, 2011331008, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  HASIN IBTIDA ALAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 12),
(9, 2011331009, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'BISWAJIT', '  DEBNATH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 13),
(10, 2011331012, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHIBBIR', '  AHMAD OSMANI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 14),
(11, 2011331013, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  TARIQ HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 15),
(12, 2011331015, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANZIRA', '  NAJNIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 16),
(13, 2011331016, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'KAZI', '  EHSAN AZIZ', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 17),
(14, 2011331017, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SAKIBUL', '  MOWLA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 18),
(15, 2011331018, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHAMMAD', '  ASHFAQ- UR- RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 19),
(16, 2011331019, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUMAIYA', '  FAHMIDA CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 20),
(17, 2011331021, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RASHIDUL', '  HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 21),
(18, 2011331022, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SADMAN', '  ABEDIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 22),
(19, 2011331024, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SIDDARTHA', '  MALLICK', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 23),
(20, 2011331025, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHAMMAD', '  NUR UDDIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 24),
(21, 2011331026, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOZAMMEL', '  HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 25),
(22, 2011331027, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ASRAFUZZAMAN MOLLAH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 26),
(23, 2011331029, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'KHANDOKER', '  RAQIBUL HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 27),
(24, 2011331030, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ARIFUR RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 28),
(25, 2011331031, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUBRATA', '  NATH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 29),
(26, 2011331032, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'FATEMA', '  TABASSUM LIZA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 30),
(27, 2011331033, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUNNY', '  CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 31),
(28, 2011331034, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  RUMMAN MAHMUD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 32),
(29, 2011331035, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Arafat', '  Bin Hossain', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 33),
(30, 2011331036, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'FAZLA', '  ELAHI MD. JUBAYER', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 34),
(31, 2011331037, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NAYEEM IQUBAL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 35),
(32, 2011331039, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NAJMUZ SAKIB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 36),
(33, 2011331040, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAFI', '  ISLAM ARNOB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 37),
(34, 2011331041, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SULAYMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 38),
(35, 2011331042, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ANIK', '  CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 39),
(36, 2011331043, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SOURAV', '  GANGULY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 40),
(37, 2011331044, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MOHAIMINUL ISLAM BHUIYAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 41),
(38, 2011331045, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  TAIZUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 42),
(39, 2011331046, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MEZANUL', '  HOQUE CHY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 43),
(40, 2011331047, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'FAISAL', '  AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 44),
(41, 2011331048, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SAJID SHAHRIAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 45),
(42, 2011331049, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TAHSIN', '  RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 46),
(43, 2011331050, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NAEEM', '  BIN NASIR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 47),
(44, 2011331051, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ENAMUL', '  HASSAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 48),
(45, 2011331052, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHAMMAD', '  SADDAM HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 49),
(46, 2011331054, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SULTANA', '  RAZIA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 50),
(47, 2011331055, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  AL- AMIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 51),
(48, 2011331057, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ARUP', '  SARKER', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 52),
(49, 2011331058, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MANSUR UDDIN KHAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 53),
(50, 2011331059, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHAPAN', '  DAS UZZAL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 54),
(51, 2011331060, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NURUL WAHED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 55),
(52, 2011331063, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  KHAIRULLAH GAURAB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 56),
(53, 2011331064, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ASHZABIN', '  WADUD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 57),
(54, 2011331065, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANVIR', '  MAHBUB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 58),
(55, 2011331067, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'KAZI', '  SHAMSIL AREFINE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 59),
(56, 2011331068, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Sushen', '  Chandra Das', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 60),
(57, 2011331069, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Nourin', '  Ahmed', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 61),
(58, 2011331070, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Arnab', '  Gaswami', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 62),
(59, 2011331071, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Md.', '  Mamun Hossain', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 63),
(60, 2011331072, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Evan', '  Hossain', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 64),
(61, 2011331073, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Syed', '  Ikhtiar Ahmed', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 65),
(62, 2011331074, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Abdullah-Al-Mosabbir', ' ', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 66),
(63, 2011331075, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'PRANAB', '  SINGHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 67),
(64, 2012331002, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  TOUHIDUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 68),
(65, 2012331005, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'FARZAD', '  BIN FAZLE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 69),
(66, 2012331007, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  TANVEER ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 70),
(67, 2012331008, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ABU TALHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 71),
(68, 2012331009, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SIKDER', '  MOHAMMAD SHAKHAWAT AMIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 72),
(69, 2012331012, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHARMISHTHA', '  DUTTA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 73),
(70, 2012331013, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'BISHWAJIT', '  PURKAYSTHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 74),
(71, 2012331014, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUMMIT', '  HAQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 75),
(72, 2012331015, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOQSADUR', '  RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 76),
(73, 2012331016, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANVIR', '  AHAMED NAYEEM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 77),
(74, 2012331017, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'M.', '  TAHMID HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 78),
(75, 2012331018, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHAMMAD', '  SHADMAN HASHEM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 79),
(76, 2012331019, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUDIPTA', '  CHANDRA DAS DIPU', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 80),
(77, 2012331020, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAIHAN', '  AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 81),
(78, 2012331021, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SHAHED MAMUN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 82),
(79, 2012331022, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  RASEL PARVEJ', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 83),
(80, 2012331023, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Mehedi', '  Al Hasan', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 84),
(81, 2012331024, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NUSRAT', '  MUBIN ARA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 85),
(82, 2012331025, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SHARIF SIDDIQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 86),
(83, 2012331027, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  KAZI NAYEEM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 87),
(84, 2012331028, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MASIUR', '  RAHMAN SIDDIKI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 88),
(85, 2012331029, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  HABIBUR RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 89),
(86, 2012331030, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SYED', '  MEHEDI HASAN NIROB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 90),
(87, 2012331031, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SABIK', '  SAFKAT', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 91),
(88, 2012331033, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'JAHID', '  HASAN POLASH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 92),
(89, 2012331034, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NOYMUL', '  ISLAM CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 93),
(90, 2012331035, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHAMIM', '  EHSAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 94),
(91, 2012331036, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TAMANNA', '  AKTER', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 95),
(92, 2012331039, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'OBYDUL', '  ISLAM KHAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 96),
(93, 2012331041, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MUHAIMEEN', '  AHMED CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 97),
(94, 2012331042, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MEHNAZ', '  TABASSUM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 98),
(95, 2012331043, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RANIT', '  DEBNATH AKASH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 99),
(96, 2012331044, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TASMIA', '  HOSSAIN ANANYA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 100),
(97, 2012331045, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANJILA', '  MAWLA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 101),
(98, 2012331046, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.MAHMUDUN', '  NOBI KAKON', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 102),
(99, 2012331047, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SOURAV', '  BHOWMIK.', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 103),
(100, 2012331048, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MITHUN', '  DAS', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 104),
(101, 2012331049, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MOSHIUR RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 105),
(102, 2012331050, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  WALLY UDDIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 106),
(103, 2012331051, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'QUAZI', '  ISHTIAQUE MAHMUD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 107),
(104, 2012331052, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NOWSHAD HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 108),
(105, 2012331054, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ASIF', '  MOHAIMEN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 109),
(106, 2012331055, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.ABDULLAH', '  AL-AWAL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 110),
(107, 2012331056, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TAPOS', '  DATTA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 111),
(108, 2012331057, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUN', '  IBNE SAZZAD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 112),
(109, 2012331058, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MUSTAFIJUR RAHMAN NEBIR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 113),
(110, 2012331059, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  AL-AMIN NOWSHAD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 114),
(111, 2012331060, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHIAM', '  CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 115),
(112, 2012331061, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NILOY', '  MD. AZAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 116),
(113, 2012331062, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AYESHA', '  SIDDIKA NIPU', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 117),
(114, 2012331063, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'URMEE', '  PAL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 118),
(115, 2012331064, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'U', '  KHYOI NU', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 119),
(116, 2012331066, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ASHRAFUL ALAM SUJAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 120),
(117, 2012331067, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  JILLUR RAHMAN SAURAV', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 121),
(118, 2012331068, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SADDAM HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 122),
(119, 2012331069, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'DIPALOKE', '  SAHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 123),
(120, 2012331070, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'DHRUBA', '  CHAKRABORTY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 124),
(121, 2012331071, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NISHIKANTO', '  SARKAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 125),
(122, 2012331072, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SADIA', '  TASNIM SWARNA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 126),
(123, 2012331073, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ABU HANIFE NAYEM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 127),
(124, 2012331074, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SADI', '  MD. TARMIM HOQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 128),
(125, 2012331065, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Dhananjoy', '  Biswas', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 129),
(126, 2013331001, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ADNAN HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 130),
(127, 2013331002, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'LIMON', '  MIA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 131),
(128, 2013331003, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SAYED', '  MAHMUD AL AMIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 132),
(129, 2013331004, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOUDUD', '  AHMED KHAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 133),
(130, 2013331005, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAQIBUL', '  HASAN RAFI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 134),
(131, 2013331006, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MIR', '  NIAZ AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 135),
(132, 2013331007, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SAIFUL', '  ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 136),
(133, 2013331008, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ZUBAYER RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 137),
(134, 2013331009, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NISHAT', '  TASNIM AHMED MEEM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 138),
(135, 2013331010, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SIFAT', '  NAHIYAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 139),
(136, 2013331011, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ABDUR', '  RAZZAK', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 140),
(137, 2013331012, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.AHSAN', '  SERNIABAT', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 141),
(138, 2013331013, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.JAMIL', '  AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 142),
(139, 2013331014, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MIR', '  RAGIB ISHRAQ', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 143),
(140, 2013331015, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MARUF', '  AHMED MRIDUL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 144),
(141, 2013331016, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NURUL AZIM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 145),
(142, 2013331017, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ARNAB', '  SEN SHARMA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 146),
(143, 2013331018, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SAIFUL ISLAM BHUIYAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 147),
(144, 2013331019, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'FAISAL', '  AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 148),
(145, 2013331020, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.MONTASER', '  HAMID', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 149),
(146, 2013331021, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SAYF', '  UDDIN AL AZAD SAGOR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 150),
(147, 2013331022, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'JEB-UN-NESA', '  JAMAL JAME', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 151),
(148, 2013331023, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  RUMAN ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 152),
(149, 2013331024, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TALAT', '  MURSALIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 153),
(150, 2013331025, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'PROSENJITH', '  ROY SHUVO', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 154),
(151, 2013331026, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHADMAN', '  HABIB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 155),
(152, 2013331027, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.MINHAZUL', '  KABIR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 156),
(153, 2013331028, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MUHAMMAD', '  MAHIR HASAN CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 157),
(154, 2013331029, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NAHAR-E-ZOBAIDA', '  PAPRY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 158),
(155, 2013331030, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SABRIN', '  NOWRIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 159),
(156, 2013331031, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'IFTE', '  ARAF ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 160),
(157, 2013331032, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD', '  RAFIKUL ISLAM FARHAD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 161),
(158, 2013331033, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NAFISA', '  NOWSHIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 162),
(159, 2013331034, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'BUDDHA', '  CHANDRA BANIK', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 163),
(160, 2013331035, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ANWAR HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 164),
(161, 2013331036, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ABHIJEET', '  KURI PRITOM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 165),
(162, 2013331037, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'FOWZIA', '  YESMIN MUNNI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 166),
(163, 2013331038, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NAZIM UDDIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 167),
(164, 2013331039, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AMIT', '  KUMAR DATTA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 168),
(165, 2013331040, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'KAZI', '  SOWKOT HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 169),
(166, 2013331041, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'HAFSA', '  AKTHER SAMIA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 170),
(167, 2013331042, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.ALIMUR', '  RAZI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 171),
(168, 2013331043, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ASHIK SHAFAYET', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 172),
(169, 2013331044, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MUSTAFA ABRAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 173),
(170, 2013331045, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ZAKIA', '  SULTANA RITU', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 174),
(171, 2013331046, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ASHRAF', '  UDDIN TAFADAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 175),
(172, 2013331047, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  TOWHIDUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 176),
(173, 2013331048, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ASHIKUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 177),
(174, 2013331050, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  JAKIR HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 178),
(175, 2013331051, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAHUL', '  RAFIG', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 179),
(176, 2013331052, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  THOUHIDUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 180),
(177, 2013331053, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'S', '  M MOTAHARUZZAMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 181),
(178, 2013331054, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANVIR', '  ALAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 182),
(179, 2013331055, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SAIKOT', '  MAHMUD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 183),
(180, 2013331056, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  RAHAT- UL- AMIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 184),
(181, 2013331057, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'GAUTAM', '  CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 185),
(182, 2013331058, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  HAMIMUL HASAN CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 186),
(183, 2013331059, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD', '  NURUL HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 187),
(184, 2013331060, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ALIF AL AMIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 188),
(185, 2013331061, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  IMTIAZ AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 189),
(186, 2013331062, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  OZAYER ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 190),
(187, 2013331063, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAJESH', '  SINGHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 191),
(188, 2013331064, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHOAIB', '  ALAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 192),
(189, 2013331065, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NITESH', '  KHADKA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 193),
(190, 2013331067, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MYDUL HASSAN TARIF', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 194),
(191, 2013331068, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ABUL KASHEM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 195),
(192, 2013331069, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AKIDA', '  AKTER', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 196),
(193, 2014331001, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RIDOY', '  AKANDA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 197),
(194, 2014331002, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  FAISAL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 198),
(195, 2014331003, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'KAZI', '  SALAY MAHMUD DIPTA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 199),
(196, 2014331004, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ABDUR', '  RAZZAK KANAK', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 200),
(197, 2014331006, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MALIHA', '  TABASSUM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 201),
(198, 2014331007, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAHIMA', '  JAHAN MITU', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 202),
(199, 2014331008, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MALIHA', '  NUSRAT ARPA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 203),
(200, 2014331009, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  FOYAZ RAHMAN AKANDA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 204),
(201, 2014331011, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ABDULLAH', '  AZIZ SHARFUDDIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 205),
(202, 2014331012, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'BULBUL', '  ISTEHAQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 206),
(203, 2014331013, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MOTAHER HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 207),
(204, 2014331014, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'FARHAN', '  REJWAN SHAHREAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 208),
(205, 2014331015, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  GOLAM AZAM ABBASY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 209),
(206, 2014331020, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NEAMUL', '  AHASAN SHOVON', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 210),
(207, 2014331022, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'UMME', '  SUMAYA JANNAT', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 211),
(208, 2014331024, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ZAHID', '  HASAN PRANTO', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 212),
(209, 2014331025, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SYED', '  MD. HASNAYEEN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 213),
(210, 2014331026, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NAFIS TIHAMI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 214),
(211, 2014331027, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'JANNATUL', '  FERDOUS TULI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 215),
(212, 2014331029, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'A.F.M.KAMRUZZAMAN', ' ', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 216),
(213, 2014331032, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RUPASREE', '  DEY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 217),
(214, 2014331033, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SADIA', '  YEASMIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 218),
(215, 2014331034, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NAZMUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 219),
(216, 2014331035, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MINHAZ', '  MUKTADIR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 220),
(217, 2014331036, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AHMED', '  YUNUS', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 221),
(218, 2014331037, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MIRZA', '  KAMRUL BASHAR SHUHAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 222),
(219, 2014331038, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHAMMAD', '  MAIZIED HASAN MAJUMDER', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 223),
(220, 2014331039, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SOURAV', '  SARKER', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 224),
(221, 2014331040, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'YEASIR', '  AFSAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 225),
(222, 2014331041, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANMOY', '  BIPRO DAS', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 226),
(223, 2014331042, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ARIF', '  AKMAL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 227),
(224, 2014331043, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ASIF', '  MAHMUD', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 228),
(225, 2014331044, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  REZAUL ISLAM CHOWDHURY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 229),
(226, 2014331045, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ARIFUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 230),
(227, 2014331046, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  YUSUF ALI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 231),
(228, 2014331047, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOZUMDER', '  YEASIN AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 232),
(229, 2014331048, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHEHAB', '  AHMED SAYEM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 233),
(230, 2014331049, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MEHADI HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 234),
(231, 2014331050, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUJOY', '  NATH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 235),
(232, 2014331051, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'DIN', '  MOHAMMAD OBAYDUL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 236),
(233, 2014331052, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MIRZA', '  MEHRAB UDDIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 237),
(234, 2014331053, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ABID-IBN-RAHMAN', '  AKASH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 238),
(235, 2014331054, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHAMMAD', '  BAYEED HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 239),
(236, 2014331055, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MONIRUZZAMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 240),
(237, 2014331056, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'DIBYENDU', '  DEBNATH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 241),
(238, 2014331057, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANVIR', '  ALAM NIBIR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 242),
(239, 2014331058, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MUSFIQUR', '  RAHMAN CHISTY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 243),
(240, 2014331060, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  AZIZUL HAQUE IMON', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 244),
(241, 2014331061, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Hemayet', '  Ahmed Chowdhury', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 245),
(242, 2014331062, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ALIM AL SAJIB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 246),
(243, 2014331063, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SHAMSUL ARAFIN MAHTAB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 247),
(244, 2014331064, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MONG', '  TING WONG MARMA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 248),
(245, 2014331065, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SYEDA', '  TAMANNA ALAM MONISHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 249),
(246, 2014331066, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Tahsin', '  Ferdousi', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 250),
(247, 2014331067, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Hiba', '  Mohammad Noor', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 251),
(248, 2014331068, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SADIA', '  AFRIN KHAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 252),
(249, 2014331069, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 253),
(250, 2014331070, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHADAT', '  MUFAKHKHAR TONMOY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 254),
(251, 2014331071, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SARWAR', '  HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 255),
(252, 2014331072, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SHAHNUR ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 256),
(253, 2014331073, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NAYEM', '  HASAN APU', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 257),
(254, 2014331074, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MUHAMMAD', '  SHAKIB JAHAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 258),
(255, 2014331075, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MARUFUL ALAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 259),
(256, 2015331001, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'DOLAN', '  BAIRAGI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 260),
(257, 2015331002, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'A.K.M.FAKHRUL', '  HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 261),
(258, 2015331003, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AREFIN', '  NIAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 262),
(259, 2015331004, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  AHSAN UDDIN SHATIL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 263),
(260, 2015331005, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'OVISHEK', '  PAUL', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 264),
(261, 2015331006, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ANIK', '  BISWAS SHUVO', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 265),
(262, 2015331007, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.OMUR', '  FARUQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 266),
(263, 2015331008, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHAHRIAR-SHOVON', ' ', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 267),
(264, 2015331009, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NAYEEM', '  EHTESHAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 268),
(265, 2015331010, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAJAN', '  SAHA RAJU', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 269),
(266, 2015331011, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'PARTHA', '  PROTIM DAS', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 270),
(267, 2015331012, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'PRITHWIRAJ', '  BHATTACHARJEE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 271),
(268, 2015331013, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'JAMIMA', '  SULTANA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 272),
(269, 2015331014, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SK.', '  IFTEKHAR ALAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 273),
(270, 2015331015, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ANWER HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 274),
(271, 2015331016, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AVIJIT', '  DAS', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 275),
(272, 2015331017, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NAZMUS SAKIB', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 276),
(273, 2015331018, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ALFA', '  SUNNY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 277),
(274, 2015331019, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SRISTY', '  SANGSKRITI', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 278),
(275, 2015331020, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ASHIKUL ALAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 279),
(276, 2015331021, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  RAHAT MIA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 280),
(277, 2015331022, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'PROTIK', '  NAG', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 281),
(278, 2015331023, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ANAM', '  IBNA HARUN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 282),
(279, 2015331024, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SAROWAR', '  HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 283),
(280, 2015331025, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'TANMOY', '  KRISHNA DAS', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 284),
(281, 2015331026, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AVI', '  MALLICK', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 285),
(282, 2015331027, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MAHFUZ', '  AHMED MASUM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 286),
(283, 2015331028, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ANISUR', '  RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 287),
(284, 2015331029, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHISHIR', '  ROY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 288),
(285, 2015331030, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  NAZMUL HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 289),
(286, 2015331031, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHABIKUN', '  NAHAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 290),
(287, 2015331032, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  MONIRUL ISLAM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 291),
(288, 2015331033, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'RAIHAN', '  KABIR FAHIM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 292),
(289, 2015331034, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AHNAF', '  MOZIB SAMIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 293),
(290, 2015331035, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHUVONGKAR', '  ROY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 294),
(291, 2015331036, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  SUMAN HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 295),
(292, 2015331037, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ZOBAER HOSSAIN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 296),
(293, 2015331038, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'YEAHEA', '  HOQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 297),
(294, 2015331039, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AUNDRILA', '  ACHARJEE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 298),
(295, 2015331040, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'LUBNA', '  HAQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 299),
(296, 2015331041, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  OMAR HASAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 300),
(297, 2015331042, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AISHA', '  KHATUN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 301),
(298, 2015331043, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'JANNATUL', '  HOMYRA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 302),
(299, 2015331044, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHEIKH', '  JUNAYED AHMED', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 303),
(300, 2015331045, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'HUMAYUN', '  RASHID KABBYA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 304),
(301, 2015331046, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  HABIBUR RAHAMAN EMON', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 305),
(302, 2015331047, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'NAZNIN', '  HAQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 306),
(303, 2015331048, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MEHEDI', '  HASAN PALASH', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 307),
(304, 2015331049, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MST.KAMRUNNAHAR', '  KONA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 308),
(305, 2015331050, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ABU JOBAYER SARKAR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 309),
(306, 2015331051, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'Tapan', '  Basak', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 310),
(307, 2015331052, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MERAJATUL', '  FERDAUS', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 311),
(308, 2015331053, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ROMANA', '  MAHJABIN ESHITA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 312),
(309, 2015331054, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  ASHRAFUL RAHMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 313),
(310, 2015331055, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'AKASH', '  SAHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 314),
(311, 2015331056, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MOHSINA', '  JANNAT', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 315),
(312, 2015331057, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  HUMAYON KOBIR', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 316),
(313, 2015331058, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'DAYAMOY', '  DATTA SAIKAT', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 317),
(314, 2015331059, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  AKHTER- UZ- ZAMAN ASHIK', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 318),
(315, 2015331060, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MD.', '  JANNATUL ASHIK ARMAN', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 319),
(316, 2015331061, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'IFTEHER', '  ALOM', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 320),
(317, 2015331062, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SHOUVIK', '  ROY', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 321),
(318, 2015331063, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'SUMIT', '  SINGHA', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 322),
(319, 2015331064, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'ROUSHNI', '  RAFA MAJUMDER', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 323),
(320, 2015331065, 'abc@student.sust.edu', 1, '+8809999999999', 'Unknown', 'MAHBUBUL', '  HOQUE SIDDIQUE', 'single', 'AB+', 'Islam', '1990-01-01', 'male', 324);

-- --------------------------------------------------------

--
-- Table structure for table `student_group`
--

CREATE TABLE `student_group` (
  `stud_group_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `submission_id` int(11) NOT NULL,
  `comment_student` varchar(90) DEFAULT NULL,
  `submission_ver` int(11) DEFAULT NULL,
  `comment_teacher` varchar(80) DEFAULT NULL,
  `submission_time` varchar(40) NOT NULL,
  `submission_url` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(40) NOT NULL,
  `tag_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `task_title` varchar(50) NOT NULL,
  `task_desc` varchar(200) DEFAULT NULL,
  `task_deadline` datetime NOT NULL,
  `task_type_id` int(11) NOT NULL,
  `task_total_group_no` int(11) NOT NULL,
  `task_total_submisson_no` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task_title`, `task_desc`, `task_deadline`, `task_type_id`, `task_total_group_no`, `task_total_submisson_no`, `is_open`) VALUES
(1, 'Initial Meeting', 'First Meeting', '2018-01-01 10:00:00', 2, 10, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_project`
--

CREATE TABLE `task_project` (
  `task_project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_project`
--

INSERT INTO `task_project` (`task_project_id`, `task_id`, `project_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_type`
--

CREATE TABLE `task_type` (
  `task_type_id` int(11) NOT NULL,
  `task_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_type`
--

INSERT INTO `task_type` (`task_type_id`, `task_type_name`) VALUES
(1, 'Assignment'),
(2, 'Project'),
(3, 'Thesis');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `instructor_id` bigint(20) NOT NULL,
  `employee_code` varchar(30) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `desig_id` int(11) NOT NULL,
  `is_permanent` tinyint(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`instructor_id`, `employee_code`, `dept_id`, `desig_id`, `is_permanent`, `email`, `is_available`, `user_id`) VALUES
(1, 'SKN', 1, 4, 1, 'sknabil@sustarchive.com', 1, 2),
(2, 'MSI', 1, 3, 1, 'sabir_ismail@sustarchive.com', 1, 3),
(3, 'ERM', 1, 3, 1, 'eamin_rahman@sustarchive.com', 1, 4),
(4, 'mzi', 1, 1, 1, 'mzi@sustarchive.com', 1, 325),
(5, 'msr', 1, 1, 1, 'msr@sustarchive.com', 1, 326),
(6, 'mrs', 1, 1, 1, 'mrs@sustarchive.com', 1, 327),
(7, 'mji', 1, 1, 1, 'mji@sustarchive.com', 1, 328),
(8, 'mmasum', 1, 2, 1, 'mmasum@sustarchive.com', 1, 329),
(9, 'maam', 1, 2, 1, 'maam@sustarchive.com', 1, 330),
(10, 'rk', 1, 2, 1, 'rk@sustarchive.com', 1, 331),
(11, 'msc', 1, 3, 1, 'msc@sustarchive.com', 1, 332),
(12, 'hac', 1, 3, 1, 'hac@sustarchive.com', 1, 333),
(13, 'fc', 1, 3, 1, 'fc@sustarchive.com', 1, 334),
(14, 'at', 1, 3, 1, 'at@sustarchive.com', 1, 335),
(15, 'msaiful', 1, 3, 1, 'msi@sustarchive.com', 1, 336),
(16, 'ss', 1, 3, 1, 'ss@sustarchive.com', 1, 337),
(17, 'an', 1, 3, 1, 'an@sustarchive.com', 1, 338),
(18, 'mk', 1, 3, 1, 'mk@sustarchive.com', 1, 339),
(19, 'fr', 1, 3, 1, 'fr@sustarchive.com', 1, 340),
(20, 'mkh', 1, 3, 1, 'mkh@sustarchive.com', 1, 341),
(21, 'mra', 1, 3, 1, 'mra@sustarchive.com', 1, 342),
(22, 'si', 1, 3, 1, 'si@sustarchive.com', 1, 343),
(23, 'aams', 1, 3, 1, 'aams@sustarchive.com', 1, 344),
(24, 'ah', 1, 3, 1, 'ah@sustarchive.com', 1, 345),
(25, 'anb', 1, 3, 1, 'anb@sustarchive.com', 1, 346),
(26, 'dsp', 1, 3, 1, 'dsp@sustarchive.com', 1, 347),
(27, 'mej', 1, 4, 1, 'mej@sustarchive.com', 1, 348),
(28, 'bpc', 1, 4, 1, 'bpc@sustarchive.com', 1, 349),
(29, 'mm', 1, 4, 1, 'mm@sustarchive.com', 1, 350),
(30, 'SIIIII', 1, 1, 1, 'aaa', 1, 352),
(31, 'wefwwe', 1, 1, 1, 'aaa', 1, 353);

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `teaches_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`teaches_id`, `course_id`, `instructor_id`) VALUES
(1, 4, 1),
(2, 5, 1),
(3, 8, 30);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `user_type_id`, `user_email`) VALUES
(1, 'admin', '1234', 1, 'admin@sustarchive.com'),
(2, 'sknabil', '1234', 2, 'sknabil@sustarchive.com'),
(3, 'sabir_ismail', '1234', 2, 'sabir_ismail@sustarchive.com'),
(4, 'eamin_rahman', '1234', 2, 'eamin_rahman@sustarchive.com'),
(5, '2011331001', '1234', 3, 'abc@student.sust.edu'),
(6, '2011331002', '1234', 3, 'abc@student.sust.edu'),
(7, '2011331003', '1234', 3, 'abc@student.sust.edu'),
(8, '2011331004', '1234', 3, 'abc@student.sust.edu'),
(9, '2011331005', '1234', 3, 'abc@student.sust.edu'),
(10, '2011331006', '1234', 3, 'abc@student.sust.edu'),
(11, '2011331007', '1234', 3, 'abc@student.sust.edu'),
(12, '2011331008', '1234', 3, 'abc@student.sust.edu'),
(13, '2011331009', '1234', 3, 'abc@student.sust.edu'),
(14, '2011331012', '1234', 3, 'abc@student.sust.edu'),
(15, '2011331013', '1234', 3, 'abc@student.sust.edu'),
(16, '2011331015', '1234', 3, 'abc@student.sust.edu'),
(17, '2011331016', '1234', 3, 'abc@student.sust.edu'),
(18, '2011331017', '1234', 3, 'abc@student.sust.edu'),
(19, '2011331018', '1234', 3, 'abc@student.sust.edu'),
(20, '2011331019', '1234', 3, 'abc@student.sust.edu'),
(21, '2011331021', '1234', 3, 'abc@student.sust.edu'),
(22, '2011331022', '1234', 3, 'abc@student.sust.edu'),
(23, '2011331024', '1234', 3, 'abc@student.sust.edu'),
(24, '2011331025', '1234', 3, 'abc@student.sust.edu'),
(25, '2011331026', '1234', 3, 'abc@student.sust.edu'),
(26, '2011331027', '1234', 3, 'abc@student.sust.edu'),
(27, '2011331029', '1234', 3, 'abc@student.sust.edu'),
(28, '2011331030', '1234', 3, 'abc@student.sust.edu'),
(29, '2011331031', '1234', 3, 'abc@student.sust.edu'),
(30, '2011331032', '1234', 3, 'abc@student.sust.edu'),
(31, '2011331033', '1234', 3, 'abc@student.sust.edu'),
(32, '2011331034', '1234', 3, 'abc@student.sust.edu'),
(33, '2011331035', '1234', 3, 'abc@student.sust.edu'),
(34, '2011331036', '1234', 3, 'abc@student.sust.edu'),
(35, '2011331037', '1234', 3, 'abc@student.sust.edu'),
(36, '2011331039', '1234', 3, 'abc@student.sust.edu'),
(37, '2011331040', '1234', 3, 'abc@student.sust.edu'),
(38, '2011331041', '1234', 3, 'abc@student.sust.edu'),
(39, '2011331042', '1234', 3, 'abc@student.sust.edu'),
(40, '2011331043', '1234', 3, 'abc@student.sust.edu'),
(41, '2011331044', '1234', 3, 'abc@student.sust.edu'),
(42, '2011331045', '1234', 3, 'abc@student.sust.edu'),
(43, '2011331046', '1234', 3, 'abc@student.sust.edu'),
(44, '2011331047', '1234', 3, 'abc@student.sust.edu'),
(45, '2011331048', '1234', 3, 'abc@student.sust.edu'),
(46, '2011331049', '1234', 3, 'abc@student.sust.edu'),
(47, '2011331050', '1234', 3, 'abc@student.sust.edu'),
(48, '2011331051', '1234', 3, 'abc@student.sust.edu'),
(49, '2011331052', '1234', 3, 'abc@student.sust.edu'),
(50, '2011331054', '1234', 3, 'abc@student.sust.edu'),
(51, '2011331055', '1234', 3, 'abc@student.sust.edu'),
(52, '2011331057', '1234', 3, 'abc@student.sust.edu'),
(53, '2011331058', '1234', 3, 'abc@student.sust.edu'),
(54, '2011331059', '1234', 3, 'abc@student.sust.edu'),
(55, '2011331060', '1234', 3, 'abc@student.sust.edu'),
(56, '2011331063', '1234', 3, 'abc@student.sust.edu'),
(57, '2011331064', '1234', 3, 'abc@student.sust.edu'),
(58, '2011331065', '1234', 3, 'abc@student.sust.edu'),
(59, '2011331067', '1234', 3, 'abc@student.sust.edu'),
(60, '2011331068', '1234', 3, 'abc@student.sust.edu'),
(61, '2011331069', '1234', 3, 'abc@student.sust.edu'),
(62, '2011331070', '1234', 3, 'abc@student.sust.edu'),
(63, '2011331071', '1234', 3, 'abc@student.sust.edu'),
(64, '2011331072', '1234', 3, 'abc@student.sust.edu'),
(65, '2011331073', '1234', 3, 'abc@student.sust.edu'),
(66, '2011331074', '1234', 3, 'abc@student.sust.edu'),
(67, '2011331075', '1234', 3, 'abc@student.sust.edu'),
(68, '2012331002', '1234', 3, 'abc@student.sust.edu'),
(69, '2012331005', '1234', 3, 'abc@student.sust.edu'),
(70, '2012331007', '1234', 3, 'abc@student.sust.edu'),
(71, '2012331008', '1234', 3, 'abc@student.sust.edu'),
(72, '2012331009', '1234', 3, 'abc@student.sust.edu'),
(73, '2012331012', '1234', 3, 'abc@student.sust.edu'),
(74, '2012331013', '1234', 3, 'abc@student.sust.edu'),
(75, '2012331014', '1234', 3, 'abc@student.sust.edu'),
(76, '2012331015', '1234', 3, 'abc@student.sust.edu'),
(77, '2012331016', '1234', 3, 'abc@student.sust.edu'),
(78, '2012331017', '1234', 3, 'abc@student.sust.edu'),
(79, '2012331018', '1234', 3, 'abc@student.sust.edu'),
(80, '2012331019', '1234', 3, 'abc@student.sust.edu'),
(81, '2012331020', '1234', 3, 'abc@student.sust.edu'),
(82, '2012331021', '1234', 3, 'abc@student.sust.edu'),
(83, '2012331022', '1234', 3, 'abc@student.sust.edu'),
(84, '2012331023', '1234', 3, 'abc@student.sust.edu'),
(85, '2012331024', '1234', 3, 'abc@student.sust.edu'),
(86, '2012331025', '1234', 3, 'abc@student.sust.edu'),
(87, '2012331027', '1234', 3, 'abc@student.sust.edu'),
(88, '2012331028', '1234', 3, 'abc@student.sust.edu'),
(89, '2012331029', '1234', 3, 'abc@student.sust.edu'),
(90, '2012331030', '1234', 3, 'abc@student.sust.edu'),
(91, '2012331031', '1234', 3, 'abc@student.sust.edu'),
(92, '2012331033', '1234', 3, 'abc@student.sust.edu'),
(93, '2012331034', '1234', 3, 'abc@student.sust.edu'),
(94, '2012331035', '1234', 3, 'abc@student.sust.edu'),
(95, '2012331036', '1234', 3, 'abc@student.sust.edu'),
(96, '2012331039', '1234', 3, 'abc@student.sust.edu'),
(97, '2012331041', '1234', 3, 'abc@student.sust.edu'),
(98, '2012331042', '1234', 3, 'abc@student.sust.edu'),
(99, '2012331043', '1234', 3, 'abc@student.sust.edu'),
(100, '2012331044', '1234', 3, 'abc@student.sust.edu'),
(101, '2012331045', '1234', 3, 'abc@student.sust.edu'),
(102, '2012331046', '1234', 3, 'abc@student.sust.edu'),
(103, '2012331047', '1234', 3, 'abc@student.sust.edu'),
(104, '2012331048', '1234', 3, 'abc@student.sust.edu'),
(105, '2012331049', '1234', 3, 'abc@student.sust.edu'),
(106, '2012331050', '1234', 3, 'abc@student.sust.edu'),
(107, '2012331051', '1234', 3, 'abc@student.sust.edu'),
(108, '2012331052', '1234', 3, 'abc@student.sust.edu'),
(109, '2012331054', '1234', 3, 'abc@student.sust.edu'),
(110, '2012331055', '1234', 3, 'abc@student.sust.edu'),
(111, '2012331056', '1234', 3, 'abc@student.sust.edu'),
(112, '2012331057', '1234', 3, 'abc@student.sust.edu'),
(113, '2012331058', '1234', 3, 'abc@student.sust.edu'),
(114, '2012331059', '1234', 3, 'abc@student.sust.edu'),
(115, '2012331060', '1234', 3, 'abc@student.sust.edu'),
(116, '2012331061', '1234', 3, 'abc@student.sust.edu'),
(117, '2012331062', '1234', 3, 'abc@student.sust.edu'),
(118, '2012331063', '1234', 3, 'abc@student.sust.edu'),
(119, '2012331064', '1234', 3, 'abc@student.sust.edu'),
(120, '2012331066', '1234', 3, 'abc@student.sust.edu'),
(121, '2012331067', '1234', 3, 'abc@student.sust.edu'),
(122, '2012331068', '1234', 3, 'abc@student.sust.edu'),
(123, '2012331069', '1234', 3, 'abc@student.sust.edu'),
(124, '2012331070', '1234', 3, 'abc@student.sust.edu'),
(125, '2012331071', '1234', 3, 'abc@student.sust.edu'),
(126, '2012331072', '1234', 3, 'abc@student.sust.edu'),
(127, '2012331073', '1234', 3, 'abc@student.sust.edu'),
(128, '2012331074', '1234', 3, 'abc@student.sust.edu'),
(129, '2012331065', '1234', 3, 'abc@student.sust.edu'),
(130, '2013331001', '1234', 3, 'abc@student.sust.edu'),
(131, '2013331002', '1234', 3, 'abc@student.sust.edu'),
(132, '2013331003', '1234', 3, 'abc@student.sust.edu'),
(133, '2013331004', '1234', 3, 'abc@student.sust.edu'),
(134, '2013331005', '1234', 3, 'abc@student.sust.edu'),
(135, '2013331006', '1234', 3, 'abc@student.sust.edu'),
(136, '2013331007', '1234', 3, 'abc@student.sust.edu'),
(137, '2013331008', '1234', 3, 'abc@student.sust.edu'),
(138, '2013331009', '1234', 3, 'abc@student.sust.edu'),
(139, '2013331010', '1234', 3, 'abc@student.sust.edu'),
(140, '2013331011', '1234', 3, 'abc@student.sust.edu'),
(141, '2013331012', '1234', 3, 'abc@student.sust.edu'),
(142, '2013331013', '1234', 3, 'abc@student.sust.edu'),
(143, '2013331014', '1234', 3, 'abc@student.sust.edu'),
(144, '2013331015', '1234', 3, 'abc@student.sust.edu'),
(145, '2013331016', '1234', 3, 'abc@student.sust.edu'),
(146, '2013331017', '1234', 3, 'abc@student.sust.edu'),
(147, '2013331018', '1234', 3, 'abc@student.sust.edu'),
(148, '2013331019', '1234', 3, 'abc@student.sust.edu'),
(149, '2013331020', '1234', 3, 'abc@student.sust.edu'),
(150, '2013331021', '1234', 3, 'abc@student.sust.edu'),
(151, '2013331022', '1234', 3, 'abc@student.sust.edu'),
(152, '2013331023', '1234', 3, 'abc@student.sust.edu'),
(153, '2013331024', '1234', 3, 'abc@student.sust.edu'),
(154, '2013331025', '1234', 3, 'abc@student.sust.edu'),
(155, '2013331026', '1234', 3, 'abc@student.sust.edu'),
(156, '2013331027', '1234', 3, 'abc@student.sust.edu'),
(157, '2013331028', '1234', 3, 'abc@student.sust.edu'),
(158, '2013331029', '1234', 3, 'abc@student.sust.edu'),
(159, '2013331030', '1234', 3, 'abc@student.sust.edu'),
(160, '2013331031', '1234', 3, 'abc@student.sust.edu'),
(161, '2013331032', '1234', 3, 'abc@student.sust.edu'),
(162, '2013331033', '1234', 3, 'abc@student.sust.edu'),
(163, '2013331034', '1234', 3, 'abc@student.sust.edu'),
(164, '2013331035', '1234', 3, 'abc@student.sust.edu'),
(165, '2013331036', '1234', 3, 'abc@student.sust.edu'),
(166, '2013331037', '1234', 3, 'abc@student.sust.edu'),
(167, '2013331038', '1234', 3, 'abc@student.sust.edu'),
(168, '2013331039', '1234', 3, 'abc@student.sust.edu'),
(169, '2013331040', '1234', 3, 'abc@student.sust.edu'),
(170, '2013331041', '1234', 3, 'abc@student.sust.edu'),
(171, '2013331042', '1234', 3, 'abc@student.sust.edu'),
(172, '2013331043', '1234', 3, 'abc@student.sust.edu'),
(173, '2013331044', '1234', 3, 'abc@student.sust.edu'),
(174, '2013331045', '1234', 3, 'abc@student.sust.edu'),
(175, '2013331046', '1234', 3, 'abc@student.sust.edu'),
(176, '2013331047', '1234', 3, 'abc@student.sust.edu'),
(177, '2013331048', '1234', 3, 'abc@student.sust.edu'),
(178, '2013331050', '1234', 3, 'abc@student.sust.edu'),
(179, '2013331051', '1234', 3, 'abc@student.sust.edu'),
(180, '2013331052', '1234', 3, 'abc@student.sust.edu'),
(181, '2013331053', '1234', 3, 'abc@student.sust.edu'),
(182, '2013331054', '1234', 3, 'abc@student.sust.edu'),
(183, '2013331055', '1234', 3, 'abc@student.sust.edu'),
(184, '2013331056', '1234', 3, 'abc@student.sust.edu'),
(185, '2013331057', '1234', 3, 'abc@student.sust.edu'),
(186, '2013331058', '1234', 3, 'abc@student.sust.edu'),
(187, '2013331059', '1234', 3, 'abc@student.sust.edu'),
(188, '2013331060', '1234', 3, 'abc@student.sust.edu'),
(189, '2013331061', '1234', 3, 'abc@student.sust.edu'),
(190, '2013331062', '1234', 3, 'abc@student.sust.edu'),
(191, '2013331063', '1234', 3, 'abc@student.sust.edu'),
(192, '2013331064', '1234', 3, 'abc@student.sust.edu'),
(193, '2013331065', '1234', 3, 'abc@student.sust.edu'),
(194, '2013331067', '1234', 3, 'abc@student.sust.edu'),
(195, '2013331068', '1234', 3, 'abc@student.sust.edu'),
(196, '2013331069', '1234', 3, 'abc@student.sust.edu'),
(197, '2014331001', '1234', 3, 'abc@student.sust.edu'),
(198, '2014331002', '1234', 3, 'abc@student.sust.edu'),
(199, '2014331003', '1234', 3, 'abc@student.sust.edu'),
(200, '2014331004', '1234', 3, 'abc@student.sust.edu'),
(201, '2014331006', '1234', 3, 'abc@student.sust.edu'),
(202, '2014331007', '1234', 3, 'abc@student.sust.edu'),
(203, '2014331008', '1234', 3, 'abc@student.sust.edu'),
(204, '2014331009', '1234', 3, 'abc@student.sust.edu'),
(205, '2014331011', '1234', 3, 'abc@student.sust.edu'),
(206, '2014331012', '1234', 3, 'abc@student.sust.edu'),
(207, '2014331013', '1234', 3, 'abc@student.sust.edu'),
(208, '2014331014', '1234', 3, 'abc@student.sust.edu'),
(209, '2014331015', '1234', 3, 'abc@student.sust.edu'),
(210, '2014331020', '1234', 3, 'abc@student.sust.edu'),
(211, '2014331022', '1234', 3, 'abc@student.sust.edu'),
(212, '2014331024', '1234', 3, 'abc@student.sust.edu'),
(213, '2014331025', '1234', 3, 'abc@student.sust.edu'),
(214, '2014331026', '1234', 3, 'abc@student.sust.edu'),
(215, '2014331027', '1234', 3, 'abc@student.sust.edu'),
(216, '2014331029', '1234', 3, 'abc@student.sust.edu'),
(217, '2014331032', '1234', 3, 'abc@student.sust.edu'),
(218, '2014331033', '1234', 3, 'abc@student.sust.edu'),
(219, '2014331034', '1234', 3, 'abc@student.sust.edu'),
(220, '2014331035', '1234', 3, 'abc@student.sust.edu'),
(221, '2014331036', '1234', 3, 'abc@student.sust.edu'),
(222, '2014331037', '1234', 3, 'abc@student.sust.edu'),
(223, '2014331038', '1234', 3, 'abc@student.sust.edu'),
(224, '2014331039', '1234', 3, 'abc@student.sust.edu'),
(225, '2014331040', '1234', 3, 'abc@student.sust.edu'),
(226, '2014331041', '1234', 3, 'abc@student.sust.edu'),
(227, '2014331042', '1234', 3, 'abc@student.sust.edu'),
(228, '2014331043', '1234', 3, 'abc@student.sust.edu'),
(229, '2014331044', '1234', 3, 'abc@student.sust.edu'),
(230, '2014331045', '1234', 3, 'abc@student.sust.edu'),
(231, '2014331046', '1234', 3, 'abc@student.sust.edu'),
(232, '2014331047', '1234', 3, 'abc@student.sust.edu'),
(233, '2014331048', '1234', 3, 'abc@student.sust.edu'),
(234, '2014331049', '1234', 3, 'abc@student.sust.edu'),
(235, '2014331050', '1234', 3, 'abc@student.sust.edu'),
(236, '2014331051', '1234', 3, 'abc@student.sust.edu'),
(237, '2014331052', '1234', 3, 'abc@student.sust.edu'),
(238, '2014331053', '1234', 3, 'abc@student.sust.edu'),
(239, '2014331054', '1234', 3, 'abc@student.sust.edu'),
(240, '2014331055', '1234', 3, 'abc@student.sust.edu'),
(241, '2014331056', '1234', 3, 'abc@student.sust.edu'),
(242, '2014331057', '1234', 3, 'abc@student.sust.edu'),
(243, '2014331058', '1234', 3, 'abc@student.sust.edu'),
(244, '2014331060', '1234', 3, 'abc@student.sust.edu'),
(245, '2014331061', '1234', 3, 'abc@student.sust.edu'),
(246, '2014331062', '1234', 3, 'abc@student.sust.edu'),
(247, '2014331063', '1234', 3, 'abc@student.sust.edu'),
(248, '2014331064', '1234', 3, 'abc@student.sust.edu'),
(249, '2014331065', '1234', 3, 'abc@student.sust.edu'),
(250, '2014331066', '1234', 3, 'abc@student.sust.edu'),
(251, '2014331067', '1234', 3, 'abc@student.sust.edu'),
(252, '2014331068', '1234', 3, 'abc@student.sust.edu'),
(253, '2014331069', '1234', 3, 'abc@student.sust.edu'),
(254, '2014331070', '1234', 3, 'abc@student.sust.edu'),
(255, '2014331071', '1234', 3, 'abc@student.sust.edu'),
(256, '2014331072', '1234', 3, 'abc@student.sust.edu'),
(257, '2014331073', '1234', 3, 'abc@student.sust.edu'),
(258, '2014331074', '1234', 3, 'abc@student.sust.edu'),
(259, '2014331075', '1234', 3, 'abc@student.sust.edu'),
(260, '2015331001', '1234', 3, 'abc@student.sust.edu'),
(261, '2015331002', '1234', 3, 'abc@student.sust.edu'),
(262, '2015331003', '1234', 3, 'abc@student.sust.edu'),
(263, '2015331004', '1234', 3, 'abc@student.sust.edu'),
(264, '2015331005', '1234', 3, 'abc@student.sust.edu'),
(265, '2015331006', '1234', 3, 'abc@student.sust.edu'),
(266, '2015331007', '1234', 3, 'abc@student.sust.edu'),
(267, '2015331008', '1234', 3, 'abc@student.sust.edu'),
(268, '2015331009', '1234', 3, 'abc@student.sust.edu'),
(269, '2015331010', '1234', 3, 'abc@student.sust.edu'),
(270, '2015331011', '1234', 3, 'abc@student.sust.edu'),
(271, '2015331012', '1234', 3, 'abc@student.sust.edu'),
(272, '2015331013', '1234', 3, 'abc@student.sust.edu'),
(273, '2015331014', '1234', 3, 'abc@student.sust.edu'),
(274, '2015331015', '1234', 3, 'abc@student.sust.edu'),
(275, '2015331016', '1234', 3, 'abc@student.sust.edu'),
(276, '2015331017', '1234', 3, 'abc@student.sust.edu'),
(277, '2015331018', '1234', 3, 'abc@student.sust.edu'),
(278, '2015331019', '1234', 3, 'abc@student.sust.edu'),
(279, '2015331020', '1234', 3, 'abc@student.sust.edu'),
(280, '2015331021', '1234', 3, 'abc@student.sust.edu'),
(281, '2015331022', '1234', 3, 'abc@student.sust.edu'),
(282, '2015331023', '1234', 3, 'abc@student.sust.edu'),
(283, '2015331024', '1234', 3, 'abc@student.sust.edu'),
(284, '2015331025', '1234', 3, 'abc@student.sust.edu'),
(285, '2015331026', '1234', 3, 'abc@student.sust.edu'),
(286, '2015331027', '1234', 3, 'abc@student.sust.edu'),
(287, '2015331028', '1234', 3, 'abc@student.sust.edu'),
(288, '2015331029', '1234', 3, 'abc@student.sust.edu'),
(289, '2015331030', '1234', 3, 'abc@student.sust.edu'),
(290, '2015331031', '1234', 3, 'abc@student.sust.edu'),
(291, '2015331032', '1234', 3, 'abc@student.sust.edu'),
(292, '2015331033', '1234', 3, 'abc@student.sust.edu'),
(293, '2015331034', '1234', 3, 'abc@student.sust.edu'),
(294, '2015331035', '1234', 3, 'abc@student.sust.edu'),
(295, '2015331036', '1234', 3, 'abc@student.sust.edu'),
(296, '2015331037', '1234', 3, 'abc@student.sust.edu'),
(297, '2015331038', '1234', 3, 'abc@student.sust.edu'),
(298, '2015331039', '1234', 3, 'abc@student.sust.edu'),
(299, '2015331040', '1234', 3, 'abc@student.sust.edu'),
(300, '2015331041', '1234', 3, 'abc@student.sust.edu'),
(301, '2015331042', '1234', 3, 'abc@student.sust.edu'),
(302, '2015331043', '1234', 3, 'abc@student.sust.edu'),
(303, '2015331044', '1234', 3, 'abc@student.sust.edu'),
(304, '2015331045', '1234', 3, 'abc@student.sust.edu'),
(305, '2015331046', '1234', 3, 'abc@student.sust.edu'),
(306, '2015331047', '1234', 3, 'abc@student.sust.edu'),
(307, '2015331048', '1234', 3, 'abc@student.sust.edu'),
(308, '2015331049', '1234', 3, 'abc@student.sust.edu'),
(309, '2015331050', '1234', 3, 'abc@student.sust.edu'),
(310, '2015331051', '1234', 3, 'abc@student.sust.edu'),
(311, '2015331052', '1234', 3, 'abc@student.sust.edu'),
(312, '2015331053', '1234', 3, 'abc@student.sust.edu'),
(313, '2015331054', '1234', 3, 'saumik12@student.sust.edu'),
(314, '2015331055', '1234', 3, 'abc@student.sust.edu'),
(315, '2015331056', '1234', 3, 'abc@student.sust.edu'),
(316, '2015331057', '1234', 3, 'abc@student.sust.edu'),
(317, '2015331058', '1234', 3, 'abc@student.sust.edu'),
(318, '2015331059', '1234', 3, 'abc@student.sust.edu'),
(319, '2015331060', '1234', 3, 'abc@student.sust.edu'),
(320, '2015331061', '1234', 3, 'abc@student.sust.edu'),
(321, '2015331062', '1234', 3, 'abc@student.sust.edu'),
(322, '2015331063', '1234', 3, 'abc@student.sust.edu'),
(323, '2015331064', '1234', 3, 'abc@student.sust.edu'),
(324, '2015331065', '1234', 3, 'abc@student.sust.edu'),
(325, 'mzi', '1234', 2, 'mzi@sustarchive.com'),
(326, 'msr', '1234', 2, 'msr@sustarchive.com'),
(327, 'mrs', '1234', 2, 'mrs@sustarchive.com'),
(328, 'mji', '1234', 2, 'mji@sustarchive.com'),
(329, 'mmasum', '1234', 2, 'mmasum@sustarchive.com'),
(330, 'maam', '1234', 2, 'maam@sustarchive.com'),
(331, 'rk', '1234', 2, 'rk@sustarchive.com'),
(332, 'msc', '1234', 2, 'msc@sustarchive.com'),
(333, 'hac', '1234', 2, 'hac@sustarchive.com'),
(334, 'fc', '1234', 2, 'fc@sustarchive.com'),
(335, 'at', '1234', 2, 'at@sustarchive.com'),
(336, 'msi', '1234', 2, 'msi@sustarchive.com'),
(337, 'ss', '1234', 2, 'ss@sustarchive.com'),
(338, 'an', '1234', 2, 'an@sustarchive.com'),
(339, 'mk', '1234', 2, 'mk@sustarchive.com'),
(340, 'fr', '1234', 2, 'fr@sustarchive.com'),
(341, 'mkh', '1234', 2, 'mkh@sustarchive.com'),
(342, 'mra', '1234', 2, 'mra@sustarchive.com'),
(343, 'si', '1234', 2, 'si@sustarchive.com'),
(344, 'aams', '1234', 2, 'aams@sustarchive.com'),
(345, 'ah', '1234', 2, 'ah@sustarchive.com'),
(346, 'anb', '1234', 2, 'anb@sustarchive.com'),
(347, 'dsp', '1234', 2, 'dsp@sustarchive.com'),
(348, 'mej', '1234', 2, 'mej@sustarchive.com'),
(349, 'bpc', '1234', 2, 'bpc@sustarchive.com'),
(350, 'mm', '1234', 2, 'mm@sustarchive.com'),
(351, 'saiful_saif351', '1234', 2, 'saif-cse@sust.edu'),
(352, 'saiful_saif352', '1234', 2, 'saif_cse@sust.edu'),
(353, 'sdff353', 'sdfdsd', 2, 'sdfsdfs'),
(354, 'shuhan354', '1234', 3, 'shuhan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(30) NOT NULL,
  `user_desc` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type_name`, `user_desc`) VALUES
(1, 'Administrator', 'Primary level authority.'),
(2, 'Teacher', 'Secondary level authority'),
(3, 'Student', 'Tertiary level authority');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_unique` (`course_code`,`offering_dept`,`accepting_dept`,`session`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`course_reg_id`),
  ADD UNIQUE KEY `course_reg_unique` (`student_id`,`course_id`),
  ADD KEY `course_course_reg_fk` (`course_id`);

--
-- Indexes for table `course_task`
--
ALTER TABLE `course_task`
  ADD PRIMARY KEY (`course_task_id`),
  ADD KEY `exam_committee_course_task_fk` (`exam_committee_id`),
  ADD KEY `task_course_task_fk` (`task_id`),
  ADD KEY `course_course_task_fk` (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `department_unique` (`dept_code`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`desig_id`),
  ADD UNIQUE KEY `designation_unique` (`desig_name`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`),
  ADD UNIQUE KEY `exam_unique` (`usn_no`,`dept_id`),
  ADD KEY `department_exam_fk` (`dept_id`);

--
-- Indexes for table `exam_committee`
--
ALTER TABLE `exam_committee`
  ADD PRIMARY KEY (`exam_committee_id`),
  ADD UNIQUE KEY `exam_committee_unique` (`exam_id`,`session`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_unique` (`group_name`,`task_id`),
  ADD KEY `task_group_fk` (`task_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_group`
--
ALTER TABLE `project_group`
  ADD PRIMARY KEY (`project_group_id`),
  ADD KEY `project_project_group_fk` (`project_id`),
  ADD KEY `groups_project_group_fk` (`group_id`);

--
-- Indexes for table `project_group_submit`
--
ALTER TABLE `project_group_submit`
  ADD PRIMARY KEY (`project_group_submit_id`),
  ADD KEY `submission_project_group_submit_fk` (`submission_id`),
  ADD KEY `project_group_project_group_submit_fk` (`project_group_id`);

--
-- Indexes for table `project_tag`
--
ALTER TABLE `project_tag`
  ADD PRIMARY KEY (`project_tag_id`),
  ADD KEY `tag_project_tag_fk` (`tag_id`),
  ADD KEY `project_project_tag_fk` (`project_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_idx_unique` (`registration_no`),
  ADD KEY `department_student_fk` (`dept_id`),
  ADD KEY `user_student_fk` (`user_id`);

--
-- Indexes for table `student_group`
--
ALTER TABLE `student_group`
  ADD PRIMARY KEY (`stud_group_id`),
  ADD KEY `groups_student_group_fk` (`group_id`),
  ADD KEY `student_student_group_fk` (`student_id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `tag_name` (`tag_name`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `task_type_task_fk` (`task_type_id`);

--
-- Indexes for table `task_project`
--
ALTER TABLE `task_project`
  ADD PRIMARY KEY (`task_project_id`),
  ADD UNIQUE KEY `task_project_unique` (`task_id`,`project_id`),
  ADD KEY `project_task_project_fk` (`project_id`);

--
-- Indexes for table `task_type`
--
ALTER TABLE `task_type`
  ADD PRIMARY KEY (`task_type_id`),
  ADD UNIQUE KEY `task_type_idx` (`task_type_name`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`instructor_id`),
  ADD UNIQUE KEY `teacher_unique` (`employee_code`,`dept_id`),
  ADD KEY `department_teacher_fk` (`dept_id`),
  ADD KEY `designation_teacher_fk` (`desig_id`),
  ADD KEY `user_teacher_fk` (`user_id`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`teaches_id`),
  ADD UNIQUE KEY `teaches_unique` (`course_id`,`instructor_id`),
  ADD KEY `teacher_teaches_fk` (`instructor_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_unique` (`user_name`),
  ADD UNIQUE KEY `user_idx1` (`user_name`),
  ADD KEY `user_type_user_fk` (`user_type_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`),
  ADD UNIQUE KEY `user_type_unique` (`user_type_name`),
  ADD KEY `user_type_idx` (`user_type_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `course_task`
--
ALTER TABLE `course_task`
  MODIFY `course_task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `desig_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exam_committee`
--
ALTER TABLE `exam_committee`
  MODIFY `exam_committee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_group`
--
ALTER TABLE `project_group`
  MODIFY `project_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project_group_submit`
--
ALTER TABLE `project_group_submit`
  MODIFY `project_group_submit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project_tag`
--
ALTER TABLE `project_tag`
  MODIFY `project_tag_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;
--
-- AUTO_INCREMENT for table `student_group`
--
ALTER TABLE `student_group`
  MODIFY `stud_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `task_project`
--
ALTER TABLE `task_project`
  MODIFY `task_project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teaches`
--
ALTER TABLE `teaches`
  MODIFY `teaches_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD CONSTRAINT `course_course_reg_fk` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `student_course_reg_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `course_task`
--
ALTER TABLE `course_task`
  ADD CONSTRAINT `course_course_task_fk` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `exam_committee_course_task_fk` FOREIGN KEY (`exam_committee_id`) REFERENCES `exam_committee` (`exam_committee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `task_course_task_fk` FOREIGN KEY (`task_id`) REFERENCES `task` (`task_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `department_exam_fk` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `exam_committee`
--
ALTER TABLE `exam_committee`
  ADD CONSTRAINT `exam_exam_committee_fk` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `task_group_fk` FOREIGN KEY (`task_id`) REFERENCES `task` (`task_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `project_group`
--
ALTER TABLE `project_group`
  ADD CONSTRAINT `groups_project_group_fk` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_project_group_fk` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `project_group_submit`
--
ALTER TABLE `project_group_submit`
  ADD CONSTRAINT `project_group_project_group_submit_fk` FOREIGN KEY (`project_group_id`) REFERENCES `project_group` (`project_group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `submission_project_group_submit_fk` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`submission_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `project_tag`
--
ALTER TABLE `project_tag`
  ADD CONSTRAINT `project_project_tag_fk` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tag_project_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `department_student_fk` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_student_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_group`
--
ALTER TABLE `student_group`
  ADD CONSTRAINT `groups_student_group_fk` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `student_student_group_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_type_task_fk` FOREIGN KEY (`task_type_id`) REFERENCES `task_type` (`task_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `task_project`
--
ALTER TABLE `task_project`
  ADD CONSTRAINT `project_task_project_fk` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `task_task_project_fk` FOREIGN KEY (`task_id`) REFERENCES `task` (`task_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `department_teacher_fk` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `designation_teacher_fk` FOREIGN KEY (`desig_id`) REFERENCES `designation` (`desig_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_teacher_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `course_teaches_fk` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `teacher_teaches_fk` FOREIGN KEY (`instructor_id`) REFERENCES `teacher` (`instructor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_type_user_fk` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
