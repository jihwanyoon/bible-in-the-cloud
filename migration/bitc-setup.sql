# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.29)
# Database: bitc
# Generation Time: 2017-06-10 23:07:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`, `name`, `created`, `modified`)
VALUES
  (1,'Genesis','2017-06-08 12:42:24.1732','2017-06-08 12:42:24.1732'),
  (2,'Exodus','2017-06-08 12:42:24.1799','2017-06-08 12:42:24.1799'),
  (3,'Leviticus','2017-06-08 12:42:24.1804','2017-06-08 12:42:24.1804'),
  (4,'Numbers','2017-06-08 12:42:24.1809','2017-06-08 12:42:24.1809'),
  (5,'Deuteronomy','2017-06-08 12:42:24.1825','2017-06-08 12:42:24.1825'),
  (6,'Joshua','2017-06-08 12:42:24.1840','2017-06-08 12:42:24.1840'),
  (7,'Judges','2017-06-08 12:42:24.1969','2017-06-08 12:42:24.1969'),
  (8,'Ruth','2017-06-08 12:42:24.2050','2017-06-08 12:42:24.2050'),
  (9,'1 Samuel','2017-06-08 12:42:24.2066','2017-06-08 12:42:24.2066'),
  (10,'2 Samuel','2017-06-08 12:42:24.2102','2017-06-08 12:42:24.2102'),
  (11,'1 Kings','2017-06-08 12:42:24.2124','2017-06-08 12:42:24.2124'),
  (12,'2 Kings','2017-06-08 12:42:24.2147','2017-06-08 12:42:24.2147'),
  (13,'1 Chronicles','2017-06-08 12:42:24.2154','2017-06-08 12:42:24.2154'),
  (14,'2 Chronicles','2017-06-08 12:42:24.2162','2017-06-08 12:42:24.2162'),
  (15,'Ezra','2017-06-08 12:42:24.2168','2017-06-08 12:42:24.2168'),
  (16,'Nehemiah','2017-06-08 12:42:24.2194','2017-06-08 12:42:24.2194'),
  (17,'Esther','2017-06-08 12:42:24.2204','2017-06-08 12:42:24.2204'),
  (18,'Job','2017-06-08 12:42:24.2218','2017-06-08 12:42:24.2218'),
  (19,'Psalms','2017-06-08 12:42:24.2319','2017-06-08 12:42:24.2319'),
  (20,'Proverbs','2017-06-08 12:42:24.2356','2017-06-08 12:42:24.2356'),
  (21,'Ecclesiastes','2017-06-08 12:42:24.2379','2017-06-08 12:42:24.2379'),
  (22,'Song of Solomon','2017-06-08 12:42:24.2406','2017-06-08 12:42:24.2406'),
  (23,'Isaiah','2017-06-08 12:42:24.2461','2017-06-08 12:42:24.2461'),
  (24,'Jeremiah','2017-06-08 12:42:24.2495','2017-06-08 12:42:24.2495'),
  (25,'Lamentations','2017-06-08 12:42:24.2548','2017-06-08 12:42:24.2548'),
  (26,'Ezekiel','2017-06-08 12:42:24.2576','2017-06-08 12:42:24.2576'),
  (27,'Daniel','2017-06-08 12:42:24.2593','2017-06-08 12:42:24.2593'),
  (28,'Hosea','2017-06-08 12:42:24.2599','2017-06-08 12:42:24.2599'),
  (29,'Joel','2017-06-08 12:42:24.2606','2017-06-08 12:42:24.2606'),
  (30,'Amos','2017-06-08 12:42:24.3163','2017-06-08 12:42:24.3163'),
  (31,'Obadiah','2017-06-08 12:42:24.3762','2017-06-08 12:42:24.3762'),
  (32,'Jonah','2017-06-08 12:42:24.3776','2017-06-08 12:42:24.3776'),
  (33,'Micah','2017-06-08 12:42:24.3818','2017-06-08 12:42:24.3818'),
  (34,'Nahum','2017-06-08 12:42:24.3829','2017-06-08 12:42:24.3829'),
  (35,'Habakkuk','2017-06-08 12:42:24.3843','2017-06-08 12:42:24.3843'),
  (36,'Zephaniah','2017-06-08 12:42:24.3852','2017-06-08 12:42:24.3852'),
  (37,'Haggai','2017-06-08 12:42:24.4197','2017-06-08 12:42:24.4197'),
  (38,'Zechariah','2017-06-08 12:42:24.4208','2017-06-08 12:42:24.4208'),
  (39,'Malachi','2017-06-08 12:42:24.4357','2017-06-08 12:42:24.4357'),
  (40,'Matthew','2017-06-08 12:42:24.4441','2017-06-08 12:42:24.4441'),
  (41,'Mark','2017-06-08 12:42:24.4454','2017-06-08 12:42:24.4454'),
  (42,'Luke','2017-06-08 12:42:24.4472','2017-06-08 12:42:24.4472'),
  (43,'John','2017-06-08 12:42:24.4485','2017-06-08 12:42:24.4485'),
  (44,'Acts','2017-06-08 12:42:24.4492','2017-06-08 12:42:24.4492'),
  (45,'Romans','2017-06-08 12:42:24.4501','2017-06-08 12:42:24.4501'),
  (46,'1 Corinthians','2017-06-08 12:42:24.4508','2017-06-08 12:42:24.4508'),
  (47,'2 Corinthians','2017-06-08 12:42:24.4521','2017-06-08 12:42:24.4521'),
  (48,'Galatians','2017-06-08 12:42:24.4532','2017-06-08 12:42:24.4532'),
  (49,'Ephesians','2017-06-08 12:42:24.4631','2017-06-08 12:42:24.4631'),
  (50,'Philippians','2017-06-08 12:42:24.5205','2017-06-08 12:42:24.5205'),
  (51,'Colossians','2017-06-08 12:42:24.5310','2017-06-08 12:42:24.5310'),
  (52,'1 Thessalonians','2017-06-08 12:42:24.5326','2017-06-08 12:42:24.5326'),
  (53,'2 Thessalonians','2017-06-08 12:42:24.5615','2017-06-08 12:42:24.5615'),
  (54,'1 Timothy','2017-06-08 12:42:24.5803','2017-06-08 12:42:24.5803'),
  (55,'2 Timothy','2017-06-08 12:42:24.5813','2017-06-08 12:42:24.5813'),
  (56,'Titus','2017-06-08 12:42:24.5833','2017-06-08 12:42:24.5833'),
  (57,'Philemon','2017-06-08 12:42:24.5845','2017-06-08 12:42:24.5845'),
  (58,'Hebrews','2017-06-08 12:42:24.5853','2017-06-08 12:42:24.5853'),
  (59,'James','2017-06-08 12:42:24.5862','2017-06-08 12:42:24.5862'),
  (60,'1 Peter','2017-06-08 12:42:24.5972','2017-06-08 12:42:24.5972'),
  (61,'2 Peter','2017-06-08 12:42:24.6018','2017-06-08 12:42:24.6018'),
  (62,'1 John','2017-06-08 12:42:24.6028','2017-06-08 12:42:24.6028'),
  (63,'2 John','2017-06-08 12:42:24.6034','2017-06-08 12:42:24.6034'),
  (64,'3 John','2017-06-08 12:42:24.6039','2017-06-08 12:42:24.6039'),
  (65,'Jude','2017-06-08 12:42:24.6060','2017-06-08 12:42:24.6060'),
  (66,'Revelation','2017-06-08 12:42:24.6074','2017-06-08 12:42:24.6074');

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table display_names
# ------------------------------------------------------------

