-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Profiles
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `f_name` varchar(15) NOT NULL,
  `l_name` varchar(15) NOT NULL,
  `about` text,
  `p_about` text,
  `location` text,
  `p_location` text,
  `contact` text,
  `p_contact` text,
  `education` text,
  `p_education` text,
  `job` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test','test','test','test','','','','','','','','','None'),(2,'golf','1234','golf','golf','1\r\n				  ','','1\r\n                                  ','','1 \r\n				  ','','1\r\n				  ','','Employee'),(3,'111','111','aa','aa','1\r\n				  ','','1\r\n                                  ','','1 \r\n				  ','','1\r\n				  ','','Manager'),(4,'gg','gg','Worachart','Chaithong','w\r\n				  ','','w\r\n                                  ','','w \r\n				  ','','w\r\n				  ','','Employee'),(5,'5678','5678','Worachart','Chaithong','Test\r\n				  ','','Test\r\n                                  ','','Test \r\n				  ','','Test\r\n				  ','','Manager'),(6,'war','war','Worachart','Chaithong','1\r\n				  ','','2\r\n                                  ','','3 \r\n				  ','','4\r\n				  ','','Employee'),(7,'jib','jib','123','123','12\r\n				  ','','2\r\n                                  ','','3 \r\n				  ','','4\r\n				  ','','Manager'),(8,'golf123','1234','Worachart','Chaithong','1111\r\n				  ','','2222\r\n                                  ','','3333 \r\n				  ','','4444\r\n				  ','','Employee'),(9,'','','','','\r\n				  ','','\r\n                                  ','',' \r\n				  ','','\r\n				  ','','Manager'),(10,'golf88','1234','Worachart','Chaithong','111\r\n				  ','','222\r\n                                  ','','333 \r\n				  ','','444\r\n				  ','','Employee'),(11,'golfbadly','1234','Worachart','Chaithong','My name is Worachart Chaithong.I am 22 years old.\r\nI study in PSU Phuket Major Software Engineering.\r\n				  ','','Current City: Huaiyot, Trang\r\nHometown: Huaiyot \r\nNow: Bangkok\r\n                                  ','','Phone: 0856543734\r\nEmail: worachart.golf@gmail.com  \r\n				  ','','University: Prince of songkla university\r\nFaculty: Technology&Environment\r\nMajor: Software Engineering \r\n				  ','','Manager'),(12,'chibi','chibi','Kroynattaorn','Angyarn','Test1\r\n				  ','','Test2\r\n                                  ','','Test3 \r\n				  ','','Test4\r\n				  ','','Employee'),(13,'qwe','qwe','Worachart','C','golf\r\n				  ','','Bangkok\r\n                                  ','','facebook \r\n				  ','','PSU Phuket\r\n				  ','','Employee'),(14,'pla','xplink','Pla','xplink','pla\r\n				  ','','see me\r\n                                  ','','xplink \r\n				  ','','ma\r\n				  ','','None');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-18 14:41:33
