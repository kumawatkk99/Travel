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
-- Table structure for table `customermaster`
--

DROP TABLE IF EXISTS `customermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customermaster` (
  `CustomerId` varchar(20) NOT NULL DEFAULT '',
  `CustomerName` varchar(80) NOT NULL DEFAULT '',
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Address` tinytext NOT NULL,
  `Location` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `incId` int NOT NULL,
  UNIQUE KEY `incId_UNIQUE` (`incId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customermaster`
--

LOCK TABLES `customermaster` WRITE;
/*!40000 ALTER TABLE `customermaster` DISABLE KEYS */;
INSERT INTO `customermaster` VALUES ('C2','srinivas','9999999999','Ameerpet','Hyderabad','kalyan@gmail.com','Male',1),('C3','Raj','9909909900','Dilshuknagar','Hyderabad','Raj001@yahoo.com','Male',2),('C4','Rani','9440944000','Ranigunz','Hyderabad','Rani07@gmail.com','Female',3),('C5','Rahul','9999999999','Bangalore','Hyderabad','RahulM@rediff.com','Male',4),('C6','Suresh','9999999990','Gachibowli','Hyderabad','Suresh@zapakmail.com','Male',5),('C7','kk','9888888888','ghjfkjfkjf','jhi','kkkkk@gmail.com','Male',6),('C8','kk','9888888888','ghjfkjfkjf','jhi','kkkkk@gmail.com','Male',7),('C9','null',NULL,'null','null','null','null',8),('C9','asf','2321432','fgdf','dfgsdf','zvvd@gmail.com','Male',9),('C10','asf','2321432','fgdf','dfgsdf','zvvd@gmail.com','Male',10),('C11','kk','12','kk','kk','kkkkk@gmail.com','Male',11);
/*!40000 ALTER TABLE `customermaster` ENABLE KEYS */;
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
