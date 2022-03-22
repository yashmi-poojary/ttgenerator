-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2022 at 05:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`name`, `status`) VALUES
('ZX22', 4),
('NL32', 2),
('ML10', 3),
('ny03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `grievance`
--

CREATE TABLE `grievance` (
  `gr_id` int(11) NOT NULL,
  `issue` text NOT NULL,
  `solution` text NOT NULL DEFAULT '\'NULL\'',
  `id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grievance`
--

INSERT INTO `grievance` (`gr_id`, `issue`, `solution`, `id`) VALUES
(1, 'no free', 'rews', 'T001'),
(3, 'ABCD', 'DEF', 'T004');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(20) NOT NULL,
  `topic` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `skills` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`g_id`, `g_name`, `topic`, `email`, `skills`) VALUES
(1, 'JANET', 'PHP', 'ABC@123.COM', 'CREATIVE');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `L_id` varchar(10) NOT NULL,
  `L_pass` varchar(10) NOT NULL DEFAULT 'ad001'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`L_id`, `L_pass`) VALUES
('T001', 'ad001'),
('T002', 'ad001'),
('T003', 'ad001'),
('T004', 'ad001'),
('T005', 'ad001'),
('T006', 'ad001'),
('T007', 'ad001'),
('T008', 'ad001'),
('T009', 'ad001');

-- --------------------------------------------------------

--
-- Table structure for table `semester3`
--

