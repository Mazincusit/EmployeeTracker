DROP DATABASE IF EXISTS `employee_tracker`;

CREATE DATABASE `employee_tracker`
  DEFAULT CHARACTER SET 'utf8'
  DEFAULT COLLATE 'utf8_unicode_ci';

USE `employee_tracker`;

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `employee` VALUES 
  (1,'Oleksander','Wasylyk','Java EE Developer','Switted1982@armyspy.com'),
  (2,'Andriy','Wolanski','Java EE Developer','Allashom35@superrito.com'),
  (3,'Kalyna','Holub','HR','Gaved@dayrep.com'),
  (4,'Dariya','Kedzierski','Sales Manager','Uttipamu@einrot.com'),
  (5,'Miron','Wasylyshyn','Architect','Plam1959@superrito.com');
