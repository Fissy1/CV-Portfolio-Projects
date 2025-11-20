-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 02:14 AM
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
-- Database: `software_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `external_user`
--

CREATE TABLE `external_user` (
  `user_name` varchar(20) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `external_user`
--

INSERT INTO `external_user` (`user_name`, `phone_no`, `company_name`) VALUES
('Annie Jackson', 795332131, 'IBM'),
('Bekky Daniels', 792553101, 'Salesforce'),
('Bryan Rolland', 791082185, 'Amazon'),
('Christiannah Joe', 792443105, 'Oracle'),
('Donald Fred', 795212201, 'Adobe'),
('James Stones', 712345678, 'Microsoft'),
('John Kennedy', 791356544, 'Intel'),
('Kings Smith', 781325231, 'Google'),
('Rio Jack', 795112065, 'SAP'),
('Robert Green', 791458133, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `internal_user`
--

CREATE TABLE `internal_user` (
  `user_name` varchar(20) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `phone_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internal_user`
--

INSERT INTO `internal_user` (`user_name`, `dept_name`, `phone_no`) VALUES
('Adrian Jones', 'Communications', 792917865),
('Charles Darwin', 'Workplace Management', 793506834),
('Charles Godwin', 'Analytics', 794217328),
('David Mark', 'Development', 795644131),
('Francisca Joe', 'Project Management', 791889320),
('Goodness Rocky', 'Quality Assurance', 734723781),
('Grace Thompson', 'Engineering & Develo', 791517231),
('Joss Richard', 'Software Development', 795652381),
('Junior Darlington', 'Human Resources', 792005173),
('Leonard Benson', 'Software Analysis', 793256584),
('Luke Cornell', 'Sales and Business', 793257551),
('Paul Donald', 'Engineering', 791345763),
('Prince Maxwell', 'Data Science', 791226551),
('Victoria Spencer', 'User Experience', 792711728);

-- --------------------------------------------------------

--
-- Table structure for table `maintained_by`
--

CREATE TABLE `maintained_by` (
  `team_name` varchar(20) NOT NULL,
  `version_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintained_by`
--

INSERT INTO `maintained_by` (`team_name`, `version_no`) VALUES
('Accurate_Teams', '10001.3'),
('Accurate_Teams', '10009.3'),
('Accurate_Teams', '10014.1'),
('Accurate_Teams', '10018.2'),
('Accurate_Teams', '10020.1'),
('Alpha_Teams', '10002.1'),
('Alpha_Teams', '10003.1'),
('Alpha_Teams', '10008.2'),
('Alpha_Teams', '10012.1'),
('Alpha_Teams', '10020.2'),
('Alpha_Teams', '10021.2'),
('Alpha_Teams', '10025.2'),
('Emirate_Teams', '10001.2'),
('Emirate_Teams', '10004.3'),
('Emirate_Teams', '10005.4'),
('Emirate_Teams', '10006.1'),
('Emirate_Teams', '10013.2'),
('Emirate_Teams', '10015.2'),
('Emirate_Teams', '10019.3'),
('Gladiators_Teams', '10005.5'),
('Gladiators_Teams', '10010.2'),
('Gladiators_Teams', '10011.2'),
('Gladiators_Teams', '10023.2'),
('Mastermind_Teams', '10004.2'),
('Mastermind_Teams', '10005.3'),
('Mastermind_Teams', '10007.1'),
('Mastermind_Teams', '10013.1'),
('Mastermind_Teams', '10017.1'),
('Mastermind_Teams', '10019.1'),
('Mastermind_Teams', '10021.1'),
('Mastermind_Teams', '10025.1'),
('Mavericks_Teams', '10003.2'),
('Mavericks_Teams', '10005.1'),
('Mavericks_Teams', '10007.2'),
('Star_Teams', '10004.1'),
('Star_Teams', '10010.3'),
('Star_Teams', '10011.1'),
('Star_Teams', '10018.1'),
('Star_Teams', '10022.1'),
('Star_Teams', '10024.1'),
('Star_Teams', '10024.3'),
('Ultimate_Teams', '10008.1'),
('Ultimate_Teams', '10021.3'),
('Ultimate_Teams', '10023.1'),
('Ultimate_Teams', '10024.2'),
('Universal_Teams', '10001.1'),
('Universal_Teams', '10009.2'),
('Universal_Teams', '10010.1'),
('Universal_Teams', '10016.1'),
('Warriors_Teams', '10005.2'),
('Warriors_Teams', '10009.1'),
('Warriors_Teams', '10015.1'),
('Warriors_Teams', '10018.3'),
('Warriors_Teams', '10019.2');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_team`
--