CREATE TABLE `semester3` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester3`
--

INSERT INTO `semester3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'AM261<br>RM', 'CO203<br>STV', 'CO207<br>SHA', 'hbb<br>RM', '-<br>-', 'CO292<br>, , '),
('tuesday', 'AM261<br>RM', 'CO203<br>STV', 'CO207<br>SHA', 'hbb<br>RM', '-<br>-', '-<br>-, -, -'),
('wednesday', 'AM261<br>RM', 'CO203<br>STV', 'CO207<br>SHA', 'hbb<br>RM', '-<br>-', 'CO293<br>STV, MRW, ANA'),
('thursday', 'CO207<br>SHA', 'hbb<br>RM', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292<br>, , '),
('saturday', 'AM261<br>RM', 'CO203<br>STV', '-<br>-', '-<br>-', '-<br>-', 'CO293<br>STV, MRW, ANA');

-- --------------------------------------------------------

--
-- Table structure for table `semester5`
--

CREATE TABLE `semester5` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester5`
--

INSERT INTO `semester5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CO310<br>NS', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394<br>SMI, RM, SHA'),
('tuesday', 'CO309<br>MHD', 'CO254<br>NS', '-<br>-', '-<br>-', '-<br>-', 'CO393<br>, , '),
('wednesday', 'CO309<br>MHD', 'CO254<br>NS', 'CO308<br>ANA', '-<br>-', '-<br>-', 'CO394<br>SMI, RM, SHA'),
('thursday', 'CO309<br>MHD', 'CO254<br>NS', 'CO308<br>ANA', 'CO310<br>NS', '-<br>-', 'CO393<br>, , '),
('friday', 'CO309<br>MHD', 'CO254<br>NS', 'CO308<br>ANA', 'CO310<br>NS', '-<br>-', '-<br>-, -, -'),
('saturday', 'CO308<br>ANA', 'CO310<br>NS', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester7`
--

CREATE TABLE `semester7` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester7`
--

INSERT INTO `semester7` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CO445<br>SHA', 'CO451<br>SHA', 'CO460<br>MRW', '-<br>-', '-<br>-', 'CO494<br>MRW, STV, RSH'),
('tuesday', 'CO451<br>SHA', 'CO460<br>MRW', '-<br>-', '-<br>-', '-<br>-', 'CO493<br>MRW, MHD, NS'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-, -, -'),
('thursday', '-<br>-', 'CO445<br>SHA', '-<br>-', '-<br>-', '-<br>-', 'CO494<br>MRW, STV, RSH'),
('friday', 'CO445<br>SHA', 'CO451<br>SHA', 'CO460<br>MRW', '-<br>-', '-<br>-', 'CO493<br>MRW, MHD, NS'),
('saturday', 'CO445<br>SHA', 'CO451<br>SHA', 'CO460<br>MRW', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` varchar(20) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `st_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `s_name`, `section`, `semester`, `st_pass`) VALUES
('CR01', 'Samuel', '3A', 3, 'ad001'),
('CR02', 'Jenny', '3B', 3, 'ad001'),
('CR03', 'Lisa', '5A', 5, 'ad001'),
('CR04', 'Jackson', '5B', 5, 'JACKson125690gh'),
('CR05', 'Mason', '7A', 7, '1234ABcd'),
('CR06', 'Nathan', '7B', 7, 'ad001');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_type` varchar(15) NOT NULL,
  `semester` int(1) NOT NULL,
  `isAlloted` int(1) NOT NULL,
  `allotedto` text NOT NULL,
  `allotedto2` text NOT NULL,
  `allotedto3` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `semester`, `isAlloted`, `allotedto`, `allotedto2`, `allotedto3`) VALUES
('CO445', 'Network Security', 'THEORY', 7, 1, 'T003', '', ''),
('CO451', 'Computer Network Design', 'THEORY', 7, 1, 'T003', '', ''),
('CO494', 'Embedded  Systems Lab', 'LAB', 7, 1, 'T009', 'T006', 't010'),
('CO493', 'Networking Lab', 'LAB', 7, 1, 'T009', 'T001', 'T002'),
('CO394', 'Mini Project', 'LAB', 5, 1, 'T005', 'T007', 'T003'),
('CO393', 'Software Lab ', 'LAB', 5, 0, '', '', ''),
('CO292', ' Data Structures Lab', 'LAB', 3, 0, '', '', ''),
('CO293', 'C Lab', 'LAB', 3, 1, 'T006', 'T009', 'T008'),
('AM261', 'Maths', 'THEORY', 3, 1, 'T007', '', ''),
('CO207', 'Data Structures & Algorithm', 'THEORY', 3, 1, 'T003', '', ''),
('CO309', 'Microprocessor', 'THEORY', 5, 1, 'T001', '', ''),
('CO308', 'ADE', 'THEORY', 5, 1, 'T008', '', ''),
('CO310', 'Operating Systems', 'THEORY', 5, 1, 'T002', '', ''),
('CO460', 'Computer Organisation', 'THEORY', 7, 1, 'T009', '', ''),
('CO203', 'Object Oriented Programming', 'THEORY', 3, 1, 'T006', '', ''),
('hbb', 'byu', 'THEORY', 3, 1, 'T007', '', ''),
('CO254', 'fehrj', 'THEORY', 5, 1, 'T002', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t001`
--

CREATE TABLE `t001` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t001`
--

INSERT INTO `t001` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t002`
--

CREATE TABLE `t002` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t002`
--

INSERT INTO `t002` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO254<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', '-<br>-', 'CO254<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', 'CO254<br>ML10', '-<br>-', 'CO310<br>ML10', '-<br>-', '-'),
('friday', '-<br>-', 'CO254<br>ML10', '-<br>-', 'CO310<br>ML10', '-<br>-', 'CO493'),
('saturday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t003`
--

CREATE TABLE `t003` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t003`
--

INSERT INTO `t003` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CO445<br>ZX22', 'CO451<br>ZX22', 'CO207<br>NL32', '-<br>-', '-<br>-', 'CO394'),
('tuesday', 'CO451<br>ZX22', '-<br>-', 'CO207<br>NL32', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'CO207<br>NL32', '-<br>-', '-<br>-', 'CO394'),
('thursday', 'CO207<br>NL32', 'CO445<br>ZX22', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', 'CO445<br>ZX22', 'CO451<br>ZX22', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', 'CO445<br>ZX22', 'CO451<br>ZX22', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t005`
--

CREATE TABLE `t005` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t005`
--

INSERT INTO `t005` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t006`
--

CREATE TABLE `t006` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t006`
--

INSERT INTO `t006` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', 'CO293');

-- --------------------------------------------------------

--
-- Table structure for table `t007`
--

CREATE TABLE `t007` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t007`
--

INSERT INTO `t007` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'AM261<br>NL32', '-<br>-', '-<br>-', 'hbb<br>NL32', '-<br>-', 'CO394'),
('tuesday', 'AM261<br>NL32', '-<br>-', '-<br>-', 'hbb<br>NL32', '-<br>-', '-'),
('wednesday', 'AM261<br>NL32', '-<br>-', '-<br>-', 'hbb<br>NL32', '-<br>-', 'CO394'),
('thursday', '-<br>-', 'hbb<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', 'AM261<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t008`
--

CREATE TABLE `t008` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t008`
--

INSERT INTO `t008` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', 'CO293'),
('thursday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-'),
('saturday', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293');

-- --------------------------------------------------------

--
-- Table structure for table `t009`
--

CREATE TABLE `t009` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t009`
--

INSERT INTO `t009` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', 'CO460<br>ZX22', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', 'CO460<br>ZX22', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('friday', '-<br>-', '-<br>-', 'CO460<br>ZX22', '-<br>-', '-<br>-', 'CO493'),
('saturday', '-<br>-', '-<br>-', 'CO460<br>ZX22', '-<br>-', '-<br>-', 'CO293');

-- --------------------------------------------------------

--
-- Table structure for table `t010`
--

CREATE TABLE `t010` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t010`
--

INSERT INTO `t010` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `T011`
--

CREATE TABLE `T011` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `T011`
--

INSERT INTO `T011` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `faculty_number` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `t_pass` varchar(20) NOT NULL DEFAULT 'ad001'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`faculty_number`, `name`, `alias`, `designation`, `t_pass`) VALUES
('T009', 'Mr. Mark', 'MRW', 'Associate Professor', 'ad001'),
('T008', 'Ms Annabella', 'ANA', 'Associate Professor', 'ad001'),
('T007', 'Mr. Ram', 'RM', 'Assistant Professor', 'ad001'),
('T006', 'Dr. Steven', 'STV', 'Associate Professor', 'ad001'),
('T005', 'Dr. Smitha', 'SMI', 'Associate Professor', 'ad001'),
('T002', 'Prof. Nesar', 'NS', 'Professor', 'ad001'),
('T003', 'Prof. Sasha', 'SHA', 'Professor', 'HELlo123!!'),
('T001', 'Prof. Mohammad', 'MHD', 'Professor', 'ad001'),
('t010', 'Mrs.  Reshma', 'RSH', 'Professor', 'ad001'),
('T011', 'abcd', 'zvd', 'Associate Professor', 'ad001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `grievance`
--
ALTER TABLE `grievance`
  ADD PRIMARY KEY (`gr_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`L_id`);

--
-- Indexes for table `semester3`
--
ALTER TABLE `semester3`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester5`
--
ALTER TABLE `semester5`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester7`
--
ALTER TABLE `semester7`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `t001`
--
ALTER TABLE `t001`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t002`
--
ALTER TABLE `t002`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t003`
--
ALTER TABLE `t003`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t005`
--
ALTER TABLE `t005`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t006`
--
ALTER TABLE `t006`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t007`
--
ALTER TABLE `t007`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t008`
--
ALTER TABLE `t008`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t009`
--
ALTER TABLE `t009`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t010`
--
ALTER TABLE `t010`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `T011`
--
ALTER TABLE `T011`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`faculty_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grievance`
--
ALTER TABLE `grievance`
  MODIFY `gr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
