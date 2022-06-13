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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `QuestionID` int NOT NULL AUTO_INCREMENT,
  `QuestionName` varchar(50) NOT NULL,
  `Difficulty` enum('Easy','Medium','Hard') NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Input` varchar(500) NOT NULL,
  `Output` varchar(500) NOT NULL,
  `DateOfCreation` date NOT NULL,
  `UserID` int NOT NULL,
  PRIMARY KEY (`QuestionID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=51176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (50237,'Triangles','Hard','','','','2018-11-15',21),(50271,' Factorial','Medium','','','','2017-01-02',19),(50300,' Product Info','Medium','','','','2016-06-24',13),(50318,' Draw Matrix','Medium','','','','2017-09-23',2),(50319,' Matrix Operations','Medium','','','','2017-04-21',13),(50326,' Exam Averages','Medium','','','','2019-10-07',5),(50329,'Polygons','Hard','','','','2018-08-23',29),(50337,'Points','Hard','','','','2020-01-03',12),(50380,' Zero Padding','Medium','','','','2017-06-16',30),(50382,' Parkside\'s Other Triangle','Medium','','','','2016-12-14',34),(50395,'Is it the same color?','Hard','','','','2020-09-08',32),(50410,'Triangle','Easy','','','','2020-07-20',24),(50422,'How far away','Medium','','','','2018-09-25',30),(50423,' Sum of the Numbers','Medium','','','','2017-02-08',2),(50508,'Area of a Triangle','Medium','','','','2020-02-02',28),(50668,'Lights','Hard','','','','2018-08-24',3),(50825,'Area of 3 Shapes','Easy','','','','2017-03-23',13),(50977,' Page \"Like\"\" Averages\"','Hard','','','','2016-06-24',11),(51041,'Pythagorean Numbers','Medium','','','','2016-04-09',23),(51042,' The most frequent k','Easy','','','','2019-11-04',2),(51043,' Genome Sequencing','Medium','','','','2016-06-08',6),(51092,' Toll Plazas','Easy','','','','2019-09-13',1),(51093,' Normal and Trace','Medium','','','','2019-10-29',25),(51095,' Gaussian Elimination','Easy','','','','2017-05-15',20),(51111,' Even Numbers','Easy','','','','2019-07-20',9),(51115,' Pascal Triangle','Medium','','','','2017-08-02',1),(51116,' The Star Triangle','Medium','','','','2019-03-07',19),(51171,' Even and Odd','Medium','','','','2019-10-25',4),(51175,' Matrix','Easy','','','','2017-02-27',28);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
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