CREATE TABLE `maintenance_team` (
  `team_name` varchar(20) NOT NULL,
  `team_leader` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_team`
--

INSERT INTO `maintenance_team` (`team_name`, `team_leader`) VALUES
('Accurate_Teams', 'Annabel Fisher'),
('Alpha_Teams', 'Shawn Tiffany'),
('Emirate_Teams', 'James Wills'),
('Gladiators_Teams', 'Queen Lehman '),
('Mastermind_Teams', 'Stephen Craig'),
('Mavericks_Teams', 'Anthony Wiliams'),
('Star_Teams', 'Reid Wilmer'),
('Ultimate_Teams', 'Anita Bassey'),
('Universal_Teams', 'Victor Griggs'),
('Warriors_Teams', 'Stephen Young');

-- --------------------------------------------------------

--
-- Table structure for table `problem_report`
--

CREATE TABLE `problem_report` (
  `report_no` int(10) NOT NULL,
  `submission_date` date NOT NULL,
  `problem_description` varchar(50) NOT NULL,
  `priority_rating` int(5) NOT NULL,
  `status` varchar(20) NOT NULL,
  `product_id` int(10) NOT NULL,
  `version_no` varchar(10) NOT NULL,
  `internal_user_name` varchar(20) DEFAULT NULL,
  `external_user_name` varchar(20) DEFAULT NULL,
  `team_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problem_report`
--

INSERT INTO `problem_report` (`report_no`, `submission_date`, `problem_description`, `priority_rating`, `status`, `product_id`, `version_no`, `internal_user_name`, `external_user_name`, `team_name`) VALUES
(1, '2023-08-08', 'Performance Issue', 8, 'In Progress', 10001, '10001.3', 'Charles Godwin', NULL, 'Alpha_Teams'),
(2, '2023-04-12', 'Integration Issue', 7, 'In Progress', 10002, '10002.1', NULL, 'Bekky Daniels', 'Gladiators_Teams'),
(3, '2022-11-25', 'Software Bug', 5, 'Fixed', 10003, '10003.2', NULL, 'Annie Jackson', 'Emirate_Teams'),
(4, '2022-09-30', 'Software Crash', 9, 'In Progress', 10004, '10004.2', 'Luke Cornell', NULL, 'Accurate_Teams'),
(5, '2023-02-17', 'Compatibility Error', 6, 'Not a Problem', 10005, '10005.4', 'Paul Donald', NULL, 'Warriors_Teams'),
(6, '2022-07-10', 'UI Glitch', 4, 'In Progress', 10006, '10006.1', NULL, 'Bryan Rolland', 'Mastermind_Teams'),
(7, '2022-05-05', 'Functionality Flaw', 3, 'Fixed', 10007, '10007.1', 'Prince Maxwell', NULL, 'Star_Teams'),
(8, '2023-01-21', 'Performance Degradation', 7, 'In Progress', 10008, '10008.1', NULL, 'Rio Jack', 'Star_Teams'),
(9, '2023-09-03', 'Installation Problem', 6, 'Not a Problem', 10009, '10009.3', NULL, 'Christiannah Joe', 'Emirate_Teams'),
(10, '2022-12-12', 'Software Configuration Issue', 8, 'In Progress', 10010, '10010.3', 'Charles Darwin', NULL, 'Mavericks_Teams'),
(11, '2022-08-18', 'Database Error', 9, 'Fixed', 10011, '10011.1', NULL, 'John Kennedy', 'Star_Teams'),
(12, '2023-03-24', 'Security Vulnerability', 5, 'In Progress', 10012, '10012.1', NULL, 'Rio Jack', 'Accurate_Teams'),
(13, '2022-06-30', 'Software Update Issue', 7, 'Not a Problem', 10013, '10013.1', 'Goodness Rocky', NULL, 'Accurate_Teams'),
(14, '2022-03-14', 'Network Connectivity Problem', 6, 'In Progress', 10014, '10014.1', 'Prince Maxwell', NULL, 'Mavericks_Teams'),
(15, '2023-07-01', 'User Permission Issue', 8, 'Fixed', 10015, '10015.1', NULL, 'James Stones', 'Alpha_Teams'),
(16, '2023-05-09', 'Software Configuration Issue', 4, 'In Progress', 10016, '10016.1', NULL, 'Donald Fred', 'Emirate_Teams'),
(17, '2022-10-22', 'Performance Issue', 6, 'Not a Problem', 10017, '10017.1', 'Prince Maxwell', NULL, 'Gladiators_Teams'),
(18, '2022-02-27', 'Integration Issue', 9, 'In Progress', 10018, '10018.3', NULL, 'Annie Jackson', 'Mastermind_Teams'),
(19, '2023-04-18', 'Software Crash', 7, 'Fixed', 10019, '10019.1', 'Junior Darlington', NULL, 'Mavericks_Teams'),
(20, '2022-08-11', 'UI Glitch', 3, 'In Progress', 10020, '10020.2', NULL, 'Robert Green', 'Star_Teams'),
(21, '2022-12-29', 'Functionality Flaw', 8, 'Not a Problem', 10021, '10021.2', 'Francisca Joe', NULL, 'Ultimate_Teams'),
(22, '2023-06-07', 'Software Bug', 5, 'In Progress', 10022, '10022.1', 'David Mark', NULL, 'Universal_Teams'),
(23, '2022-04-05', 'Performance Degradation', 6, 'Fixed', 10023, '10023.1', NULL, 'James Stones', 'Warriors_Teams'),
(24, '2023-01-13', 'Software Configuration Issue', 7, 'In Progress', 10024, '10024.2', 'Charles Darwin', NULL, 'Alpha_Teams'),
(25, '2023-10-30', 'Compatibility Error', 9, 'Not a Problem', 10025, '10025.2', 'Charles Godwin', NULL, 'Accurate_Teams'),
(26, '2023-08-08', 'Performance Issue', 8, 'In Progress', 10015, '10015.2', 'Paul Donald', NULL, 'Ultimate_Teams');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_description`) VALUES
(10001, 'Microsoft Windows'),
(10002, 'Adobe Photoshop'),
(10003, 'Google Chrome'),
(10004, 'Salesforce CRM'),
(10005, 'Oracle Database'),
(10006, 'Apple iPhone'),
(10007, 'Amazon Web Services'),
(10008, 'IBM Watson'),
(10009, 'Autodesk AutoCAD'),
(10010, 'Intuit QuickBooks'),
(10011, 'VMware vSphere'),
(10012, 'Atlassian Jira'),
(10013, 'Unity'),
(10014, 'Facebook Messenger'),
(10015, 'Zoom'),
(10016, 'Twitter'),
(10017, 'Whatsapp'),
(10018, 'Instagram'),
(10019, 'Zendesk'),
(10020, 'Xampp'),
(10021, 'Splunk'),
(10022, 'Dropbox'),
(10023, 'WordPress'),
(10024, 'Cisco WebEx'),
(10025, 'HubSpot CRM');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `reg_no` int(10) NOT NULL,
  `reg_date` date NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `version_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_no`, `reg_date`, `user_name`, `version_no`) VALUES
