SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin_account` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(42) NOT NULL,
  `admin_photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `admin_info` (
  `admin_info_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_fname` varchar(30) NOT NULL,
  `admin_lname` varchar(30) NOT NULL,
  `admin_birthday` date NOT NULL,
  `admin_age` int(3) NOT NULL,
  `admin_address` varchar(100) NOT NULL,
  `admin_contactno` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `awards` (
  `awards_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `awards_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `certifications` (
  `certification_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `certification_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `coursehandled` (
  `coursehandled_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `department_acronym` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `department` (`department_id`, `department_name`, `department_acronym`) VALUES
(1, 'College of Allied Health Studies', 'CAHS'),
(2, 'College of Business and Accountancy', 'CBA'),
(3, 'College of Computer Studies', 'CCS'),
(4, 'College of Education, Arts, and Sciences', 'CEAS'),
(5, 'College of Hospitality and Tourism Management', 'CHTM');

CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `education_degree` varchar(50) NOT NULL,
  `education_school` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `experience` (
  `experience_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `experience_company` varchar(50) NOT NULL,
  `experience_position` varchar(50) NOT NULL,
  `experience_start` date NOT NULL,
  `experience_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `expertise` (
  `expertise_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `expertise_premiere` enum('Beginner','Intermediate','Advanced','Expert') NOT NULL,
  `expertise_effects` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_illustrator` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_photoshop` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_msoffice` enum('Beginner','Intermediate','Advance','Expert') NOT NULL,
  `expertise_googleapps` enum('Beginner','Intermediate','Advance','Expert') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `extensions` (
  `extension_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `extension_title` varchar(255) NOT NULL,
  `extension_org` varchar(150) NOT NULL,
  `extension_year` date NOT NULL,
  `extension_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `faculty_account` (
  `faculty_id` int(11) NOT NULL,
  `faculty_email` varchar(50) NOT NULL,
  `faculty_username` varchar(50) NOT NULL,
  `faculty_password` varchar(50) NOT NULL,
  `faculty_photo` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `faculty_account` (`faculty_id`, `faculty_email`, `faculty_username`, `faculty_password`, `faculty_photo`) VALUES
(3, '12345@gordoncollege.edu.ph', '12345', 'qwert1234', NULL),
(5, '12321@gordoncollege.edu.ph', '12321', 'qwert1234', NULL);


CREATE TABLE `personalinfo` (
  `faculty_id` int(11) NOT NULL,
  `faculty_fname` varchar(30) NOT NULL,
  `faculty_lname` varchar(30) NOT NULL,
  `faculty_birthday` date NOT NULL,
  `faculty_address` varchar(100) NOT NULL,
  `faculty_contactno` int(12) NOT NULL,
  `faculty_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `status` (
  `faculty_id` int(11) NOT NULL,
  `highest_degree` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `tenure` int(50) NOT NULL,
  `status` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_username` (`admin_username`);


ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_info_id`),
  ADD KEY `admin_id` (`admin_id`);


ALTER TABLE `awards`
  ADD PRIMARY KEY (`awards_id`),
  ADD KEY `faculty_id` (`faculty_id`);


ALTER TABLE `certifications`
  ADD PRIMARY KEY (`certification_id`);


ALTER TABLE `coursehandled`
  ADD PRIMARY KEY (`coursehandled_id`),
  ADD KEY `faculty_id` (`faculty_id`);


ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);


ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `faculty_id` (`faculty_id`);


ALTER TABLE `experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `faculty_id` (`faculty_id`);


ALTER TABLE `expertise`
  ADD PRIMARY KEY (`expertise_id`),
  ADD KEY `faculty_id` (`faculty_id`);


ALTER TABLE `extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `faculty_id` (`faculty_id`);


ALTER TABLE `faculty_account`
  ADD PRIMARY KEY (`faculty_id`),
  ADD UNIQUE KEY `faculty_username` (`faculty_username`);


ALTER TABLE `personalinfo`
  ADD KEY `faculty_id` (`faculty_id`);


ALTER TABLE `status`
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `department_id` (`department_id`);


ALTER TABLE `admin_account`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `admin_info`
  MODIFY `admin_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `awards`
  MODIFY `awards_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `certifications`
  MODIFY `certification_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `coursehandled`
  MODIFY `coursehandled_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `experience`
  MODIFY `experience_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `expertise`
  MODIFY `expertise_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `faculty_account`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `admin_info`
  ADD CONSTRAINT `admin_info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_account` (`admin_id`);


ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);


ALTER TABLE `coursehandled`
  ADD CONSTRAINT `coursehandled_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);


ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);


ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);


ALTER TABLE `expertise`
  ADD CONSTRAINT `expertise_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);


ALTER TABLE `extensions`
  ADD CONSTRAINT `extensions_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);


ALTER TABLE `personalinfo`
  ADD CONSTRAINT `personalinfo_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`);


ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_account` (`faculty_id`),
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);
COMMIT;

