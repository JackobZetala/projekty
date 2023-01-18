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
-- Table structure for table `paczka`
--

DROP TABLE IF EXISTS `paczka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paczka` (
  `id_paczki` int NOT NULL AUTO_INCREMENT,
  `pojemnosc` float DEFAULT NULL,
  `typ_skladania` varchar(45) DEFAULT NULL,
  `id_przestrzeni` int NOT NULL,
  `ilosc` float NOT NULL,
  `id_prod_fiz` int NOT NULL,
  `pozycja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_paczki`),
  UNIQUE KEY `id_paczki_UNIQUE` (`id_paczki`),
  KEY `fk_paczka_przestrzen1_idx` (`id_przestrzeni`),
  KEY `fk_paczka_produkt_fizyczny1_idx` (`id_prod_fiz`),
  CONSTRAINT `fk_paczka_produkt_fizyczny1` FOREIGN KEY (`id_prod_fiz`) REFERENCES `produkt_fizyczny` (`id_prod_fiz`),
  CONSTRAINT `fk_paczka_przestrzen1` FOREIGN KEY (`id_przestrzeni`) REFERENCES `przestrzen` (`id_przestrzeni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paczka`
--

LOCK TABLES `paczka` WRITE;
/*!40000 ALTER TABLE `paczka` DISABLE KEYS */;
/*!40000 ALTER TABLE `paczka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18 12:51:31