(101, '2023-11-01', 'Annie Jackson', '10003.2'),
(102, '2023-07-26', 'Bekky Daniels', '10005.4'),
(103, '2023-12-25', 'Bryan Rolland', '10025.1'),
(104, '2023-01-07', 'Christiannah Joe', '10008.1'),
(105, '0000-00-00', 'Donald Fred', '10007.1'),
(106, '2023-07-14', 'James Stones', '10018.3'),
(107, '2023-03-29', 'John Kennedy', '10010.1'),
(108, '2023-04-25', 'Kings Smith', '10025.2'),
(109, '2023-10-09', 'Rio Jack', '10021.3'),
(110, '2023-12-29', 'Robert Green', '10019.3');

-- --------------------------------------------------------

--
-- Table structure for table `used_by`
--

CREATE TABLE `used_by` (
  `version_no` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `used_by`
--

INSERT INTO `used_by` (`version_no`, `user_name`) VALUES
('10001.1', 'Adrian Jones'),
('10002.1', 'Charles Darwin'),
('10003.2', 'Charles Godwin'),
('10004.1', 'David Mark'),
('10005.5', 'Francisca Joe'),
('10006.1', 'Goodness Rocky'),
('10007.2', 'Grace Thompson'),
('10008.2', 'Joss Richard'),
('10009.3', 'Junior Darlington'),
('10010.3', 'Leonard Benson'),
('10011.2', 'Luke Cornell'),
('10012.1', 'Paul Donald'),
('10013.2', 'Prince Maxwell'),
('10014.1', 'Victoria Spencer'),
('10023.1', 'Victoria Spencer');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `version_no` varchar(10) NOT NULL,
  `release_date` date NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`version_no`, `release_date`, `product_id`) VALUES
