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
) ENGINE=InnoDB DEFAULT CHARSET='utf8';

INSERT INTO `employee` VALUES
  (1,'Александр','Василюк','Java EE разработчик','Switted1982@armyspy.com'),
  (2,'Андрей','Воландский','Java EE разработчик','Allashom35@superrito.com'),
  (3,'Калина','Голубь','HR менеджер','Gaved@dayrep.com'),
  (4,'Дарья','Кедзерская','Sales Manager','Uttipamu@einrot.com'),
  (5,'Мирон','Василишин','Architect','Plam1959@superrito.com');
