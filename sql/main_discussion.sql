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
-- Table structure for table `discussion`
--

DROP TABLE IF EXISTS `discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussion` (
  `Title` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `QuestionID` int NOT NULL,
  `UserID` int NOT NULL,
  PRIMARY KEY (`Title`,`QuestionID`),
  KEY `QuestionID` (`QuestionID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`),
  CONSTRAINT `discussion_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion`
--

LOCK TABLES `discussion` WRITE;
/*!40000 ALTER TABLE `discussion` DISABLE KEYS */;
INSERT INTO `discussion` VALUES (' Problem \"50513 - Climbing Up the Stairs\"','fsfs',50300,6),('afafafafafa','nnmgfbedfwqDAfQW23',50422,31),('Contest \"CEN 102 Practice Exam\" ','ss',50395,28),('Contest \"CEN 109 - Lab 11\" ','sfaafghjr',50410,31),('Contest \"CEN 110 - Lab05\" ','fsfs',50337,4),('Contest \"CEN254 Midterm\" ','sfs',50422,20),('fhhfasehkfshfsjfs','sfgsgsagsags',50300,4),('masgrfwfqwfwaswcJon','gwfeeeeeeeeeeeeeesvsvs',50422,33),('Problem \"50366 - Student Averages\" ','',50271,33),('Problem \"50402 - Hello World!\"','sfsf',50237,9),('Problem \"50540 - A+B\" ','fsfsw',50326,19),('Problem \"50732 - Sorting\" ','214sgsgf',50319,2),('Problem \"51113 - Question 1\" ','gqete',50329,7),('Problem \"51197 - Even and odd Numbers\"','sffs',50318,15),('Section \"Recursion\" ','qw1hdfsgSFQ',50380,25);
/*!40000 ALTER TABLE `discussion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 21:04:35
