-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: butelczarki
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `butelczarki`
--

DROP TABLE IF EXISTS `butelczarki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `butelczarki` (
  `idbutelaczarki` int(11) NOT NULL AUTO_INCREMENT,
  `numer_butelczarki` varchar(11) NOT NULL,
  `liczba_glowic` int(11) NOT NULL,
  `liczba_wozkow` int(11) NOT NULL,
  PRIMARY KEY (`idbutelaczarki`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `butelczarki`
--

LOCK TABLES `butelczarki` WRITE;
/*!40000 ALTER TABLE `butelczarki` DISABLE KEYS */;
INSERT INTO `butelczarki` VALUES (1,'B1',2,2),(2,'B2',1,2),(3,'B3',2,2),(5,'B4',1,2),(6,'B5',1,1),(7,'B10',2,1),(8,'B11',1,2),(9,'B12',2,2),(10,'B13',2,2),(11,'B14',2,2),(12,'B15',4,1),(13,'B16',2,1),(14,'B17',2,2),(15,'B18',2,2);
/*!40000 ALTER TABLE `butelczarki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28 20:46:57