('10001.1', '2022-12-03', 10001),
('10001.2', '2023-05-08', 10001),
('10001.3', '2023-12-12', 10001),
('10002.1', '2021-03-15', 10002),
('10003.1', '2021-06-20', 10003),
('10003.2', '2022-01-10', 10003),
('10004.1', '2021-09-25', 10004),
('10004.2', '2022-02-28', 10004),
('10004.3', '2022-07-14', 10004),
('10005.1', '2021-11-30', 10010),
('10005.2', '2022-04-18', 10005),
('10005.3', '2022-08-22', 10005),
('10005.4', '2023-01-05', 10005),
('10005.5', '2023-06-10', 10005),
('10006.1', '2021-04-10', 10006),
('10007.1', '2021-07-02', 10007),
('10007.2', '2022-03-11', 10007),
('10008.1', '2022-10-05', 10008),
('10008.2', '2023-02-19', 10008),
('10009.1', '2021-08-15', 10009),
('10009.2', '2022-01-22', 10009),
('10009.3', '2022-05-30', 10009),
('10010.1', '2021-12-08', 10010),
('10010.2', '2022-06-14', 10010),
('10010.3', '2023-03-20', 10010),
('10011.1', '2022-09-07', 10011),
('10011.2', '2023-04-01', 10011),
('10012.1', '2022-11-12', 10012),
('10013.1', '2023-01-30', 10013),
('10013.2', '2023-07-25', 10013),
('10014.1', '2023-05-19', 10014),
('10015.1', '2023-09-28', 10015),
('10015.2', '2023-12-31', 10015),
('10016.1', '2022-01-05', 10016),
('10017.1', '2022-05-20', 10017),
('10018.1', '2022-08-07', 10018),
('10018.2', '2023-02-14', 10018),
('10018.3', '2023-07-18', 10018),
('10019.1', '2022-03-25', 10019),
('10019.2', '2022-09-03', 10019),
('10019.3', '2023-04-10', 10019),
('10020.1', '2022-06-30', 10020),
('10020.2', '2023-01-15', 10020),
('10021.1', '2022-10-20', 10021),
('10021.2', '2023-05-27', 10021),
('10021.3', '2023-11-02', 10021),
('10022.1', '2023-02-25', 10022),
('10023.1', '2023-06-12', 10023),
('10023.2', '2023-10-15', 10023),
('10024.1', '2023-03-08', 10024),
('10024.2', '2023-08-18', 10024),
('10024.3', '2023-12-20', 10024),
('10025.1', '2023-04-30', 10025),
('10025.2', '2023-09-05', 10025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `external_user`
--
ALTER TABLE `external_user`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `internal_user`
--
ALTER TABLE `internal_user`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `maintained_by`
--
ALTER TABLE `maintained_by`
  ADD PRIMARY KEY (`team_name`,`version_no`),
  ADD KEY `maintained_FK` (`version_no`);

--
-- Indexes for table `maintenance_team`
--
ALTER TABLE `maintenance_team`
  ADD PRIMARY KEY (`team_name`);

--
-- Indexes for table `problem_report`
--
ALTER TABLE `problem_report`
  ADD PRIMARY KEY (`report_no`),
  ADD KEY `problem_FK` (`product_id`),
  ADD KEY `prob_FK` (`version_no`),
  ADD KEY `prob_report_FK` (`team_name`),
  ADD KEY `report_FK` (`external_user_name`),
  ADD KEY `rep_FK` (`internal_user_name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_no`),
  ADD KEY `reg_FK` (`user_name`),
  ADD KEY `registration_FK` (`version_no`);

--
-- Indexes for table `used_by`
--
ALTER TABLE `used_by`
  ADD PRIMARY KEY (`version_no`,`user_name`),
  ADD KEY `used_by_FK` (`user_name`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`version_no`),
  ADD KEY `version_FK` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintained_by`
--
ALTER TABLE `maintained_by`
  ADD CONSTRAINT `maintained_FK` FOREIGN KEY (`version_no`) REFERENCES `version` (`version_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maintained_by_FK` FOREIGN KEY (`team_name`) REFERENCES `maintenance_team` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `problem_report`
--
ALTER TABLE `problem_report`
  ADD CONSTRAINT `prob_FK` FOREIGN KEY (`version_no`) REFERENCES `version` (`version_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prob_report_FK` FOREIGN KEY (`team_name`) REFERENCES `maintenance_team` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `problem_FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rep_FK` FOREIGN KEY (`internal_user_name`) REFERENCES `internal_user` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_FK` FOREIGN KEY (`external_user_name`) REFERENCES `external_user` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `reg_FK` FOREIGN KEY (`user_name`) REFERENCES `external_user` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registration_FK` FOREIGN KEY (`version_no`) REFERENCES `version` (`version_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `used_by`
--
ALTER TABLE `used_by`
  ADD CONSTRAINT `used_by` FOREIGN KEY (`version_no`) REFERENCES `version` (`version_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `used_by_FK` FOREIGN KEY (`user_name`) REFERENCES `internal_user` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `version`
--
ALTER TABLE `version`
  ADD CONSTRAINT `version_FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
