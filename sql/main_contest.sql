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
-- Table structure for table `contest`
--

DROP TABLE IF EXISTS `contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest` (
  `ContestName` varchar(50) NOT NULL,
  `ContestID` int NOT NULL AUTO_INCREMENT,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `NrOfQuestion` int NOT NULL,
  `ContestDescription` varchar(500) NOT NULL,
  `ContestDate` date NOT NULL,
  PRIMARY KEY (`ContestID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest`
--

LOCK TABLES `contest` WRITE;
/*!40000 ALTER TABLE `contest` DISABLE KEYS */;
INSERT INTO `contest` VALUES ('Informatics Stars',1,'11:47:07','02:10:00',73,'','2018-02-05'),('IMPC - 2013-2014',2,'11:31:36','02:20:00',68,'','2018-06-09'),('Epoka Science Olympiad 2013-2015',3,'20:10:47','03:00:00',68,'','2018-08-01'),('CEN111 Homeworks 2013-2015',4,'17:06:36','03:40:00',52,'','2018-11-24'),('CEN112 Homeworks 2013-2015',5,'09:18:50','04:25:00',41,'','2019-02-17'),('CEN303 2013-15 Questions',6,'23:19:10','04:45:00',94,'','2019-03-25'),('IMPC-2014-15 Questions',7,'20:07:49','04:50:00',84,'','2019-07-30'),('CEN - 372 Homework',8,'11:08:25','05:40:00',83,'','2019-10-20'),('IMPC16 Group Contests',9,'09:24:54','05:45:00',61,'','2020-03-29'),('CEN112 Questions 2016',10,'14:26:57','06:55:00',13,'','2020-08-02'),('Epoka Science Olympiad 2016',11,'19:18:43','08:25:00',42,'','2020-08-13'),('CEN303_2016Questions',12,'05:22:50','08:55:00',33,'','2020-12-14'),('CEN109/111_2016_Questions',13,'08:55:51','09:05:00',57,'','2021-04-19'),('APGC-1',14,'09:27:28','10:00:00',51,'','2021-05-08'),('CEN254 PRE1A',15,'21:55:22','11:10:00',23,'','2021-05-26'),('CEN254 PRE1B',16,'09:27:30','12:55:00',82,'','2021-07-31'),('CEN110/CEN PRE1',17,'09:34:01','13:25:00',82,'','2022-01-03'),('CEN110_ECE',18,'06:48:23','13:35:00',27,'','2022-01-27'),('IMPC17 Prep Contest',19,'03:31:55','14:25:00',61,'','2022-02-09'),('Epoka Science Olympiad 2017 - 11th Grade',20,'17:17:03','14:50:00',83,'','2022-03-17'),('Epoka Science Olympiad 2017 - 10th Grade',21,'07:27:36','14:55:00',22,'','2017-12-21'),('Epoka Science Olympiad 2017 - 8th Grade',22,'19:41:34','15:00:00',51,'','2018-05-07'),('Epoka Science Olympiad 2017 - 9th Grade',23,'05:13:37','15:15:00',22,'','2018-06-02'),('CEN254 Midterm',24,'14:56:54','15:55:00',94,'','2018-07-18'),('CEN110 Midterm Session 1',25,'07:56:25','16:05:00',26,'','2018-12-18'),('CEN110 Midterm Session 2',26,'00:46:13','16:35:00',11,'','2018-12-27'),('IMPC 2017',27,'04:21:13','17:40:00',41,'','2019-02-01'),('CEN254 Practice Exam 2',28,'05:44:33','18:45:00',10,'','2019-07-08'),('CEN110 Practice Exam 2',29,'13:19:32','18:50:00',93,'','2019-07-11'),('CEN110_ECE Practice Exam 2',30,'18:40:54','18:55:00',69,'','2020-01-01'),('CEN 102 Practice Exam',31,'18:20:44','19:20:00',63,'','2020-03-30'),('CEN254_PRE2x2',32,'11:10:00','19:35:00',62,'','2020-07-17'),('CEN254 Final Exam',33,'12:55:00','19:40:00',1,'','2020-07-21'),('CEN110 Final Exam',34,'13:25:00','20:25:00',2,'','2020-11-05'),('CEN110-Resit',35,'13:35:00','20:40:00',5,'','2021-01-21'),('CEN254 Resit',36,'14:25:00','21:00:00',44,'','2021-04-13'),('HW1_CEN109_2017',37,'14:50:00','21:35:00',6,'','2021-05-07'),('HW_CEN109_2018',38,'15:00:00','21:55:00',33,'','2021-06-28'),('Prog_CMP',39,'15:15:00','22:00:00',96,'','2021-08-08'),('Google Programming Camp 2',40,'15:55:00','22:55:00',21,'','2022-01-01');
/*!40000 ALTER TABLE `contest` ENABLE KEYS */;
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
