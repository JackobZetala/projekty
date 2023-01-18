-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stolarnia_magazyn
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produkt_opisowy`
--

DROP TABLE IF EXISTS `produkt_opisowy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produkt_opisowy` (
  `id_prod_opis` int NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(90) DEFAULT NULL,
  `Jednostka_pods` varchar(45) DEFAULT NULL,
  `Jednostki_w_sztuce` varchar(45) DEFAULT NULL,
  `Opis` varchar(300) DEFAULT NULL,
  `Typ` varchar(45) DEFAULT NULL,
  `Producent` varchar(45) DEFAULT NULL,
  `Podtyp` varchar(45) DEFAULT NULL,
  `Material` varchar(45) DEFAULT NULL,
  `Kolor` varchar(45) DEFAULT NULL,
  `Dlugosc_nominalna` varchar(45) DEFAULT NULL,
  `Szerokosc_nominalna` varchar(45) DEFAULT NULL,
  `Grubosc` varchar(45) DEFAULT NULL,
  `Struktura` varchar(45) DEFAULT NULL,
  `Gradacja` varchar(45) DEFAULT NULL,
  `Srednica` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_prod_opis`),
  UNIQUE KEY `id_prod_opis_UNIQUE` (`id_prod_opis`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkt_opisowy`
--

LOCK TABLES `produkt_opisowy` WRITE;
/*!40000 ALTER TABLE `produkt_opisowy` DISABLE KEYS */;
INSERT INTO `produkt_opisowy` VALUES (1,'1','','','','','','','','','','','','','',''),(2,'ewqe','eqwe','q','','','','','','','','','','','','');
/*!40000 ALTER TABLE `produkt_opisowy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18 12:51:32
