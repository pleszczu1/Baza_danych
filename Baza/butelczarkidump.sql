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
-- Table structure for table `brygada`
--

DROP TABLE IF EXISTS `brygada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brygada` (
  `idbrygada` int(11) NOT NULL AUTO_INCREMENT,
  `numer_brygady` varchar(45) NOT NULL,
  `lider_brygady` varchar(45) NOT NULL,
  PRIMARY KEY (`idbrygada`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brygada`
--

LOCK TABLES `brygada` WRITE;
/*!40000 ALTER TABLE `brygada` DISABLE KEYS */;
INSERT INTO `brygada` VALUES (1,'I','Kowalska'),(2,'II','Nowak'),(3,'III','Nowakowska'),(4,'IV','Malinowska');
/*!40000 ALTER TABLE `brygada` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `butelczarki`
--

LOCK TABLES `butelczarki` WRITE;
/*!40000 ALTER TABLE `butelczarki` DISABLE KEYS */;
INSERT INTO `butelczarki` VALUES (1,'B1',2,2),(2,'B2',1,2),(3,'B3',2,2),(5,'B4',1,2),(6,'B5',1,1),(7,'B10',2,1),(8,'B11',1,2),(9,'B12',2,2),(10,'B13',2,2),(11,'B14',2,2),(12,'B15',4,1),(13,'B16',2,1),(14,'B17',2,2),(15,'B18',2,2);
/*!40000 ALTER TABLE `butelczarki` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `gwint`
--

DROP TABLE IF EXISTS `gwint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gwint` (
  `idgwint` int(11) NOT NULL AUTO_INCREMENT,
  `rodzaj_gwintu` varchar(45) NOT NULL,
  `srednica` varchar(45) NOT NULL,
  PRIMARY KEY (`idgwint`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gwint`
--

LOCK TABLES `gwint` WRITE;
/*!40000 ALTER TABLE `gwint` DISABLE KEYS */;
INSERT INTO `gwint` VALUES (1,'24/410','24'),(2,'24/415','24'),(3,'28/410','28'),(4,'28/415','28'),(5,'N28','28'),(6,'FI50','50'),(7,'32/410','32');
/*!40000 ALTER TABLE `gwint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilosc_w_opakowaniu`
--

DROP TABLE IF EXISTS `ilosc_w_opakowaniu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ilosc_w_opakowaniu` (
  `idilosc_w_opakowaniu` int(11) NOT NULL AUTO_INCREMENT,
  `forma_butelki_idforma_butelki` int(11) NOT NULL,
  `opakowanie_idopakowanie` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL,
  PRIMARY KEY (`idilosc_w_opakowaniu`),
  KEY `fk_ilosc_w_opakowaniu_forma_butelki1_idx` (`forma_butelki_idforma_butelki`),
  KEY `fk_ilosc_w_opakowaniu_opakowanie1_idx` (`opakowanie_idopakowanie`),
  CONSTRAINT `fk_ilosc_w_opakowaniu_forma_butelki1` FOREIGN KEY (`forma_butelki_idforma_butelki`) REFERENCES `forma_butelki` (`idforma_butelki`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ilosc_w_opakowaniu_opakowanie1` FOREIGN KEY (`opakowanie_idopakowanie`) REFERENCES `opakowanie` (`idopakowanie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilosc_w_opakowaniu`
--

LOCK TABLES `ilosc_w_opakowaniu` WRITE;
/*!40000 ALTER TABLE `ilosc_w_opakowaniu` DISABLE KEYS */;
INSERT INTO `ilosc_w_opakowaniu` VALUES (1,1,2,40),(2,4,3,60),(3,2,1,135),(4,8,1,357);
/*!40000 ALTER TABLE `ilosc_w_opakowaniu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logowanie`
--

DROP TABLE IF EXISTS `logowanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logowanie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `haslo` varchar(45) NOT NULL,
  `uprawnienia` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logowanie`
--

LOCK TABLES `logowanie` WRITE;
/*!40000 ALTER TABLE `logowanie` DISABLE KEYS */;
INSERT INTO `logowanie` VALUES (1,'Piotr','Leszcz','root','root','1'),(2,'Adam','Kowla','kowal','kowal','1'),(3,'Ala','Kowalska','kowal','kowal','2'),(4,'Piotr','Kowalski','kowalski','kowalski','2'),(5,'Ola','Mak','mak','mak','2'),(6,'Ala','Kowalska','kowal','kowla','2');
/*!40000 ALTER TABLE `logowanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opakowanie`
--

DROP TABLE IF EXISTS `opakowanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opakowanie` (
  `idopakowanie` int(11) NOT NULL AUTO_INCREMENT,
  `rodzaj_opakowania` varchar(50) NOT NULL,
  PRIMARY KEY (`idopakowanie`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opakowanie`
--

LOCK TABLES `opakowanie` WRITE;
/*!40000 ALTER TABLE `opakowanie` DISABLE KEYS */;
INSERT INTO `opakowanie` VALUES (1,'karton'),(2,'worek'),(3,'tacka'),(4,'paleta'),(5,'bigbag');
/*!40000 ALTER TABLE `opakowanie` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tworzywo`
--

DROP TABLE IF EXISTS `tworzywo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tworzywo` (
  `idtworzywo` int(11) NOT NULL AUTO_INCREMENT,
  `rodzaj_tworzywa` varchar(45) NOT NULL,
  `nazwa_tworzywa` varchar(45) NOT NULL,
  PRIMARY KEY (`idtworzywo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tworzywo`
--

LOCK TABLES `tworzywo` WRITE;
/*!40000 ALTER TABLE `tworzywo` DISABLE KEYS */;
INSERT INTO `tworzywo` VALUES (1,'HDPE','6000B'),(2,'PVC','PVC'),(3,'LDPE','FGNX'),(4,'PETG','PETG'),(5,'PP','PP'),(6,'LDPE','6652FG');
/*!40000 ALTER TABLE `tworzywo` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-12-02  5:10:11
