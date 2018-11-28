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
-- Table structure for table `butelki`
--

DROP TABLE IF EXISTS `butelki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `butelki` (
  `idbutelki` int(11) NOT NULL AUTO_INCREMENT,
  `tworzywo_idtworzywo` int(11) NOT NULL,
  `gwint_idgwint` int(11) NOT NULL,
  `waga` varchar(45) NOT NULL,
  `numer_katalogowy` int(11) NOT NULL,
  `pojemnosc` int(11) NOT NULL,
  `ilosc_w_opakowaniu` varchar(45) NOT NULL,
  PRIMARY KEY (`idbutelki`,`tworzywo_idtworzywo`,`gwint_idgwint`),
  KEY `fk_butelki_tworzywo1_idx` (`tworzywo_idtworzywo`),
  KEY `fk_butelki_gwint1_idx` (`gwint_idgwint`),
  CONSTRAINT `fk_butelki_gwint1` FOREIGN KEY (`gwint_idgwint`) REFERENCES `gwint` (`idgwint`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_butelki_tworzywo1` FOREIGN KEY (`tworzywo_idtworzywo`) REFERENCES `tworzywo` (`idtworzywo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `butelki`
--

LOCK TABLES `butelki` WRITE;
/*!40000 ALTER TABLE `butelki` DISABLE KEYS */;
INSERT INTO `butelki` VALUES (1,1,5,'60',152,1000,'40'),(3,1,3,'40',163,500,'135'),(4,1,6,'80',263,1000,'80'),(5,1,6,'100',263,1000,'60'),(6,1,3,'40',186,500,'70'),(7,5,1,'20',205,150,'357');
/*!40000 ALTER TABLE `butelki` ENABLE KEYS */;
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
