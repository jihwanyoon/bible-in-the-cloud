# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.29)
# Database: bitc
# Generation Time: 2017-06-07 23:42:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table abbreviations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `abbreviations`;

CREATE TABLE `abbreviations` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `book_id` int(5) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`),
  KEY `abbreviations_books_id_fk` (`book_id`),
  CONSTRAINT `abbreviations_books_id_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `language_id` int(5) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`),
  KEY `books_languages_id_fk` (`language_id`),
  CONSTRAINT `books_languages_id_fk` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table verses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `verses`;

CREATE TABLE `verses` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `book_id` int(5) NOT NULL,
  `chapter` int(5) NOT NULL,
  `verse` int(5) NOT NULL,
  `text` varchar(100) NOT NULL,
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`),
  KEY `verses_books_id_fk` (`book_id`),
  CONSTRAINT `verses_books_id_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
