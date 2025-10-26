-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2025 at 03:28 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malawi electoral comition`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
CREATE TABLE IF NOT EXISTS `candidate` (
  `candidateID` int NOT NULL AUTO_INCREMENT,
  `citizenID` int NOT NULL,
  `partyID` int NOT NULL,
  `typeID` int NOT NULL,
  `constID` int DEFAULT NULL,
  `wardID` int DEFAULT NULL,
  PRIMARY KEY (`candidateID`),
  KEY `citizenID` (`citizenID`),
  KEY `partyID` (`partyID`),
  KEY `typeID` (`typeID`),
  KEY `constID` (`constID`),
  KEY `wardID` (`wardID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidateID`, `citizenID`, `partyID`, `typeID`, `constID`, `wardID`) VALUES
(15, 114, 6, 2, 2, 1),
(14, 113, 5, 2, 2, 2),
(13, 112, 4, 2, 2, 1),
(12, 111, 3, 2, 1, 2),
(11, 110, 2, 2, 1, 1),
(10, 109, 1, 2, 1, 2),
(9, 108, 9, 1, 0, 0),
(8, 107, 8, 1, 0, 0),
(7, 106, 7, 1, 0, 0),
(6, 105, 6, 1, 0, 0),
(5, 104, 5, 1, 0, 0),
(4, 103, 4, 1, 0, 0),
(3, 102, 3, 1, 0, 0),
(2, 101, 2, 1, 0, 0),
(1, 100, 1, 1, 0, 0),
(16, 115, 1, 3, 1, 1),
(17, 116, 2, 3, 1, 1),
(18, 117, 3, 3, 1, 1),
(19, 118, 4, 3, 2, 2),
(20, 119, 5, 3, 2, 2),
(21, 120, 6, 3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cast_vote`
--