DROP TABLE IF EXISTS `display_names`;

CREATE TABLE `display_names` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `language_id` int(5) NOT NULL,
  `book_id` int(5) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`),
  KEY `display_names_books_id_fk` (`book_id`),
  KEY `display_names_langauges_id_fk` (`language_id`),
  CONSTRAINT `display_names_books_id_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `display_names_langauges_id_fk` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;

INSERT INTO `languages` (`id`, `code`, `name`, `created`, `modified`)
VALUES
  (1,'en','English','2017-06-08 01:43:56.7558','2017-06-08 01:43:56.7558'),
  (2,'ko','Korean','2017-06-08 01:44:15.8871','2017-06-08 01:44:15.8871');

/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table verses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `verses`;

CREATE TABLE `verses` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `version_id` int(5) NOT NULL,
  `book_id` int(5) NOT NULL,
  `chapter` int(5) NOT NULL,
  `verse` int(5) NOT NULL,
  `text` varchar(500) NOT NULL DEFAULT '',
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`),
  KEY `verses_versions_id_fk` (`version_id`),
  KEY `verses_books_id_fk` (`book_id`),
  CONSTRAINT `verses_books_id_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `verses_versions_id_fk` FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `versions`;

CREATE TABLE `versions` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `language_id` int(5) NOT NULL,
  `created` datetime(4) DEFAULT CURRENT_TIMESTAMP(4),
  `modified` datetime(4) DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  PRIMARY KEY (`id`),
  KEY `versions_langauges_id_fk` (`language_id`),
  CONSTRAINT `versions_langauges_id_fk` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;

INSERT INTO `versions` (`id`, `code`, `name`, `language_id`, `created`, `modified`)
VALUES
  (1,'NIV','New International Version',1,'2017-06-08 01:46:05.3235','2017-06-08 01:46:41.5468'),
  (2,'KRV','Korean Revised Version',2,'2017-06-08 01:47:27.1509','2017-06-08 01:47:27.1509');

/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;