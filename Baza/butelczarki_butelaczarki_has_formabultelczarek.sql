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
-- Table structure for table `butelaczarki_has_formabultelczarek`
--

DROP TABLE IF EXISTS `butelaczarki_has_formabultelczarek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `butelaczarki_has_formabultelczarek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `butelaczarki_idbutelaczarki` int(11) NOT NULL,
  `formabultelczarek_idformabultelczarek` int(11) NOT NULL,
  `opakowanie_idopakowanie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_butelaczarki_has_formabultelczarek_formabultelczarek1_idx` (`formabultelczarek_idformabultelczarek`),
  KEY `fk_butelaczarki_has_formabultelczarek_butelaczarki1_idx` (`butelaczarki_idbutelaczarki`),
  KEY `fk_butelaczarki_has_formabultelczarek_opakowanie1_idx` (`opakowanie_idopakowanie`),
  CONSTRAINT `fk_butelaczarki_has_formabultelczarek_butelaczarki1` FOREIGN KEY (`butelaczarki_idbutelaczarki`) REFERENCES `butelczarki` (`idbutelaczarki`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_butelaczarki_has_formabultelczarek_formabultelczarek1` FOREIGN KEY (`formabultelczarek_idformabultelczarek`) REFERENCES `forma_butelki` (`idforma_butelki`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_butelaczarki_has_formabultelczarek_opakowanie1` FOREIGN KEY (`opakowanie_idopakowanie`) REFERENCES `opakowanie` (`idopakowanie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `butelaczarki_has_formabultelczarek`
--

LOCK TABLES `butelaczarki_has_formabultelczarek` WRITE;
/*!40000 ALTER TABLE `butelaczarki_has_formabultelczarek` DISABLE KEYS */;
INSERT INTO `butelaczarki_has_formabultelczarek` VALUES (1,1,1,1),(2,1,2,1),(3,1,4,1),(4,2,7,1);
/*!40000 ALTER TABLE `butelaczarki_has_formabultelczarek` ENABLE KEYS */;
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
