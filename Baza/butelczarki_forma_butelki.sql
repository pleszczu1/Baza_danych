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
-- Table structure for table `forma_butelki`
--

DROP TABLE IF EXISTS `forma_butelki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_butelki` (
  `idforma_butelki` int(11) NOT NULL AUTO_INCREMENT,
  `numer_butelki` int(11) NOT NULL,
  `ilosc_form` int(11) NOT NULL,
  `pojemnosc` varchar(45) NOT NULL,
  `butelki_idbutelki` int(11) NOT NULL,
  `butelki_tworzywo_idtworzywo` int(11) NOT NULL,
  `butelki_gwint_idgwint` int(11) NOT NULL,
  PRIMARY KEY (`idforma_butelki`,`butelki_idbutelki`,`butelki_tworzywo_idtworzywo`,`butelki_gwint_idgwint`),
  KEY `fk_forma_butelki_butelki1_idx` (`butelki_idbutelki`,`butelki_tworzywo_idtworzywo`,`butelki_gwint_idgwint`),
  CONSTRAINT `fk_forma_butelki_butelki1` FOREIGN KEY (`butelki_idbutelki`, `butelki_tworzywo_idtworzywo`, `butelki_gwint_idgwint`) REFERENCES `butelki` (`idbutelki`, `tworzywo_idtworzywo`, `gwint_idgwint`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_butelki`
--

LOCK TABLES `forma_butelki` WRITE;
/*!40000 ALTER TABLE `forma_butelki` DISABLE KEYS */;
INSERT INTO `forma_butelki` VALUES (1,152,4,'1000',1,1,5),(2,163,2,'500',3,1,3),(4,263,2,'1000',4,1,6),(7,186,4,'500',6,1,3),(8,205,2,'150',7,5,1);
/*!40000 ALTER TABLE `forma_butelki` ENABLE KEYS */;
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
