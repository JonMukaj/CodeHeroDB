CREATE DATABASE  IF NOT EXISTS `main` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `main`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: main
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `MembershipID` int NOT NULL AUTO_INCREMENT,
  `PlanName` varchar(30) NOT NULL,
  `StartDate` date NOT NULL,
  `Duration` int NOT NULL,
  `Fee` float NOT NULL,
  `PaymentInterval` enum('Monthly','Quarterly','Yearly') NOT NULL,
  `PaymentMethod` varchar(20) NOT NULL,
  `UserID` int NOT NULL,
  PRIMARY KEY (`MembershipID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=995 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (549,'Study Pack','2020-03-22',30,15.5,'Quarterly','CARD',28),(560,'Premium','2022-05-22',90,24.99,'Yearly','CARD',6),(561,'Premium','2020-07-17',90,24.99,'Yearly','CARD',25),(595,'Standard','2021-08-09',90,12.89,'Monthly','Bitocin',33),(616,'Premium','2019-06-07',90,24.99,'Yearly','CARD',26),(640,'Study Pack','2020-08-29',60,12.89,'Quarterly','PayPal',36),(646,'Study Pack','2018-07-19',60,12.89,'Quarterly','CARD',23),(652,'Standard','2022-05-18',60,15.5,'Monthly','CARD',27),(696,'Premium','2022-04-07',90,24.99,'Yearly','CARD',22),(752,'Standard','2020-01-01',30,15.5,'Monthly','CARD',13),(790,'Study Pack','2021-12-05',60,12.89,'Quarterly','CARD',1),(805,'Study Pack','2019-06-04',60,12.89,'Quarterly','PayPal',5),(852,'Standard','2018-04-29',30,15.5,'Monthly','CARD',30),(899,'Standard','2019-02-25',30,15.5,'Monthly','CARD',8),(935,'Standard','2020-01-19',30,15.5,'Monthly','PayPal',1),(949,'Study Pack','2021-06-12',60,12.89,'Quarterly','CARD',3),(979,'Standard','2020-10-26',30,15.5,'Monthly','PayPal',14),(988,'Study Pack','2019-08-02',60,12.89,'Quarterly','PayPal',10),(994,'Study Pack','2020-09-10',60,12.89,'Quarterly','Bitcoin',1);
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 21:04:36
