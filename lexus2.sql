-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: lexus
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Current Database: `lexus`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lexus` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lexus`;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `carID` int(11) NOT NULL,
  `carName` varchar(2) DEFAULT NULL,
  `carNumber` int(11) DEFAULT NULL,
  `carDescription` int(3) DEFAULT NULL,
  PRIMARY KEY (`carID`),
  KEY `carDescription` (`carDescription`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`carDescription`) REFERENCES `car_description` (`descriptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'ES',300,1),(2,'ES',350,1),(3,'IS',250,2),(4,'IS',350,2),(5,'GS',350,3),(6,'CT',200,4),(7,'RX',350,5),(8,'GX',450,6),(9,'LX',450,7);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_description`
--

DROP TABLE IF EXISTS `car_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_description` (
  `descriptionID` int(3) NOT NULL,
  `carDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`descriptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_description`
--

LOCK TABLES `car_description` WRITE;
/*!40000 ALTER TABLE `car_description` DISABLE KEYS */;
INSERT INTO `car_description` VALUES (1,'Midsized comfort sedan designed for those who frequently have passengers.'),(2,'\"Compact sports sedan for those who love style'),(3,'Larger sports sedan for guys who have a need for speed and performance.'),(4,'A smaller hybrid for commuters who battle city traffic. '),(5,'A dependable midsized crossover vehicle for any sized family.'),(6,'The midsized SUV with a third row for larger families.'),(7,'The largest luxury crossover designed for comfort on long trips.');
/*!40000 ALTER TABLE `car_description` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-11  0:09:00
