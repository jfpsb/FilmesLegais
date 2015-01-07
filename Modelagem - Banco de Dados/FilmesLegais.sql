CREATE DATABASE  IF NOT EXISTS `filmeslegais` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `filmeslegais`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: filmeslegais
-- ------------------------------------------------------
-- Server version	5.5.30

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
-- Table structure for table `bilheteria`
--

DROP TABLE IF EXISTS `bilheteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilheteria` (
  `idbilheteria` int(11) NOT NULL AUTO_INCREMENT,
  `idsala` int(11) NOT NULL,
  `idfilme` int(11) NOT NULL,
  `idpreco` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`idbilheteria`,`idsala`,`idpreco`,`idfilme`),
  KEY `fk_bilheteria_sala1_idx` (`idsala`),
  KEY `fk_bilheteria_filme1_idx` (`idfilme`),
  KEY `fk_bilheteria_preco1_idx` (`idpreco`),
  CONSTRAINT `fk_bilheteria_sala1` FOREIGN KEY (`idsala`) REFERENCES `sala` (`idsala`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bilheteria_filme1` FOREIGN KEY (`idfilme`) REFERENCES `filme` (`idfilme`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bilheteria_preco1` FOREIGN KEY (`idpreco`) REFERENCES `preco` (`idpreco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bilheteria`
--

LOCK TABLES `bilheteria` WRITE;
/*!40000 ALTER TABLE `bilheteria` DISABLE KEYS */;
INSERT INTO `bilheteria` (`idbilheteria`, `idsala`, `idfilme`, `idpreco`, `data`) VALUES (1,1,1,5,'2015-01-07 09:12:56'),(2,2,2,5,'2015-01-07 09:12:56'),(3,3,3,15,'2015-01-07 09:12:56'),(4,4,1,5,'2015-01-07 09:12:56'),(5,5,1,5,'2015-01-07 09:12:56'),(6,6,3,5,'2015-01-07 09:12:56'),(7,7,2,5,'2015-01-07 09:12:56'),(8,8,1,30,'2015-01-07 09:12:56'),(9,9,3,30,'2015-01-07 09:12:56'),(10,10,1,30,'2015-01-07 09:12:56'),(11,11,1,30,'2015-01-07 09:12:56'),(12,12,2,30,'2015-01-07 09:12:56');
/*!40000 ALTER TABLE `bilheteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filial`
--

DROP TABLE IF EXISTS `filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filial` (
  `idfilial` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idfilial`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filial`
--

LOCK TABLES `filial` WRITE;
/*!40000 ALTER TABLE `filial` DISABLE KEYS */;
INSERT INTO `filial` (`idfilial`, `estado`, `descricao`) VALUES (1,'Maranhão','Filial no Maranhão'),(2,'São Paulo','Filial em São Paulo'),(3,'Sergipe','Filial em Sergipe');
/*!40000 ALTER TABLE `filial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme` (
  `idfilme` int(11) NOT NULL AUTO_INCREMENT,
  `idgenero` int(11) NOT NULL,
  `filme` varchar(45) DEFAULT NULL,
  `sinopse` varchar(200) DEFAULT NULL,
  `cartaz` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idfilme`,`idgenero`),
  KEY `fk_filme_genero1_idx` (`idgenero`),
  CONSTRAINT `fk_filme_genero1` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` (`idfilme`, `idgenero`, `filme`, `sinopse`, `cartaz`) VALUES (1,1,'Duro de Matar','Filme de ação num prédio',1),(2,8,'Interstellar','Filme de ficção cient´ífica do Nolan',1),(3,8,'The Matrix','Ficção científica verde',1);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` (`idgenero`, `genero`) VALUES (1,'Ação'),(2,'Animação'),(3,'Aventura'),(4,'Comédia'),(5,'Comédia Romântica'),(6,'Drama'),(7,'Fantasia'),(8,'Ficção Científica'),(9,'Guerra'),(10,'Musical'),(11,'Terror'),(12,'Suspense');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preco`
--

DROP TABLE IF EXISTS `preco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preco` (
  `idpreco` int(11) NOT NULL AUTO_INCREMENT,
  `preco` double DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpreco`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preco`
--

LOCK TABLES `preco` WRITE;
/*!40000 ALTER TABLE `preco` DISABLE KEYS */;
INSERT INTO `preco` (`idpreco`, `preco`, `descricao`) VALUES (5,5,'meia-normal'),(10,10,'normal'),(15,15,'meia-3D'),(30,30,'3D');
/*!40000 ALTER TABLE `preco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sala` (
  `idsala` int(11) NOT NULL AUTO_INCREMENT,
  `idfilial` int(11) NOT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsala`,`idfilial`),
  KEY `fk_sala_filial1_idx` (`idfilial`),
  CONSTRAINT `fk_sala_filial1` FOREIGN KEY (`idfilial`) REFERENCES `filial` (`idfilial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` (`idsala`, `idfilial`, `cidade`) VALUES (1,1,'São Luís'),(2,1,'Imperatriz'),(3,1,'Zé Doca'),(4,1,'São Domingos'),(5,2,'São Paulo'),(6,2,'Ribeirão Preto'),(7,2,'Santos'),(8,2,'Prateleira'),(9,3,'Sergipana'),(10,3,'Casados'),(11,3,'Piepebas'),(12,3,'Afonso Lopes');
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-07  9:33:47