DROP TABLE IF EXISTS `cast_vote`;
CREATE TABLE IF NOT EXISTS `cast_vote` (
  `voteID` int NOT NULL AUTO_INCREMENT,
  `voterID` int DEFAULT NULL,
  `member_ofparlID` int DEFAULT NULL,
  `localgovtID` int DEFAULT NULL,
  `presidentID` int DEFAULT NULL,
  `wardID` int DEFAULT NULL,
  PRIMARY KEY (`voteID`),
  KEY `voterID` (`voterID`),
  KEY `member_ofparlID` (`member_ofparlID`),
  KEY `localgovtID` (`localgovtID`),
  KEY `presidentID` (`presidentID`),
  KEY `wardID` (`wardID`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cast_vote`
--

INSERT INTO `cast_vote` (`voteID`, `voterID`, `member_ofparlID`, `localgovtID`, `presidentID`, `wardID`) VALUES
(1, 1061, 4, 4, 1, 2),
(2, 1090, 4, 5, 2, 1),
(3, 1087, 3, 2, 2, 2),
(4, 1027, 4, 5, 6, 2),
(5, 1070, 4, 2, 4, 1),
(6, 1084, 4, 3, 4, 2),
(7, 1089, 4, 5, 7, 2),
(8, 1046, 4, 2, 2, 1),
(9, 1032, 3, 3, 3, 2),
(10, 1064, 1, 2, 3, 1),
(11, 1035, 1, 4, 1, 1),
(12, 1017, 2, 1, 2, 1),
(13, 1033, 4, 1, 1, 2),
(14, 1040, 2, 4, 1, 2),
(15, 1025, 3, 4, 7, 1),
(16, 1067, 3, 5, 5, 2),
(17, 1026, 4, 3, 4, 1),
(18, 1077, 2, 5, 5, 1),
(19, 1092, 1, 3, 5, 2),
(20, 1037, 2, 2, 3, 2),
(21, 1038, 2, 3, 1, 2),
(22, 1051, 5, 3, 6, 2),
(23, 1081, 2, 1, 6, 1),
(24, 1053, 4, 1, 5, 1),
(25, 1058, 4, 5, 5, 1),
(26, 1065, 5, 1, 7, 2),
(27, 1060, 3, 2, 5, 1),
(28, 1015, 2, 2, 5, 1),
(29, 1068, 5, 3, 4, 1),
(30, 1050, 4, 2, 2, 2),
(31, 1059, 3, 1, 1, 2),
(32, 1043, 4, 4, 4, 2),
(33, 1054, 3, 3, 5, 2),
(34, 1086, 1, 5, 6, 1),
(35, 1006, 1, 3, 2, 2),
(36, 1063, 5, 1, 6, 2),
(37, 1073, 2, 4, 6, 1),
(38, 1056, 4, 1, 1, 2),
(39, 1085, 5, 2, 4, 2),
(40, 1016, 4, 4, 2, 1),
(41, 1009, 3, 4, 5, 2),
(42, 1014, 5, 2, 2, 1),
(43, 1012, 3, 2, 2, 2),
(44, 1005, 3, 4, 2, 2),
(45, 1031, 3, 2, 3, 1),
(46, 1024, 1, 5, 2, 1),
(47, 1036, 5, 1, 5, 1),
(48, 1028, 2, 3, 7, 1),
(49, 1078, 1, 4, 2, 2),
(50, 1010, 2, 5, 4, 1),
(51, 1041, 1, 1, 1, 2),
(52, 1082, 1, 5, 2, 2),
(53, 1069, 3, 4, 3, 2),
(54, 1039, 4, 1, 7, 1),
(55, 1030, 3, 2, 5, 2),
(56, 1091, 1, 3, 7, 1),
(57, 1076, 2, 3, 1, 1),
(58, 1080, 4, 1, 1, 1),
(59, 1034, 3, 5, 1, 1),
(60, 1023, 2, 5, 7, 2),
(61, 1021, 1, 5, 1, 1),
(62, 1018, 3, 5, 3, 1),
(63, 1055, 5, 4, 1, 1),
(64, 1074, 5, 2, 3, 2),
(65, 1066, 5, 3, 6, 1),
(66, 1044, 4, 2, 1, 2),
(67, 1079, 1, 5, 5, 1),
(68, 1072, 5, 2, 6, 1),
(69, 1004, 4, 2, 6, 1),
(70, 1049, 3, 1, 6, 1),
(71, 1042, 5, 2, 7, 1),
(72, 1062, 2, 5, 3, 2),
(73, 1011, 1, 3, 1, 2),
(74, 1007, 1, 3, 4, 2),
(75, 1048, 1, 4, 4, 1),
(76, 1052, 2, 5, 2, 1),
(77, 1088, 4, 1, 4, 2),
(78, 1019, 2, 4, 6, 2),
(79, 1093, 3, 5, 4, 2),
(80, 1013, 3, 5, 3, 2),
(81, 1057, 5, 3, 4, 2),
(82, 1029, 4, 3, 7, 2),
(83, 1047, 4, 5, 1, 2),
(84, 1020, 3, 5, 2, 2),
(85, 1045, 4, 4, 2, 1),
(86, 1075, 2, 2, 1, 1),
(87, 1101, 5, 4, 5, 2),
(88, 1105, 5, 4, 2, 2),
(89, 1104, 1, 2, 4, 2),
(90, 1109, 4, 5, 3, 2),
(91, 1107, 2, 1, 4, 1),
(92, 1096, 4, 1, 4, 2),
(93, 1108, 4, 3, 5, 1),
(94, 1094, 3, 3, 7, 2),
(95, 1110, 5, 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
CREATE TABLE IF NOT EXISTS `citizen` (
  `citizenID` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `wardID` int NOT NULL,
  PRIMARY KEY (`citizenID`),
  KEY `wardID` (`wardID`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`citizenID`, `fname`, `lname`, `gender`, `wardID`) VALUES
(1, 'INNOCENT', 'CHAIMA', 'm', 1),
(2, 'CLIFFORD', 'CHIBALE', 'm', 1),
(3, 'BIZIWICK', 'CHIKUMBUTSO', 'm', 1),
(4, 'IDAH', 'CHILONGO', 'f', 1),
(5, 'MABLE', 'CHINGOTA', 'f', 1),
(6, 'ANNA', 'CHIVUNDULA', 'f', 1),
(7, 'ANNIE', 'CHIWONI', 'f', 1),
(8, 'CHAULA', 'JULIUS', 'm', 1),
(9, 'ANGELIQUE', 'KALANJE', 'f', 1),
(10, 'CHISOMO', 'KANTSITSI', 'f', 1),
(11, 'ENOCK', 'KAPHUKUSI', 'm', 1),
(12, 'SANDRA', 'KASIRA', 'f', 1),
(13, 'ALINAFE', 'KATANTHA', 'f', 1),
(14, 'ANGELLA', 'KHOMBA', 'f', 1),
(15, 'LUMBANI', 'LUHANGA', 'm', 1),
(16, 'YANKHO', 'MAJAMANDA', 'f', 1),
(17, 'JONATHAN', 'MAKHULUDZO', 'm', 1),
(18, 'PAULINE', 'MALONDA', 'f', 1),
(19, 'DINGILE', 'MANDERE', 'f', 1),
(20, 'ACKIM', 'MHONE', 'm', 1),
(21, 'BLIX', 'MPUWE', 'm', 1),
(22, 'SNOWDEN', 'MSUMBA', 'm', 1),
(23, 'DOREEN', 'MTAMBO', 'f', 1),
(24, 'HUGGINS', 'MUKWINDIDZA', 'm', 1),
(25, 'MIRIAM', 'MULERA', 'f', 1),
(26, 'LAULYN', 'MWASE', 'f', 1),
(27, 'ONGANI', 'MWASE', 'm', 1),
(28, 'JOYCE', 'MWASE', 'f', 1),
(29, 'SAMSON', 'PHANGULA', 'm', 1),
(30, 'HELLEN', 'PHIRI', 'f', 1),
(31, 'PATIENCE', 'PHIRI', 'f', 1),
(32, 'CHANJU', 'PHIRI', 'f', 1),
(33, 'ANNIE', 'RICHARD', 'f', 1),
(34, 'JOHN', 'SAMBANI', 'm', 1),
(35, 'AYANDA', 'SIMBEYE', 'f', 1),
(36, 'CAROLINE', 'SINJA', 'f', 1),
(37, 'LOYCE', 'SITOLO', 'f', 1),
(38, 'TREVOR', 'SOKO', 'm', 1),
(39, 'GEOFFREY', 'THINDWA', 'm', 1),
(40, 'BRIAN', 'YONA', 'm', 1),
(41, 'HOPE', 'ANDREW', 'm', 1),
(42, 'CHARLES', 'BANDA', 'm', 1),
(43, 'HANNAH', 'BOKO', 'f', 1),
(44, 'EUNICE', 'CHIPETA', 'f', 1),
(45, 'GLORY', 'CHIPUNGU', 'f', 1),
(46, 'WILSON', 'CHIRWA', 'm', 1),
(47, 'SHANIE', 'CHIRWA', 'f', 1),
(48, 'MWIZA', 'GONDWE', 'f', 1),
(49, 'PATRICIA', 'HARRY', 'f', 1),
(50, 'MIRRIAM', 'KALANDA', 'f', 1),
(51, 'TIYANJANE', 'KAMDZEKA', 'f', 2),
(52, 'CEDRIC', 'KAMENI', 'm', 2),
(53, 'TENDAI', 'KAMWAMBA', 'm', 2),
(54, 'LISSA', 'KAPONDA', 'f', 2),
(55, 'LAWRENCE', 'KOLOKO', 'm', 2),
(56, 'WONGANI', 'KONDOWE', 'm', 2),
(57, 'LASTON', 'KUMWENDA', 'm', 2),
(58, 'ELLEN', 'LIRADALA', 'f', 2),
(59, 'CHISOMO', 'M\'BAWA', 'f', 2),
(60, 'MERCY', 'MAKIYI', 'f', 2),
(61, 'JOLEEN', 'MAKONDETSA', 'f', 2),
(62, 'PRINCE', 'MANDALA', 'm', 2),
(63, 'THOMAS', 'MANONG\'A', 'm', 2),
(64, 'TUPOCHELE', 'MDEZA', 'm', 2),
(65, 'VERA', 'MHANGO', 'f', 2),
(66, 'ENOCK', 'MHURA', 'm', 2),
(67, 'CHECK-US', 'MKANDAWIRE', 'm', 2),
(68, 'MSAYIWALE', 'MOYA', 'm', 2),
(69, 'LAURENCIA', 'MSEU', 'f', 2),
(70, 'GIFT', 'MTHUZI', 'm', 2),
(71, 'LUSAKO', 'MWAKALENGA', 'm', 2),
(72, 'TIMOTHY', 'MWAMONDWE', 'm', 2),
(73, 'WONGANI', 'PHIRI', 'm', 2),
(74, 'UWICYEZA', 'SAIDAT', 'f', 2),
(75, 'PEREZ', 'SAKA', 'm', 2),
(76, 'TILIKA', 'TATYANA', 'f', 2),
(77, 'MIKE', 'TILINGAMAWA', 'm', 2),
(78, 'DALITSO', 'YAKOBE', 'm', 2),
(79, 'TIONGE', 'BANDA', 'f', 2),
(80, 'MAYAMIKO', 'CHIGWEDE', 'm', 2),
(81, 'BERTHA', 'CHIKUMBU', 'f', 2),
(82, 'GOMEZGANI', 'CHIRWA', 'm', 2),
(83, 'EDDIE', 'GOCHO', 'm', 2),
(84, 'BLESSINGS', 'MKANDAWIRE', 'm', 2),
(85, 'MPHATSO', 'MLEME', 'm', 2),
(86, 'SAMUEL', 'MPANDO', 'm', 2),
(87, 'WANANGWA', 'MULENGA', 'm', 2),
(88, 'KATIE', 'MUNTHALI', 'f', 2),
(89, 'LUPAKISHO', 'MUSUKWA', 'm', 2),
(90, 'THULANI', 'MZEMBE', 'm', 2),
(91, 'NOEL', 'SAFARAWO', 'm', 2),
(92, 'SAM', 'THEU', 'm', 2),
(93, 'ISHAQ', 'ASSIMA', 'm', 2),
(94, 'CHAWANANGWA', 'CHIKUNI', 'm', 2),
(95, 'AUGUSTINE', 'KACHINGWE', 'm', 2),
(96, 'VICTOR', 'MANDAWALA', 'm', 2),
(97, 'RODNEY', 'MASEKO', 'm', 2),
(98, 'GRACIOUS', 'NGUWO', 'm', 2),
(99, 'THANDIWE', 'PHIRI', 'f', 2),
(100, 'MICHEAL', 'SAMBAKUSI', 'm', 2),
(101, 'CHISOMO', 'AFFONSO', 'm', 2),
(102, 'ALEX', 'CHAKWANIRA', 'm', 2),
(103, 'MELVIN', 'CHIKANAMOYO', 'm', 2),
(104, 'JUWADU', 'JUMA', 'm', 2),
(105, 'WATIPA', 'KALULU', 'f', 2),
(106, 'ANGEL', 'KAM\'BWEMBA', 'f', 2),
(107, 'MCNAIR', 'KAMANGA', 'm', 2),
(108, 'ALINAFE', 'KUMILAMBE', 'f', 2),
(109, 'SHARON', 'KWAITANA', 'f', 2),
(110, 'JENIFER', 'MAGWAZA', 'f', 2),
(111, 'HAJRA', 'MASUNGU', 'f', 2),
(112, 'PYPHIAS', 'MHONE', 'm', 2),
(113, 'FRANK', 'MWAKASUNGULA', 'm', 2),
(114, 'VYSON', 'NSINI', 'm', 2),
(115, 'INNOCENT', 'PHIRI', 'm', 1),
(116, 'SINOYA', 'PHIRI', 'm', 1),
(117, 'RICHARD', 'PHIRI', 'm', 1),
(118, 'SAYNAT', 'SINJONJO', 'f', 2),
(119, 'RABECCA', 'TEMBO', 'f', 2),
(120, 'KENNEDY', 'MKANDAWIRE', 'm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
CREATE TABLE IF NOT EXISTS `complaints` (
  `complaintID` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `datecomplained` date DEFAULT NULL,
  `poll_centerID` int DEFAULT NULL,
  PRIMARY KEY (`complaintID`),
  KEY `fk_complaints` (`poll_centerID`)
) ENGINE=MyISAM AUTO_INCREMENT=5011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaintID`, `description`, `datecomplained`, `poll_centerID`) VALUES
(5001, 'Insufficient parking available for voters.', '2024-03-04', 102),
(5002, 'Voting machine malfunctioned for 30 minutes.', '2024-02-15', 101),
(5003, 'Lack of clear signage to the registration desk.', '2024-03-08', 114),
(5004, 'Long queues due to too few check-in staff.', '2024-03-04', 102),
(5005, 'Restroom facilities were locked and unavailable.', '2024-01-20', 103),
(5006, 'Unauthorized campaigning near the entrance.', '2024-02-16', 101),
(5007, 'No provision for voters with disabilities (ramp).', '2024-01-25', 114),
(5008, 'Ballot paper stock ran low late in the day.', '2024-03-04', 102),
(5009, 'Center opened 15 minutes late.', '2024-01-18', 103),
(5010, 'Misinformation being spread by volunteers.', '2024-02-28', 101);

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

DROP TABLE IF EXISTS `constituency`;
CREATE TABLE IF NOT EXISTS `constituency` (
  `constID` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `districtID` int DEFAULT NULL,
  PRIMARY KEY (`constID`),
  KEY `districtID` (`districtID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `constituency`
--

INSERT INTO `constituency` (`constID`, `name`, `districtID`) VALUES
(3, 'Blantyre City West', 20),
(1, 'Blantyre North', 20),
(2, 'Blantyre City East', 20),
(4, 'Blantyre North East', 20),
(5, 'Blantyre City Central', 20),
(6, 'Blantyre Rural East', 20),
(7, 'Blantyre City North', 20),
(8, 'Thyolo South', 20),
(9, 'Blantyre West', 20),
(10, 'Blantyre Malabada', 20);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `districtID` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `regionID` int DEFAULT NULL,
  PRIMARY KEY (`districtID`),
  KEY `regionID` (`regionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`districtID`, `name`, `regionID`) VALUES
(2, 'Karonga', 1),
(1, 'Chitipa', 1),
(3, 'Rumphi', 1),
(4, 'Mzimba', 1),
(5, 'Nkhata Bay', 1),
(6, 'Likoma', 1),
(7, 'Kasungu', 2),
(8, 'Nkhotakota', 2),
(9, 'Ntchisi', 2),
(10, 'Dowa', 2),
(11, 'Salima', 2),
(12, 'Lilongwe', 2),
(13, 'Mchinji', 2),
(14, 'Dedza', 2),
(15, 'Ntcheu', 2),
(16, 'Mangochi', 3),
(17, 'Machinga', 3),
(18, 'Zomba', 3),
(19, 'Chiradzulu', 3),
(20, 'Blantyre', 3),
(21, 'Mwanza', 3),
(22, 'Neno', 3),
(23, 'Thyolo', 3),
(24, 'Mulanje', 3),
(25, 'Phalombe', 3),
(26, 'Chikwawa', 3),
(27, 'Nsanje', 3),
(28, 'Balaka', 3);

-- --------------------------------------------------------

--
-- Table structure for table `election_type`
--

DROP TABLE IF EXISTS `election_type`;
CREATE TABLE IF NOT EXISTS `election_type` (
  `typeID` int NOT NULL AUTO_INCREMENT,
  `type` enum('Presidential','Parliamentary','Local') NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `election_type`
--

INSERT INTO `election_type` (`typeID`, `type`) VALUES
(1, 'Presidential'),
(2, 'Parliamentary'),
(3, 'Local');

-- --------------------------------------------------------

--
-- Stand-in structure for view `gender_for_gender`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `gender_for_gender`;
CREATE TABLE IF NOT EXISTS `gender_for_gender` (
`count_of_votes` bigint
,`metric` varchar(40)
,`percentage` decimal(26,2)
,`total_voters` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `localgovt`
--

DROP TABLE IF EXISTS `localgovt`;
CREATE TABLE IF NOT EXISTS `localgovt` (
  `localgovtID` int NOT NULL AUTO_INCREMENT,
  `regNum` varchar(30) NOT NULL,
  PRIMARY KEY (`localgovtID`),
  KEY `regNum` (`regNum`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `localgovt`
--

INSERT INTO `localgovt` (`localgovtID`, `regNum`) VALUES
(1, 'MSE/21/SS/045'),
(2, 'MSE/21/SS/047'),
(3, 'MSE/21/SS/046'),
(4, 'MSE/20/SS/035'),
(5, 'BIT/24/ME/012');

-- --------------------------------------------------------

--
-- Stand-in structure for view `localgovt_winner`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `localgovt_winner`;
CREATE TABLE IF NOT EXISTS `localgovt_winner` (
`candidate_name` varchar(101)
,`constituency` varchar(50)
,`vote_count` bigint
,`ward` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `member_ofparl`
--

DROP TABLE IF EXISTS `member_ofparl`;
CREATE TABLE IF NOT EXISTS `member_ofparl` (
  `member_ofParlID` int NOT NULL AUTO_INCREMENT,
  `regNum` varchar(30) NOT NULL,
  PRIMARY KEY (`member_ofParlID`),
  KEY `regNum` (`regNum`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member_ofparl`
--

INSERT INTO `member_ofparl` (`member_ofParlID`, `regNum`) VALUES
(1, 'MSE/21/SS/022'),
(2, 'MSE/21/SS/023'),
(3, 'MSE/21/SS/026'),
(4, 'MSE/21/SS/029'),
(5, 'MSE/21/SS/040');

-- --------------------------------------------------------

--
-- Stand-in structure for view `nullvotes_ward1`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `nullvotes_ward1`;
CREATE TABLE IF NOT EXISTS `nullvotes_ward1` (
`number_null_void` bigint
,`percentage` decimal(27,2)
,`ward` varchar(13)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `nullvotes_ward2`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `nullvotes_ward2`;
CREATE TABLE IF NOT EXISTS `nullvotes_ward2` (
`number_null_void` bigint
,`percentage` decimal(27,2)
,`ward` varchar(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `parlimental_winner`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `parlimental_winner`;
CREATE TABLE IF NOT EXISTS `parlimental_winner` (
`candidate_name` varchar(101)
,`constituency` varchar(50)
,`vote_count` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE IF NOT EXISTS `party` (
  `partyID` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `acronym` varchar(10) NOT NULL,
  PRIMARY KEY (`partyID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`partyID`, `name`, `acronym`) VALUES
(1, 'Malawi Congress Party', 'MCP'),
(2, 'Democratic Progressive Party', 'DPP'),
(3, 'United Transformation Movement', 'UTM'),
(4, 'People’s Party', 'PP'),
(5, 'People’s Progressive Movement', 'PPM'),
(6, 'United Democratic Front', 'UDF'),
(7, 'Alliance for Democracy', 'AFORD'),
(8, 'Malawi Forum for Unity and Developmen', 'MAFUNDE'),
(9, 'Anyamata Atsikana Azimai Party', 'AAA'),
(10, 'National Unity Party', 'NUP');

-- --------------------------------------------------------

--
-- Table structure for table `polling_center`
--

DROP TABLE IF EXISTS `polling_center`;
CREATE TABLE IF NOT EXISTS `polling_center` (
  `poll_centerID` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `wardID` int DEFAULT NULL,
  PRIMARY KEY (`poll_centerID`),
  KEY `wardID` (`wardID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `polling_center`
--

INSERT INTO `polling_center` (`poll_centerID`, `name`, `wardID`) VALUES
(101, 'Northside School Hall', 1),
(102, 'Community Center A', 1),
(103, 'Oak Street Library', 2),
(104, 'West End Church', 2),
(105, 'Central Fire Station', 3),
(106, 'Maple Ave Pavilion', 3),
(107, 'River View Clinic', 4),
(108, 'City Hall Annex', 4),
(109, 'Parkside Elementary', 5),
(110, 'Green Valley Mall Kiosk', 5),
(111, 'South Gate Warehouse', 6),
(112, 'University Campus Dorm', 7),
(113, 'Old Town Market', 8),
(114, 'Sunshine Senior Home', 9),
(115, 'Industrial Park Office', 10);

-- --------------------------------------------------------

--
-- Table structure for table `president`
--

DROP TABLE IF EXISTS `president`;
CREATE TABLE IF NOT EXISTS `president` (
  `presidentID` int NOT NULL AUTO_INCREMENT,
  `regNum` varchar(30) NOT NULL,
  PRIMARY KEY (`presidentID`),
  KEY `regNum` (`regNum`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `president`
--

INSERT INTO `president` (`presidentID`, `regNum`) VALUES
(1, 'BIT/24/ME/015'),
(2, 'MSE/21/SS/001'),
(3, 'MSE/21/SS/004'),
(4, 'MSE/23/ME/004'),
(5, 'MSE/21/SS/016'),
(6, 'MSE/21/SS/017'),
(7, 'MSE/19/SS/014');

-- --------------------------------------------------------

--
-- Stand-in structure for view `presidential_winner`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `presidential_winner`;
CREATE TABLE IF NOT EXISTS `presidential_winner` (
`presidential_candidate` varchar(101)
,`vote_count` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `regionID` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`regionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`regionID`, `name`) VALUES
(1, 'Northern Region'),
(2, 'Central Region'),
(3, 'Southern Region');

-- --------------------------------------------------------

--
-- Table structure for table `reg_candidate`
--

DROP TABLE IF EXISTS `reg_candidate`;
CREATE TABLE IF NOT EXISTS `reg_candidate` (
  `regNum` varchar(30) NOT NULL,
  `regdate` date NOT NULL,
  `citizenID` int DEFAULT NULL,
  `typeID` int DEFAULT NULL,
  `partyID` int NOT NULL,
  `constID` int DEFAULT NULL,
  `wardID` int DEFAULT NULL,
  PRIMARY KEY (`regNum`),
  KEY `citizenID` (`citizenID`),
  KEY `fk_type_id` (`typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reg_candidate`
--

INSERT INTO `reg_candidate` (`regNum`, `regdate`, `citizenID`, `typeID`, `partyID`, `constID`, `wardID`) VALUES
('BIT/24/ME/015', '2025-02-21', 100, 1, 1, 0, 0),
('MSE/21/SS/001', '2025-03-05', 101, 1, 2, 0, 0),
('MSE/21/SS/004', '2025-03-05', 103, 1, 4, 0, 0),
('MSE/23/ME/004', '2025-02-25', 104, 1, 5, 0, 0),
('MSE/21/SS/016', '2025-03-06', 105, 1, 6, 0, 0),
('MSE/21/SS/017', '2025-03-05', 106, 1, 7, 0, 0),
('MSE/19/SS/014', '2025-03-05', 107, 1, 8, 0, 0),
('MSE/21/SS/022', '2025-02-19', 109, 2, 1, 1, 0),
('MSE/21/SS/023', '2025-03-06', 110, 2, 2, 1, 0),
('MSE/21/SS/026', '2025-03-06', 111, 2, 3, 1, 0),
('MSE/21/SS/029', '2025-03-05', 112, 2, 4, 2, 0),
('MSE/21/SS/040', '2025-03-06', 114, 2, 6, 2, 0),
('MSE/21/SS/045', '2025-03-06', 115, 3, 1, 2, 1),
('MSE/21/SS/047', '2025-03-06', 116, 3, 2, 1, 1),
('MSE/21/SS/046', '2025-03-06', 117, 3, 3, 1, 1),
('MSE/20/SS/035', '2025-03-12', 119, 3, 5, 1, 2),
('BIT/24/ME/012', '2025-02-18', 120, 3, 6, 2, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `unreg_candidates`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `unreg_candidates`;
CREATE TABLE IF NOT EXISTS `unreg_candidates` (
`percentage_unregistered_candidates` decimal(27,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `unreg_people`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `unreg_people`;
CREATE TABLE IF NOT EXISTS `unreg_people` (
`gender` varchar(7)
,`percentage_unregistered` decimal(27,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
CREATE TABLE IF NOT EXISTS `voter` (
  `voterID` int NOT NULL AUTO_INCREMENT,
  `citizenID` int NOT NULL,
  `regID` varchar(20) NOT NULL,
  PRIMARY KEY (`voterID`),
  KEY `citizenID` (`citizenID`),
  KEY `FK_VoterRegID` (`regID`)
) ENGINE=MyISAM AUTO_INCREMENT=1111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`voterID`, `citizenID`, `regID`) VALUES
(1004, 2, 'BIS/23/SS/002'),
(1005, 3, 'BIS/23/SS/003'),
(1006, 5, 'BIS/23/SS/005'),
(1007, 6, 'BIS/22/SS/003'),
(1008, 7, 'BIS/23/SS/007'),
(1009, 8, 'BIS/23/SS/010'),
(1010, 9, 'BIS/22/SS/011'),
(1011, 10, 'BIS/22/SS/014'),
(1012, 11, 'BIS/23/SS/012'),
(1013, 12, 'BIS/23/SS/013'),
(1014, 13, 'BIS/22/SS/015'),
(1015, 14, 'BIS/23/SS/015'),
(1016, 15, 'BIS/23/SS/016'),
(1017, 16, 'BIS/23/SS/017'),
(1018, 17, 'BIS/23/SS/018'),
(1019, 18, 'BIS/22/SS/017'),
(1020, 19, 'BIS/23/SS/020'),
(1021, 20, 'BIS/22/SS/021'),
(1022, 21, 'BIS/23/SS/023'),
(1023, 22, 'BIS/23/SS/024'),
(1024, 23, 'BIS/22/ET/007'),
(1025, 24, 'BIS/23/SS/028'),
(1026, 25, 'BIS/22/SS/024'),
(1027, 26, 'BIS/23/SS/026'),
(1028, 27, 'BIS/23/SS/027'),
(1029, 28, 'BIS/23/SS/025'),
(1030, 29, 'BIS/23/SS/030'),
(1031, 30, 'BIS/22/SS/034'),
(1032, 31, 'BIS/23/SS/032'),
(1033, 32, 'BIS/23/SS/031'),
(1034, 33, 'BIS/23/SS/033'),
(1035, 34, 'BIS/23/SS/034'),
(1036, 36, 'BIS/23/SS/037'),
(1037, 37, 'BIS/23/SS/038'),
(1038, 38, 'BIS/22/SS/036'),
(1039, 39, 'BIS/23/SS/039'),
(1040, 40, 'BIS/23/SS/040'),
(1041, 41, 'BIT/23/SS/001'),
(1042, 42, 'BIT/23/SS/002'),
(1043, 43, 'BIT/22/SS/001'),
(1044, 44, 'BIT/23/SS/003'),
(1045, 45, 'BIT/21/SS/007'),
(1046, 46, 'BIT/23/SS/005'),
(1047, 47, 'BIT/23/SS/004'),
(1048, 49, 'BIEP/23/SS/011'),
(1049, 50, 'BIT/23/SS/010'),
(1050, 51, 'BIT/23/SS/011'),
(1051, 52, 'BIT/23/SS/012'),
(1052, 53, 'BIT/23/SS/013'),
(1053, 54, 'BIT/23/SS/014'),
(1054, 55, 'BIT/23/SS/015'),
(1055, 56, 'BIT/23/SS/016'),
(1056, 57, 'BIT/23/SS/017'),
(1057, 58, 'BIT/23/SS/018'),
(1058, 60, 'BIT/23/SS/020'),
(1059, 61, 'BIT/23/SS/021'),
(1060, 62, 'BIT/23/SS/022'),
(1061, 63, 'BIT/23/SS/023'),
(1062, 64, 'BIT/23/SS/025'),
(1063, 65, 'BIT/23/SS/026'),
(1064, 66, 'BIT/23/SS/044'),
(1065, 67, 'BIT/23/SS/027'),
(1066, 68, 'BIT/23/SS/028'),
(1067, 69, 'BIT/23/SS/030'),
(1068, 70, 'BIT/23/SS/032'),
(1069, 71, 'BIT/22/SS/023'),
(1070, 72, 'BIT/23/SS/033'),
(1071, 74, 'BIT/23/SS/037'),
(1072, 75, 'BIT/23/SS/038'),
(1073, 76, 'BIT/23/SS/040'),
(1074, 77, 'BIT/23/SS/041'),
(1075, 78, 'BIT/23/SS/042'),
(1076, 79, 'BIS/24/ME/144'),
(1077, 80, 'BIS/24/ME/145'),
(1078, 81, 'BIS/24/ME/146'),
(1079, 82, 'BIS/24/ME/147'),
(1080, 83, 'BIS/24/ME/148'),
(1081, 84, 'BIS/24/ME/150'),
(1082, 85, 'BIS/24/ME/151'),
(1083, 86, 'BIS/24/ME/152'),
(1084, 87, 'BIS/24/ME/153'),
(1085, 89, 'BIS/24/ME/155'),
(1086, 90, 'BIS/24/ME/156'),
(1087, 91, 'BIS/24/ME/159'),
(1088, 92, 'BIS/24/ME/160'),
(1089, 93, 'BIT/24/ME/006'),
(1090, 94, 'BIT/23/ME/050'),
(1091, 95, 'BIT/24/ME/007'),
(1092, 97, 'BIT/24/ME/011'),
(1093, 98, 'BIT/23/ME/069'),
(1094, 100, 'BIT/24/ME/015'),
(1095, 101, 'MSE/21/SS/001'),
(1096, 103, 'MSE/21/SS/004'),
(1097, 104, 'MSE/23/ME/004'),
(1098, 105, 'MSE/21/SS/016'),
(1099, 106, 'MSE/21/SS/017'),
(1100, 107, 'MSE/19/SS/014'),
(1101, 109, 'MSE/21/SS/022'),
(1102, 110, 'MSE/21/SS/023'),
(1103, 111, 'MSE/21/SS/026'),
(1104, 112, 'MSE/21/SS/029'),
(1105, 114, 'MSE/21/SS/040'),
(1106, 115, 'MSE/21/SS/045'),
(1107, 116, 'MSE/21/SS/047'),
(1108, 117, 'MSE/21/SS/046'),
(1109, 119, 'MSE/20/SS/035'),
(1110, 120, 'BIT/24/ME/012');

-- --------------------------------------------------------

--
-- Table structure for table `voter_reg`
--

DROP TABLE IF EXISTS `voter_reg`;
CREATE TABLE IF NOT EXISTS `voter_reg` (
  `regID` varchar(20) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `citizenID` int DEFAULT NULL,
  PRIMARY KEY (`regID`),
  KEY `citizenID` (`citizenID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voter_reg`
--

INSERT INTO `voter_reg` (`regID`, `reg_date`, `citizenID`) VALUES
('BIS/23/SS/002', '2025-03-26', 2),
('BIS/23/SS/003', '2025-03-07', 3),
('BIS/23/SS/005', '2025-03-05', 5),
('BIS/22/SS/003', '2025-03-05', 6),
('BIS/23/SS/007', '2025-02-25', 7),
('BIS/23/SS/010', '2025-02-20', 8),
('BIS/22/SS/011', '2025-03-09', 9),
('BIS/22/SS/014', '2025-03-04', 10),
('BIS/23/SS/012', '2025-03-06', 11),
('BIS/23/SS/013', '2025-03-12', 12),
('BIS/22/SS/015', '2025-03-12', 13),
('BIS/23/SS/015', '2025-03-06', 14),
('BIS/23/SS/016', '2025-03-05', 15),
('BIS/23/SS/017', '2025-03-12', 16),
('BIS/23/SS/018', '2025-03-07', 17),
('BIS/22/SS/017', '2025-03-14', 18),
('BIS/23/SS/020', '2025-03-04', 19),
('BIS/22/SS/021', '2025-03-10', 20),
('BIS/23/SS/023', '2025-03-12', 21),
('BIS/23/SS/024', '2025-03-11', 22),
('BIS/22/ET/007', '2025-03-14', 23),
('BIS/23/SS/028', '2025-02-25', 24),
('BIS/22/SS/024', '2025-03-18', 25),
('BIS/23/SS/026', '2025-03-06', 26),
('BIS/23/SS/027', '2025-03-12', 27),
('BIS/23/SS/025', '2025-03-12', 28),
('BIS/23/SS/030', '2025-03-12', 29),
('BIS/22/SS/034', '2025-03-06', 30),
('BIS/23/SS/032', '2025-02-18', 31),
('BIS/23/SS/031', '2025-03-21', 32),
('BIS/23/SS/033', '2025-03-12', 33),
('BIS/23/SS/034', '2025-03-05', 34),
('BIS/23/SS/037', '2025-04-11', 36),
('BIS/23/SS/038', '2025-03-10', 37),
('BIS/22/SS/036', '2025-03-10', 38),
('BIS/23/SS/039', '2025-03-29', 39),
('BIS/23/SS/040', '2025-02-21', 40),
('BIT/23/SS/001', '2025-03-14', 41),
('BIT/23/SS/002', '2025-03-05', 42),
('BIT/22/SS/001', '2025-03-31', 43),
('BIT/23/SS/003', '2025-02-26', 44),
('BIT/21/SS/007', '2025-03-14', 45),
('BIT/23/SS/005', '2025-03-06', 46),
('BIT/23/SS/004', '2025-03-12', 47),
('BIEP/23/SS/011', '2025-03-14', 49),
('BIT/23/SS/010', '2025-03-05', 50),
('BIT/23/SS/011', '2025-03-12', 51),
('BIT/23/SS/012', '2025-02-20', 52),
('BIT/23/SS/013', '2025-03-11', 53),
('BIT/23/SS/014', '2025-03-12', 54),
('BIT/23/SS/015', '2025-03-05', 55),
('BIT/23/SS/016', '2025-03-11', 56),
('BIT/23/SS/017', '2025-03-14', 57),
('BIT/23/SS/018', '2025-03-14', 58),
('BIT/23/SS/020', '2025-03-28', 60),
('BIT/23/SS/021', '2025-03-06', 61),
('BIT/23/SS/022', '2025-03-05', 62),
('BIT/23/SS/023', '2025-02-28', 63),
('BIT/23/SS/025', '2025-03-18', 64),
('BIT/23/SS/026', '2025-03-10', 65),
('BIT/23/SS/044', '2025-03-05', 66),
('BIT/23/SS/027', '2025-03-05', 67),
('BIT/23/SS/028', '2025-03-07', 68),
('BIT/23/SS/030', '2025-04-01', 69),
('BIT/23/SS/032', '2025-03-11', 70),
('BIT/22/SS/023', '2025-03-12', 71),
('BIT/23/SS/033', '2025-03-09', 72),
('BIT/23/SS/037', '2025-03-03', 74),
('BIT/23/SS/038', '2025-03-04', 75),
('BIT/23/SS/040', '2025-03-05', 76),
('BIT/23/SS/041', '2025-03-12', 77),
('BIT/23/SS/042', '2025-03-05', 78),
('BIS/24/ME/144', '2025-03-22', 79),
('BIS/24/ME/145', '2025-02-26', 80),
('BIS/24/ME/146', '2025-02-27', 81),
('BIS/24/ME/147', '2025-02-19', 82),
('BIS/24/ME/148', '2025-02-22', 83),
('BIS/24/ME/150', '2025-02-25', 84),
('BIS/24/ME/151', '2025-05-07', 85),
('BIS/24/ME/152', '2025-02-28', 86),
('BIS/24/ME/153', '2025-02-21', 87),
('BIS/24/ME/155', '2025-02-18', 89),
('BIS/24/ME/156', '2025-02-19', 90),
('BIS/24/ME/159', '2025-03-21', 91),
('BIS/24/ME/160', '2025-02-28', 92),
('BIT/24/ME/006', '2025-02-23', 93),
('BIT/23/ME/050', '2025-02-21', 94),
('BIT/24/ME/007', '2025-02-18', 95),
('BIT/24/ME/011', '2025-02-18', 97),
('BIT/23/ME/069', '2025-05-07', 98),
('BIT/24/ME/015', '2025-03-31', 100),
('MSE/21/SS/001', '2025-02-05', 101),
('MSE/21/SS/004', '2025-03-04', 103),
('MSE/23/ME/004', '2025-04-01', 104),
('MSE/21/SS/016', '2025-03-13', 105),
('MSE/21/SS/017', '2025-04-10', 106),
('MSE/19/SS/014', '2025-03-29', 107),
('MSE/21/SS/022', '2025-04-01', 109),
('MSE/21/SS/023', '2025-04-09', 110),
('MSE/21/SS/026', '2025-04-26', 111),
('MSE/21/SS/029', '2025-03-22', 112),
('MSE/21/SS/040', '2025-03-06', 114),
('MSE/21/SS/045', '2025-04-03', 115),
('MSE/21/SS/047', '2025-02-28', 116),
('MSE/21/SS/046', '2025-04-28', 117),
('MSE/20/SS/035', '2025-02-27', 119),
('BIT/24/ME/012', '2025-04-12', 120);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
CREATE TABLE IF NOT EXISTS `ward` (
  `wardID` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `constID` int DEFAULT NULL,
  PRIMARY KEY (`wardID`),
  KEY `constID` (`constID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`wardID`, `name`, `constID`) VALUES
(1, 'Ndirande ward', 1),
(2, 'Mbayani ward', 1),
(3, 'Mzedi ward', 1),
(4, 'Limbe ward', 1),
(5, 'South Lunzu ward', 1),
(6, 'Lirangwe ward', 2),
(7, 'Chigumula ward', 2),
(8, 'Mpemba ward', 2),
(9, 'Lundu ward', 2),
(10, 'Kameza ward', 2);

-- --------------------------------------------------------

--
-- Structure for view `gender_for_gender`
--
DROP TABLE IF EXISTS `gender_for_gender`;

DROP VIEW IF EXISTS `gender_for_gender`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gender_for_gender`  AS WITH     `voter_gender_votes` as (select `v`.`voterID` AS `voterID`,`c_voter`.`gender` AS `voter_gender`,(case when (`c_president`.`gender` = 'f') then 1 else 0 end) AS `voted_female_president`,(case when (`c_parliament`.`gender` = 'f') then 1 else 0 end) AS `voted_female_parliament`,(case when (`c_localgovt`.`gender` = 'f') then 1 else 0 end) AS `voted_female_localgovt` from (((((((((((`voter` `v` join `citizen` `c_voter` on((`v`.`citizenID` = `c_voter`.`citizenID`))) left join `cast_vote` `cv` on((`v`.`voterID` = `cv`.`voterID`))) left join `president` `p` on((`cv`.`presidentID` = `p`.`presidentID`))) left join `reg_candidate` `rc_president` on((`p`.`regNum` = `rc_president`.`regNum`))) left join `citizen` `c_president` on((`rc_president`.`citizenID` = `c_president`.`citizenID`))) left join `member_ofparl` `mp` on((`cv`.`member_ofparlID` = `mp`.`member_ofParlID`))) left join `reg_candidate` `rc_parliament` on((`mp`.`regNum` = `rc_parliament`.`regNum`))) left join `citizen` `c_parliament` on((`rc_parliament`.`citizenID` = `c_parliament`.`citizenID`))) left join `localgovt` `lg` on((`cv`.`localgovtID` = `lg`.`localgovtID`))) left join `reg_candidate` `rc_localgovt` on((`lg`.`regNum` = `rc_localgovt`.`regNum`))) left join `citizen` `c_localgovt` on((`rc_localgovt`.`citizenID` = `c_localgovt`.`citizenID`))) where (`cv`.`voteID` is not null)), `gender_voting_stats` as (select `voter_gender_votes`.`voter_gender` AS `voter_gender`,count(0) AS `total_voters`,count((case when ((`voter_gender_votes`.`voted_female_president` = 1) or (`voter_gender_votes`.`voted_female_parliament` = 1) or (`voter_gender_votes`.`voted_female_localgovt` = 1)) then 1 end)) AS `voted_female_candidate`,count((case when ((`voter_gender_votes`.`voted_female_president` = 0) or (`voter_gender_votes`.`voted_female_parliament` = 0) or (`voter_gender_votes`.`voted_female_localgovt` = 0)) then 1 end)) AS `voted_male_candidate` from `voter_gender_votes` group by `voter_gender_votes`.`voter_gender`) select 'Females who voted for a female candidate' AS `metric`,`t1`.`total_voters` AS `total_voters`,`t1`.`voted_female_candidate` AS `count_of_votes`,round(((`t1`.`voted_female_candidate` * 100.0) / `t1`.`total_voters`),2) AS `percentage` from `gender_voting_stats` `t1` where (`t1`.`voter_gender` = 'f') union all select 'Males who voted for a male candidate' AS `metric`,`t2`.`total_voters` AS `total_voters`,`t2`.`voted_male_candidate` AS `count_of_votes`,round(((`t2`.`voted_male_candidate` * 100.0) / `t2`.`total_voters`),2) AS `percentage` from `gender_voting_stats` `t2` where (`t2`.`voter_gender` = 'm')  ;

-- --------------------------------------------------------

--
-- Structure for view `localgovt_winner`
--
DROP TABLE IF EXISTS `localgovt_winner`;

DROP VIEW IF EXISTS `localgovt_winner`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `localgovt_winner`  AS WITH     `candidate_votes` as (select `rc`.`wardID` AS `wardID`,`const`.`name` AS `constituency`,`w`.`name` AS `ward`,concat(`c`.`fname`,' ',`c`.`lname`) AS `candidate_name`,`rc`.`partyID` AS `partyID`,count(`cv`.`localgovtID`) AS `vote_count` from (((((`reg_candidate` `rc` join `citizen` `c` on((`rc`.`citizenID` = `c`.`citizenID`))) join `ward` `w` on((`rc`.`wardID` = `w`.`wardID`))) join `constituency` `const` on((`rc`.`constID` = `const`.`constID`))) left join `localgovt` `l` on((`rc`.`regNum` = `l`.`regNum`))) left join `cast_vote` `cv` on((`cv`.`localgovtID` = `l`.`localgovtID`))) where (`rc`.`typeID` = 3) group by `rc`.`wardID`,`rc`.`regNum`,`c`.`fname`,`c`.`lname`,`w`.`name`,`const`.`name`,`rc`.`partyID`), `ranked_candidates` as (select `candidate_votes`.`constituency` AS `constituency`,`candidate_votes`.`ward` AS `ward`,`candidate_votes`.`candidate_name` AS `candidate_name`,`candidate_votes`.`vote_count` AS `vote_count`,row_number() OVER (PARTITION BY `candidate_votes`.`wardID` ORDER BY `candidate_votes`.`vote_count` desc,`candidate_votes`.`partyID` desc )  AS `rn` from `candidate_votes`) select `ranked_candidates`.`constituency` AS `constituency`,`ranked_candidates`.`ward` AS `ward`,`ranked_candidates`.`candidate_name` AS `candidate_name`,`ranked_candidates`.`vote_count` AS `vote_count` from `ranked_candidates` where (`ranked_candidates`.`rn` = 1) order by `ranked_candidates`.`constituency`,`ranked_candidates`.`ward`  ;

-- --------------------------------------------------------

--
-- Structure for view `nullvotes_ward1`
--
DROP TABLE IF EXISTS `nullvotes_ward1`;

DROP VIEW IF EXISTS `nullvotes_ward1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nullvotes_ward1`  AS WITH     `all_voters` as (select count(`v`.`voterID`) AS `total_voters` from (`voter` `v` join `citizen` `c` on((`v`.`citizenID` = `c`.`citizenID`))) where (`c`.`wardID` = 1)), `null_ballots` as (select count(0) AS `num_null_ballots` from `cast_vote` `cv` where ((`cv`.`wardID` = 1) and ((`cv`.`presidentID` is null) or (`cv`.`member_ofparlID` is null) or (`cv`.`localgovtID` is null)))), `non_voters` as (select count(`v`.`voterID`) AS `num_non_voters` from ((`voter` `v` join `citizen` `c` on((`v`.`citizenID` = `c`.`citizenID`))) left join `cast_vote` `cv` on((`v`.`voterID` = `cv`.`voterID`))) where ((`c`.`wardID` = 1) and (`cv`.`voteID` is null))) select 'Ndirande ward' AS `ward`,(coalesce(`nb`.`num_null_ballots`,0) + coalesce(`nv`.`num_non_voters`,0)) AS `number_null_void`,round((((coalesce(`nb`.`num_null_ballots`,0) + coalesce(`nv`.`num_non_voters`,0)) * 100.0) / `av`.`total_voters`),2) AS `percentage` from ((`all_voters` `av` join `null_ballots` `nb`) join `non_voters` `nv`)  ;

-- --------------------------------------------------------

--
-- Structure for view `nullvotes_ward2`
--
DROP TABLE IF EXISTS `nullvotes_ward2`;

DROP VIEW IF EXISTS `nullvotes_ward2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nullvotes_ward2`  AS WITH     `all_voters` as (select count(`v`.`voterID`) AS `total_voters` from (`voter` `v` join `citizen` `c` on((`v`.`citizenID` = `c`.`citizenID`))) where (`c`.`wardID` = 2)), `null_ballots` as (select count(0) AS `num_null_ballots` from `cast_vote` `cv` where ((`cv`.`wardID` = 2) and ((`cv`.`presidentID` is null) or (`cv`.`member_ofparlID` is null) or (`cv`.`localgovtID` is null)))), `non_voters` as (select count(`v`.`voterID`) AS `num_non_voters` from ((`voter` `v` join `citizen` `c` on((`v`.`citizenID` = `c`.`citizenID`))) left join `cast_vote` `cv` on((`v`.`voterID` = `cv`.`voterID`))) where ((`c`.`wardID` = 2) and (`cv`.`voteID` is null))) select 'Mbayani ward' AS `ward`,(coalesce(`nb`.`num_null_ballots`,0) + coalesce(`nv`.`num_non_voters`,0)) AS `number_null_void`,round((((coalesce(`nb`.`num_null_ballots`,0) + coalesce(`nv`.`num_non_voters`,0)) * 100.0) / `av`.`total_voters`),2) AS `percentage` from ((`all_voters` `av` join `null_ballots` `nb`) join `non_voters` `nv`)  ;

-- --------------------------------------------------------

--
-- Structure for view `parlimental_winner`
--
DROP TABLE IF EXISTS `parlimental_winner`;

DROP VIEW IF EXISTS `parlimental_winner`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `parlimental_winner`  AS WITH     `candidate_votes` as (select `rc`.`constID` AS `constID`,`const`.`name` AS `constituency`,concat(`c`.`fname`,' ',`c`.`lname`) AS `candidate_name`,`rc`.`partyID` AS `partyID`,count(`cv`.`member_ofparlID`) AS `vote_count` from ((((`reg_candidate` `rc` join `citizen` `c` on((`rc`.`citizenID` = `c`.`citizenID`))) join `constituency` `const` on((`rc`.`constID` = `const`.`constID`))) left join `member_ofparl` `m` on((`rc`.`regNum` = `m`.`regNum`))) left join `cast_vote` `cv` on((`cv`.`member_ofparlID` = `m`.`member_ofParlID`))) where (`rc`.`typeID` = 2) group by `rc`.`constID`,`rc`.`regNum`,`c`.`fname`,`c`.`lname`,`const`.`name`,`rc`.`partyID`), `ranked_candidates` as (select `candidate_votes`.`constituency` AS `constituency`,`candidate_votes`.`candidate_name` AS `candidate_name`,`candidate_votes`.`vote_count` AS `vote_count`,row_number() OVER (PARTITION BY `candidate_votes`.`constID` ORDER BY `candidate_votes`.`vote_count` desc,`candidate_votes`.`partyID` desc )  AS `rn` from `candidate_votes`) select `ranked_candidates`.`constituency` AS `constituency`,`ranked_candidates`.`candidate_name` AS `candidate_name`,`ranked_candidates`.`vote_count` AS `vote_count` from `ranked_candidates` where (`ranked_candidates`.`rn` = 1) order by `ranked_candidates`.`constituency`  ;

-- --------------------------------------------------------

--
-- Structure for view `presidential_winner`
--
DROP TABLE IF EXISTS `presidential_winner`;

DROP VIEW IF EXISTS `presidential_winner`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `presidential_winner`  AS WITH     `candidate_votes` as (select concat(`c`.`fname`,' ',`c`.`lname`) AS `presidential_candidate`,`rc`.`partyID` AS `partyID`,count(`cv`.`presidentID`) AS `vote_count` from (((`reg_candidate` `rc` join `citizen` `c` on((`rc`.`citizenID` = `c`.`citizenID`))) left join `president` `p` on((`rc`.`regNum` = `p`.`regNum`))) left join `cast_vote` `cv` on((`cv`.`presidentID` = `p`.`presidentID`))) where (`rc`.`typeID` = 1) group by `rc`.`regNum`,`c`.`fname`,`c`.`lname`,`rc`.`partyID`), `ranked_candidates` as (select `candidate_votes`.`presidential_candidate` AS `presidential_candidate`,`candidate_votes`.`vote_count` AS `vote_count`,row_number() OVER (ORDER BY `candidate_votes`.`vote_count` desc,`candidate_votes`.`partyID` desc )  AS `rn` from `candidate_votes`) select `ranked_candidates`.`presidential_candidate` AS `presidential_candidate`,`ranked_candidates`.`vote_count` AS `vote_count` from `ranked_candidates` where (`ranked_candidates`.`rn` = 1)  ;

-- --------------------------------------------------------

--
-- Structure for view `unreg_candidates`
--
DROP TABLE IF EXISTS `unreg_candidates`;

DROP VIEW IF EXISTS `unreg_candidates`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `unreg_candidates`  AS SELECT round((((count(0) - count(`v`.`voterID`)) * 100.0) / count(0)),2) AS `percentage_unregistered_candidates` FROM (`candidate` `c` left join `voter` `v` on((`c`.`citizenID` = `v`.`citizenID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `unreg_people`
--
DROP TABLE IF EXISTS `unreg_people`;

DROP VIEW IF EXISTS `unreg_people`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `unreg_people`  AS SELECT 'Females' AS `gender`, round(((((select count(0) from `citizen` where (`citizen`.`gender` = 'f')) - (select count(0) from (`citizen` `c` join `voter` `v` on((`c`.`citizenID` = `v`.`citizenID`))) where (`c`.`gender` = 'f'))) * 100.0) / (select count(0) from `citizen` where (`citizen`.`gender` = 'f'))),2) AS `percentage_unregistered`union all select 'Males' AS `Males`,round(((((select count(0) from `citizen` where (`citizen`.`gender` = 'm')) - (select count(0) from (`citizen` `c` join `voter` `v` on((`c`.`citizenID` = `v`.`citizenID`))) where (`c`.`gender` = 'm'))) * 100.0) / (select count(0) from `citizen` where (`citizen`.`gender` = 'm'))),2) AS `Name_exp_4`  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
