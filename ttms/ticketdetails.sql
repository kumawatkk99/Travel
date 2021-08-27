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
-- Table structure for table `ticketdetails`
--

DROP TABLE IF EXISTS `ticketdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticketdetails` (
  `incId` int NOT NULL AUTO_INCREMENT,
  `TicketId` varchar(20) NOT NULL DEFAULT '',
  `RouteId` varchar(20) NOT NULL DEFAULT '',
  `CustomerId` varchar(20) NOT NULL DEFAULT '',
  `rFrom` varchar(50) DEFAULT NULL,
  `rTo` varchar(50) DEFAULT NULL,
  `JourneyDate` date NOT NULL DEFAULT '0000-00-00',
  `StartTime` time DEFAULT NULL,
  `ReachTime` time DEFAULT NULL,
  `Seats` varchar(255) DEFAULT NULL,
  `BoardingPoint` varchar(50) DEFAULT NULL,
  `NetAmount` int DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `PaymentId` varchar(20) DEFAULT NULL,
  `BusId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TicketId`),
  UNIQUE KEY `incId_UNIQUE` (`incId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketdetails`
--

LOCK TABLES `ticketdetails` WRITE;
/*!40000 ALTER TABLE `ticketdetails` DISABLE KEYS */;
INSERT INTO `ticketdetails` VALUES (1,'T-1','R2','','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','A10','Ameerpet',600,'Booked','','B3'),(14,'T-14','R2','','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','Check at Boarding Time','KPHB',1200,'Progress','','B3'),(15,'T-15','R2','','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','Check at Boarding Time','KPHB',1200,'Progress','','B3'),(16,'T-16','R2','','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','Check at Boarding Time','KPHB',1200,'Progress','','B3'),(17,'T-17','R2','C10','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','Check at Boarding Time','KPHB',1200,'Booked','P10','B3'),(18,'T-18','R1','C11','Hyderabad','Nellore','2009-07-25','11:00:00','23:00:00','Check at Boarding Time','Ameerpet',350,'Booked','P11','B1'),(6,'T-2','R2','','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','','Ameerpet',350,'Booked','','B2'),(4,'T-3','R1','C1','Hyderabad','Nellore','2009-07-25','11:00:00','23:00:00','A6','Ameerpet',350,'Booked','P1','B1'),(3,'T-4','R2','C10','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','Check at Boarding Time','Ameerpet',1800,'Booked','P8','B3'),(5,'T-5','R2','','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','2','Ameerpet',600,'Progress','','B3'),(13,'T-7','R2','','Hyderabad','Bangalore','2008-11-27','21:00:00','09:00:00','Check at Boarding Time','KPHB',1200,'Progress','','B3');
/*!40000 ALTER TABLE `ticketdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-27 21:51:56
