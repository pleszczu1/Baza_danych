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
-- Table structure for table `produkcja`
--

DROP TABLE IF EXISTS `produkcja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produkcja` (
  `idprodukcja` int(11) NOT NULL AUTO_INCREMENT,
  `wydajnosc_teoretyczna` int(11) NOT NULL,
  `wydajnosc_rzeczywista` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  `brygada_idbrygada` int(11) NOT NULL,
  `butelaczarki_has_formabutelczarek_id` int(11) NOT NULL,
  `czas_pracy` double NOT NULL,
  PRIMARY KEY (`idprodukcja`),
  KEY `fk_produkcja_brygada1_idx` (`brygada_idbrygada`),
  KEY `fk_produkcja_butelaczarki_has_formabultelczarek1_idx` (`butelaczarki_has_formabutelczarek_id`),
  CONSTRAINT `fk_produkcja_brygada1` FOREIGN KEY (`brygada_idbrygada`) REFERENCES `brygada` (`idbrygada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_produkcja_butelaczarki_has_formabultelczarek1` FOREIGN KEY (`butelaczarki_has_formabutelczarek_id`) REFERENCES `butelaczarki_has_formabultelczarek` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkcja`
--

LOCK TABLES `produkcja` WRITE;
/*!40000 ALTER TABLE `produkcja` DISABLE KEYS */;
INSERT INTO `produkcja` VALUES (1,45,45,1,1,1,8),(2,45,50,1,1,1,8),(3,100,90,2,2,4,8);
/*!40000 ALTER TABLE `produkcja` ENABLE KEYS */;
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
