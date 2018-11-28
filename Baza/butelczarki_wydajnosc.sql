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
-- Table structure for table `wydajnosc`
--

DROP TABLE IF EXISTS `wydajnosc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wydajnosc` (
  `idwydajnosc` int(11) NOT NULL AUTO_INCREMENT,
  `butelaczarki_idbutelaczarki` int(11) NOT NULL,
  `forma_butelki_idforma_butelki` int(11) NOT NULL,
  `opakowanie_idopakowanie` int(11) NOT NULL,
  `wydajnosc` double NOT NULL,
  PRIMARY KEY (`idwydajnosc`),
  KEY `fk_wydajnosc_butelaczarki1_idx` (`butelaczarki_idbutelaczarki`),
  KEY `fk_wydajnosc_forma_butelki1_idx` (`forma_butelki_idforma_butelki`),
  KEY `fk_wydajnosc_opakowanie1_idx` (`opakowanie_idopakowanie`),
  CONSTRAINT `fk_wydajnosc_butelaczarki1` FOREIGN KEY (`butelaczarki_idbutelaczarki`) REFERENCES `butelczarki` (`idbutelaczarki`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wydajnosc_forma_butelki1` FOREIGN KEY (`forma_butelki_idforma_butelki`) REFERENCES `forma_butelki` (`idforma_butelki`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wydajnosc_opakowanie1` FOREIGN KEY (`opakowanie_idopakowanie`) REFERENCES `opakowanie` (`idopakowanie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wydajnosc`
--

LOCK TABLES `wydajnosc` WRITE;
/*!40000 ALTER TABLE `wydajnosc` DISABLE KEYS */;
INSERT INTO `wydajnosc` VALUES (1,1,1,1,45),(4,1,1,2,40),(5,2,4,3,100),(6,3,7,1,50);
/*!40000 ALTER TABLE `wydajnosc` ENABLE KEYS */;
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
