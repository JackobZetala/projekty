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
-- Table structure for table `dostawa`
--

DROP TABLE IF EXISTS `dostawa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dostawa` (
  `id_dostawy` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `przewidywany_termin` date DEFAULT NULL,
  `id_magazynu` int NOT NULL,
  `id_dostawcy` int NOT NULL,
  PRIMARY KEY (`id_dostawy`),
  UNIQUE KEY `id_dostawy_UNIQUE` (`id_dostawy`),
  KEY `fk_dostawa_magazyn1_idx` (`id_magazynu`),
  KEY `fk_dostawa_dostawca1_idx` (`id_dostawcy`),
  CONSTRAINT `fk_dostawa_dostawca1` FOREIGN KEY (`id_dostawcy`) REFERENCES `dostawca` (`id_dostawcy`),
  CONSTRAINT `fk_dostawa_magazyn1` FOREIGN KEY (`id_magazynu`) REFERENCES `magazyn` (`id_magazynu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dostawa`
--

LOCK TABLES `dostawa` WRITE;
/*!40000 ALTER TABLE `dostawa` DISABLE KEYS */;
/*!40000 ALTER TABLE `dostawa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dostawca`
--

DROP TABLE IF EXISTS `dostawca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dostawca` (
  `id_dostawcy` int NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Adres_miasto` varchar(45) DEFAULT NULL,
  `Adres_ulica` varchar(45) DEFAULT NULL,
  `Adres_nr` int DEFAULT NULL,
  PRIMARY KEY (`id_dostawcy`),
  UNIQUE KEY `id_dostawcy_UNIQUE` (`id_dostawcy`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dostawca`
--

LOCK TABLES `dostawca` WRITE;
/*!40000 ALTER TABLE `dostawca` DISABLE KEYS */;
INSERT INTO `dostawca` VALUES (1,'12','213','213','121',1),(2,'fds','we','w2','23',12);
/*!40000 ALTER TABLE `dostawca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazyn`
--

DROP TABLE IF EXISTS `magazyn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazyn` (
  `id_magazynu` int NOT NULL AUTO_INCREMENT,
  `lokalizacja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_magazynu`),
  UNIQUE KEY `id_magazynu_UNIQUE` (`id_magazynu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazyn`
--

LOCK TABLES `magazyn` WRITE;
/*!40000 ALTER TABLE `magazyn` DISABLE KEYS */;
/*!40000 ALTER TABLE `magazyn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta`
--

DROP TABLE IF EXISTS `oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oferta` (
  `kod_oferty` int NOT NULL AUTO_INCREMENT,
  `cena_za_jedn` float NOT NULL,
  `cena_za_szt` float NOT NULL,
  `czas_realizacji_w_dniach` int DEFAULT NULL,
  `id_dostawcy` int NOT NULL,
  PRIMARY KEY (`kod_oferty`),
  UNIQUE KEY `kod_oferty_UNIQUE` (`kod_oferty`),
  KEY `fk_oferta_dostawca1_idx` (`id_dostawcy`),
  CONSTRAINT `fk_oferta_dostawca1` FOREIGN KEY (`id_dostawcy`) REFERENCES `dostawca` (`id_dostawcy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta`
--

LOCK TABLES `oferta` WRITE;
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `produkt_fizyczny`
--

DROP TABLE IF EXISTS `produkt_fizyczny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produkt_fizyczny` (
  `id_prod_fiz` int NOT NULL AUTO_INCREMENT,
  `Stan` float DEFAULT NULL,
  `id_projekt` int NOT NULL,
  PRIMARY KEY (`id_prod_fiz`),
  UNIQUE KEY `id_prod_fiz_UNIQUE` (`id_prod_fiz`),
  KEY `fk_produkt_fizyczny_projekt1_idx` (`id_projekt`),
  CONSTRAINT `fk_produkt_fizyczny_projekt1` FOREIGN KEY (`id_projekt`) REFERENCES `projekt` (`id_projekt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkt_fizyczny`
--

LOCK TABLES `produkt_fizyczny` WRITE;
/*!40000 ALTER TABLE `produkt_fizyczny` DISABLE KEYS */;
/*!40000 ALTER TABLE `produkt_fizyczny` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `projekt`
--

DROP TABLE IF EXISTS `projekt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt` (
  `id_projekt` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_projekt`),
  UNIQUE KEY `id_projekt_UNIQUE` (`id_projekt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt`
--

LOCK TABLES `projekt` WRITE;
/*!40000 ALTER TABLE `projekt` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przestrzen`
--

DROP TABLE IF EXISTS `przestrzen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `przestrzen` (
  `id_przestrzeni` int NOT NULL AUTO_INCREMENT,
  `kategoria` varchar(45) DEFAULT NULL,
  `nazwa` varchar(45) NOT NULL,
  `polozenie_x` int DEFAULT NULL,
  `max_ilosc` int DEFAULT NULL,
  `id_magazynu` int NOT NULL,
  `polozenie_y` int DEFAULT NULL,
  PRIMARY KEY (`id_przestrzeni`),
  UNIQUE KEY `id_przestrzeni_UNIQUE` (`id_przestrzeni`),
  KEY `fk_przestrzen_magazyn1_idx` (`id_magazynu`),
  CONSTRAINT `fk_przestrzen_magazyn1` FOREIGN KEY (`id_magazynu`) REFERENCES `magazyn` (`id_magazynu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przestrzen`
--

LOCK TABLES `przestrzen` WRITE;
/*!40000 ALTER TABLE `przestrzen` DISABLE KEYS */;
/*!40000 ALTER TABLE `przestrzen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_odpowiada`
--

DROP TABLE IF EXISTS `rel_odpowiada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_odpowiada` (
  `id_prod_fiz` int NOT NULL,
  `id_prod_opis` int NOT NULL,
  KEY `fk_rel_odpowiada_produkt_opisowy1_idx` (`id_prod_opis`),
  KEY `fk_rel_odpowiada_produkt_fizyczny_idx` (`id_prod_fiz`),
  CONSTRAINT `fk_rel_odpowiada_produkt_fizyczny` FOREIGN KEY (`id_prod_fiz`) REFERENCES `produkt_fizyczny` (`id_prod_fiz`),
  CONSTRAINT `fk_rel_odpowiada_produkt_opisowy1` FOREIGN KEY (`id_prod_opis`) REFERENCES `produkt_opisowy` (`id_prod_opis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_odpowiada`
--

LOCK TABLES `rel_odpowiada` WRITE;
/*!40000 ALTER TABLE `rel_odpowiada` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_odpowiada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_oferuje`
--

DROP TABLE IF EXISTS `rel_oferuje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_oferuje` (
  `kod_oferty` int NOT NULL,
  `id_prod_opis` int NOT NULL,
  `ilosc` int DEFAULT NULL,
  KEY `fk_rel_oferuje_oferta1_idx` (`kod_oferty`),
  KEY `fk_rel_oferuje_produkt_opisowy1_idx` (`id_prod_opis`),
  CONSTRAINT `fk_rel_oferuje_oferta1` FOREIGN KEY (`kod_oferty`) REFERENCES `oferta` (`kod_oferty`),
  CONSTRAINT `fk_rel_oferuje_produkt_opisowy1` FOREIGN KEY (`id_prod_opis`) REFERENCES `produkt_opisowy` (`id_prod_opis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_oferuje`
--

LOCK TABLES `rel_oferuje` WRITE;
/*!40000 ALTER TABLE `rel_oferuje` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_oferuje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_potrzebuje`
--

DROP TABLE IF EXISTS `rel_potrzebuje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_potrzebuje` (
  `id_projekt` int NOT NULL,
  `id_prod_opis` int NOT NULL,
  KEY `fk_rel_potrzebuje_produkt_opisowy1_idx` (`id_prod_opis`),
  KEY `fk_rel_potrzebuje_projekt_idx` (`id_projekt`),
  CONSTRAINT `fk_rel_potrzebuje_produkt_opisowy1` FOREIGN KEY (`id_prod_opis`) REFERENCES `produkt_opisowy` (`id_prod_opis`),
  CONSTRAINT `fk_rel_potrzebuje_projekt` FOREIGN KEY (`id_projekt`) REFERENCES `projekt` (`id_projekt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_potrzebuje`
--

LOCK TABLES `rel_potrzebuje` WRITE;
/*!40000 ALTER TABLE `rel_potrzebuje` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_potrzebuje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_sklada_sie`
--

DROP TABLE IF EXISTS `rel_sklada_sie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_sklada_sie` (
  `id_zamowienie` int NOT NULL,
  `id_prod_opis` int NOT NULL,
  `ilosc` int DEFAULT NULL,
  KEY `fk_rel_sklada_sie_zamowienie1_idx` (`id_zamowienie`),
  KEY `fk_rel_sklada_sie_produkt_opisowy1_idx` (`id_prod_opis`),
  CONSTRAINT `fk_rel_sklada_sie_produkt_opisowy1` FOREIGN KEY (`id_prod_opis`) REFERENCES `produkt_opisowy` (`id_prod_opis`),
  CONSTRAINT `fk_rel_sklada_sie_zamowienie1` FOREIGN KEY (`id_zamowienie`) REFERENCES `zamowienie` (`id_zamowienie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_sklada_sie`
--

LOCK TABLES `rel_sklada_sie` WRITE;
/*!40000 ALTER TABLE `rel_sklada_sie` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_sklada_sie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_zawiera`
--

DROP TABLE IF EXISTS `rel_zawiera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_zawiera` (
  `id_dostawy` int NOT NULL,
  `id_paczki` int NOT NULL,
  KEY `fk_rel_zawiera_dostawa1_idx` (`id_dostawy`),
  KEY `fk_rel_zawiera_paczka1_idx` (`id_paczki`),
  CONSTRAINT `fk_rel_zawiera_dostawa1` FOREIGN KEY (`id_dostawy`) REFERENCES `dostawa` (`id_dostawy`),
  CONSTRAINT `fk_rel_zawiera_paczka1` FOREIGN KEY (`id_paczki`) REFERENCES `paczka` (`id_paczki`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_zawiera`
--

LOCK TABLES `rel_zawiera` WRITE;
/*!40000 ALTER TABLE `rel_zawiera` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_zawiera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uzytkownik`
--

DROP TABLE IF EXISTS `uzytkownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uzytkownik` (
  `nazwa` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `rola` varchar(45) DEFAULT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nazwa`),
  UNIQUE KEY `nazwa_UNIQUE` (`nazwa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uzytkownik`
--

LOCK TABLES `uzytkownik` WRITE;
/*!40000 ALTER TABLE `uzytkownik` DISABLE KEYS */;
INSERT INTO `uzytkownik` VALUES (1,'1','1','1','1');
/*!40000 ALTER TABLE `uzytkownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zamowienie`
--

DROP TABLE IF EXISTS `zamowienie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zamowienie` (
  `id_zamowienie` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `id_dostawcy` int NOT NULL,
  PRIMARY KEY (`id_zamowienie`),
  UNIQUE KEY `id_zamowienie_UNIQUE` (`id_zamowienie`),
  KEY `fk_zamowienie_dostawca1_idx` (`id_dostawcy`),
  CONSTRAINT `fk_zamowienie_dostawca1` FOREIGN KEY (`id_dostawcy`) REFERENCES `dostawca` (`id_dostawcy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienie`
--

LOCK TABLES `zamowienie` WRITE;
/*!40000 ALTER TABLE `zamowienie` DISABLE KEYS */;
/*!40000 ALTER TABLE `zamowienie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18 12:46:40
