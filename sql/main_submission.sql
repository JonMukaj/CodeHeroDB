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
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission` (
  `SubmissionID` int NOT NULL AUTO_INCREMENT,
  `SubmissionStatus` enum('Accepted','Wrong Answer','Runtime Error','Compile Error') NOT NULL,
  `SubmissionTime` timestamp NOT NULL,
  `Date` date NOT NULL,
  `Code` mediumblob NOT NULL,
  `Runtime` int NOT NULL,
  `Memory` int NOT NULL,
  `Language` enum('Java','C','C++','Python','JavaScript','PHP','C#','Bash','TypeScript','Ruby','Swift','Racket','Go','Kotlin') NOT NULL,
  `QuestionID` int NOT NULL,
  `UserID` int NOT NULL,
  PRIMARY KEY (`SubmissionID`),
  KEY `QuestionID` (`QuestionID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`),
  CONSTRAINT `submission_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3566 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES (1234,'Accepted','2016-02-01 11:52:14','2016-02-01',_binary '12456',2000,65000,'C',50237,1),(1345,'Accepted','2016-08-02 06:28:04','2016-08-02','',2000,65000,'C',50271,1),(1456,'Accepted','2018-11-01 00:43:56','2018-11-01','',2000,65000,'C',50300,34),(1567,'Wrong Answer','2018-05-31 10:40:33','2018-05-31','',2000,65000,'JavaScript',50318,22),(1678,'Accepted','2017-03-30 21:12:06','2017-03-30','',2000,65000,'C',50319,1),(1789,'Wrong Answer','2016-05-08 02:26:19','2016-05-08','',2000,65000,'C',50326,21),(1900,'Wrong Answer','2017-08-07 03:22:06','2017-08-07','',6000,65000,'C',50329,8),(2011,'Accepted','2017-08-08 16:41:16','2017-08-08','',6000,65000,'C',50337,13),(2122,'Accepted','2021-07-26 10:29:13','2021-07-26','',6000,65000,'Kotlin',50380,30),(2233,'Accepted','2016-07-22 05:36:45','2016-07-22','',6000,65000,'C',50382,30),(2344,'Wrong Answer','2017-09-30 16:27:06','2017-09-30','',4000,65000,'C',50395,19),(2455,'Accepted','2021-05-21 06:32:49','2021-05-21','',4000,65000,'C',50410,3),(2566,'Wrong Answer','2018-04-14 16:21:03','2018-04-14','',4000,65000,'Python',50422,24),(2677,'Runtime Error','2016-08-02 22:25:58','2016-08-03','',4000,65000,'Python',50423,33),(2788,'Wrong Answer','2021-04-04 18:55:46','2021-04-04','',4000,65000,'Python',50508,35),(2899,'Runtime Error','2021-08-29 20:02:18','2021-08-29','',10000,65000,'Python',50668,9),(3010,'Accepted','2022-02-08 18:35:48','2022-02-08','',4500,65000,'Java',50825,3),(3121,'Accepted','2017-04-23 08:10:36','2018-04-06',_binary '//jmukaj20\n#include <stdio.h>\n#include <stdlib.h>\n\nint main()\n{\n    int n, m;\n    scanf(\"%d%d\",&n, &m);\n    int *a = (int *)calloc(n,sizeof(int));\n\n    int min_idx = -2;\n    int count = 0;\n\n    for(int i = 0; i < n; i++)\n    {\n        scanf(\"%d\",&a[i]);\n        if (a[i] > m)\n        {\n            if (count == 0)\n            {\n                min_idx = i;\n                count++;\n            }\n            else\n            {\n                if (a[min_idx] > a[i])\n                    min_idx = i;\n            }\n        }\n    }\n\n    printf(\"%d\",min_idx+1);\n}',10000,65000,'C',50977,1),(3232,'Runtime Error','2021-10-09 20:40:00','2021-10-09','',10000,65000,'Java',51041,16),(3454,'Accepted','2018-01-29 00:28:44','2018-01-29','',10000,65000,'Java',51043,30),(3565,'Compile Error','2021-10-17 13:19:29','2021-10-17','',10000,65000,'Java',51092,26);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
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
