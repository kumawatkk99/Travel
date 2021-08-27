CREATE DATABASE  IF NOT EXISTS `ttms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ttms`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: ttms
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `routemaster`
--

DROP TABLE IF EXISTS `routemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routemaster` (
  `RouteId` varchar(20) NOT NULL DEFAULT '',
  `rFrom` varchar(50) NOT NULL DEFAULT '',
  `rTo` varchar(50) NOT NULL DEFAULT '',
  `TravelsId` varchar(20) NOT NULL DEFAULT '',
  `BusId` varchar(20) NOT NULL DEFAULT '',
  `Departure` time DEFAULT NULL,
  `Arrival` time DEFAULT NULL,
  `Fare` int NOT NULL DEFAULT '0',
  `JDate` date DEFAULT NULL,
  `Availability` int DEFAULT NULL,
  `incId` int NOT NULL,
  PRIMARY KEY (`RouteId`),
  UNIQUE KEY `incId_UNIQUE` (`incId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routemaster`
--

LOCK TABLES `routemaster` WRITE;
/*!40000 ALTER TABLE `routemaster` DISABLE KEYS */;
INSERT INTO `routemaster` VALUES ('R1','Hyderabad','Nellore','T2','B1','11:00:00','23:00:00',350,'2009-07-25',36,1),('R2','Hyderabad','Bangalore','T2','B3','21:00:00','09:00:00',600,'2008-11-27',25,2),('R3','Hyderabad','Pune','T3','B3','21:00:00','09:00:00',600,'2008-11-27',40,3),('R4','Hyderabad','Chennai','T1','B1','19:00:00','08:00:00',450,'2008-11-27',40,4),('R5','Hyderabad','Chennai','T1','B2','18:00:00','19:00:00',450,'2008-11-27',40,5),('R6','Hyderabad','Nellore','T2','B3','08:00:00','08:30:00',600,'2008-11-27',40,6),('R7','Hyderabad','Ongole','T2','B3','11:00:00','19:00:00',234,'2008-11-27',40,7),('R8','Hyderabad','Bhopal','T5','B8','11:11:00','11:11:00',222,'2021-03-11',40,8);
/*!40000 ALTER TABLE `routemaster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-27 21:51:55
