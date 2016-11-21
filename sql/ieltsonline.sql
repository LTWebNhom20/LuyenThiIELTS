-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ieltsonline
-- ------------------------------------------------------
-- Server version	5.5.52-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `idFac` varchar(45) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `dayofbirth` date DEFAULT NULL,
  `email` text,
  `phone` varchar(45) DEFAULT NULL,
  `privilege` int(11) NOT NULL,
  `sex` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('11','11','IT','11sdf','1988-03-13','11','11',3,''),('admin','123','*','administrator','1985-11-11','admin@live.com','08888888',1,''),('d01','123','IT','john carpenter','1988-03-13','jcic@live.net','(817) 755-5900',3,''),('l01','123','IT','Jennifer Lopez','1986-01-07','Jeninit@live.net','(817) 449-5900',4,'\0'),('l04','123','EEE','Jessica Stam','1988-03-13','Js@live.net','(817) 779-5900',4,'\0'),('l45','123','EC','James Rodriguez','1998-03-13','Jrz@live.net','(817) 536-9160',4,''),('l46','123','EEE','Daniela Ospina','1979-02-11','D@live.net','(817) 836-7160',4,''),('p01','123','IT','Persional','1987-09-30','Pit@live.net','(817) 559-5900',5,''),('r01','123','IT','Adam  Richmond','1988-03-13','AdRic@live.net','(817) 779-5900',2,'');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ajax`
--

DROP TABLE IF EXISTS `ajax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `engine` varchar(255) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `platform` varchar(255) NOT NULL DEFAULT '',
  `version` float NOT NULL DEFAULT '0',
  `grade` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajax`
--

LOCK TABLES `ajax` WRITE;
/*!40000 ALTER TABLE `ajax` DISABLE KEYS */;
INSERT INTO `ajax` VALUES (1,'Trident','Internet Explorer 4.0','Win 95+',4,'X'),(2,'Trident','Internet Explorer 5.0','Win 95+',5,'C'),(3,'Trident','Internet Explorer 5.5','Win 95+',5.5,'A'),(4,'Trident','Internet Explorer 6','Win 98+',6,'A'),(5,'Trident','Internet Explorer 7','Win XP SP2+',7,'A'),(6,'Trident','AOL browser (AOL desktop)','Win XP',6,'A'),(7,'Gecko','Firefox 1.0','Win 98+ / OSX.2+',1.7,'A'),(8,'Gecko','Firefox 1.5','Win 98+ / OSX.2+',1.8,'A'),(9,'Gecko','Firefox 2.0','Win 98+ / OSX.2+',1.8,'A'),(10,'Gecko','Firefox 3.0','Win 2k+ / OSX.3+',1.9,'A'),(11,'Gecko','Camino 1.0','OSX.2+',1.8,'A'),(12,'Gecko','Camino 1.5','OSX.3+',1.8,'A'),(13,'Gecko','Netscape 7.2','Win 95+ / Mac OS 8.6-9.2',1.7,'A'),(14,'Gecko','Netscape Browser 8','Win 98SE+',1.7,'A'),(15,'Gecko','Netscape Navigator 9','Win 98+ / OSX.2+',1.8,'A'),(16,'Gecko','Mozilla 1.0','Win 95+ / OSX.1+',1,'A'),(17,'Gecko','Mozilla 1.1','Win 95+ / OSX.1+',1.1,'A'),(18,'Gecko','Mozilla 1.2','Win 95+ / OSX.1+',1.2,'A'),(19,'Gecko','Mozilla 1.3','Win 95+ / OSX.1+',1.3,'A'),(20,'Gecko','Mozilla 1.4','Win 95+ / OSX.1+',1.4,'A'),(21,'Gecko','Mozilla 1.5','Win 95+ / OSX.1+',1.5,'A'),(22,'Gecko','Mozilla 1.6','Win 95+ / OSX.1+',1.6,'A'),(23,'Gecko','Mozilla 1.7','Win 98+ / OSX.1+',1.7,'A'),(24,'Gecko','Mozilla 1.8','Win 98+ / OSX.1+',1.8,'A'),(25,'Gecko','Seamonkey 1.1','Win 98+ / OSX.2+',1.8,'A'),(26,'Gecko','Epiphany 2.20','Gnome',1.8,'A'),(27,'Webkit','Safari 1.2','OSX.3',125.5,'A'),(28,'Webkit','Safari 1.3','OSX.3',312.8,'A'),(29,'Webkit','Safari 2.0','OSX.4+',419.3,'A'),(30,'Webkit','Safari 3.0','OSX.4+',522.1,'A'),(31,'Webkit','OmniWeb 5.5','OSX.4+',420,'A'),(32,'Webkit','iPod Touch / iPhone','iPod',420.1,'A'),(33,'Webkit','S60','S60',413,'A');
/*!40000 ALTER TABLE `ajax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `idFal` varchar(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('CT','Chemical Technology'),('EC','Economics'),('EEE','Electrical and Electronic Engineering'),('FD','Fashion Design'),('FL','Foreign Lanquages'),('GAM','Graphic Art and Media'),('IT','Information technology'),('ME','Mechaniacl Engineering'),('VEE','Vehicle and Energy Engineering');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_info` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `accType` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `joined` varchar(50) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
INSERT INTO `login_info` VALUES ('admin','admin',2,'nhoxfuu@gmail.com','Thai','Quang','','10-10-1995'),('duc','202cb962ac59075b964b07152d234b70',1,'duc@gmail.com','huy','duc','11/21/2016 16:27:01','13-11-2016'),('test1','321',1,'usertest1@gmail.com','Test','1','10-12/2015','06.12.2015');
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_result`
--

DROP TABLE IF EXISTS `my_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_result` (
  `examination_code` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `listening` int(11) NOT NULL,
  `reading` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date_made` varchar(45) NOT NULL,
  PRIMARY KEY (`examination_code`,`username`,`date_made`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_result`
--

LOCK TABLES `my_result` WRITE;
/*!40000 ALTER TABLE `my_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice_fulltest`
--

DROP TABLE IF EXISTS `practice_fulltest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `practice_fulltest` (
  `examination_code` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `date_added` varchar(45) NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY (`examination_code`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice_fulltest`
--

LOCK TABLES `practice_fulltest` WRITE;
/*!40000 ALTER TABLE `practice_fulltest` DISABLE KEYS */;
INSERT INTO `practice_fulltest` VALUES ('Test1','test1','10/12/2015',0),('Test1','user','10/12/2015',0);
/*!40000 ALTER TABLE `practice_fulltest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice_listen`
--

DROP TABLE IF EXISTS `practice_listen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `practice_listen` (
  `examination_code` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `date_added` varchar(45) NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY (`examination_code`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice_listen`
--

LOCK TABLES `practice_listen` WRITE;
/*!40000 ALTER TABLE `practice_listen` DISABLE KEYS */;
INSERT INTO `practice_listen` VALUES ('Listen1','user','10/10/2015',0),('Test1','test1','10/10/2015',0);
/*!40000 ALTER TABLE `practice_listen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice_read`
--

DROP TABLE IF EXISTS `practice_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `practice_read` (
  `examination_code` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `date_added` varchar(45) NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY (`examination_code`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice_read`
--

LOCK TABLES `practice_read` WRITE;
/*!40000 ALTER TABLE `practice_read` DISABLE KEYS */;
INSERT INTO `practice_read` VALUES ('Reading1','test1','12/11/2015 10:00:00',0),('Reading1','user','12/11/2015 10:00:00',0);
/*!40000 ALTER TABLE `practice_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `nameprivilege` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (1,'Administration'),(2,'Rector'),(3,'Dean'),(4,'Lecturer'),(5,'Persional office');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ieltsonline'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 17:34:48
