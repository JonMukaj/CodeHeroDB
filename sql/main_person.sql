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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `PersonID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `BirthDate` date NOT NULL,
  `Gender` enum('Male','Female','Rather Not Say') NOT NULL,
  `UserID` int NOT NULL,
  PRIMARY KEY (`PersonID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Jon','Mukaj','1980-09-11','Male',1),(2,'Fabio','Marku','1982-06-03','Male',2),(3,'Alexis','Sims','1982-10-31','Male',3),(4,'Kimberly','Johnson','1985-04-09','Male',4),(5,'Michelle','Vargas','1985-11-06','Female',5),(6,'Christine','Huffman','1986-11-12','Female',6),(7,'sgfsfs','hhgdhd@regweg','1982-06-03','Female',7),(8,'Crystal','Murray','1990-03-05','Male',8),(9,'Brian','Lopez','1990-04-29','Male',9),(10,'Benjamin','Jimenez','1990-08-14','Male',10),(11,'Sabrina','Cortez','1991-03-15','Female',11),(12,'Tina','Steele','1992-10-22','Female',12),(13,'Lisa','Barber','1992-11-11','Female',13),(14,'Rebecca','Thompson','1994-03-10','Female',14),(15,'Jones','Christopher','1995-02-25','Male',15),(16,'Casey','Rios','1996-07-06','Male',16),(17,'Gabriel','Garner','1996-10-28','Male',17),(18,'Brad','Jones','1996-11-26','Male',18),(19,'Brenda','Perry','1998-10-10','Female',19),(20,'Gregory','Harrison','1999-01-03','Male',20),(21,'William','Delgado','1999-03-16','Male',21),(22,'Cynthia','Vega','2000-06-07','Female',22),(23,'Matthew','Hall','2001-05-22','Male',23),(24,'Kenneth','Hughes','2002-05-14','Male',24),(25,'Rebecca','Cannon','2002-08-08','Female',25),(26,'Denise','Morgan','1993-11-22','Male',26),(27,'Crystal','Smith','1995-11-12','Male',27),(28,'aada','afafa','2002-08-08','Male',28),(29,'sgsgfhjfd','aada','2001-05-22','Male',29),(30,'vgsavgas','jesfa','1999-01-03','Male',30),(31,'svasvas','ADAC','1998-11-10','Male',31),(32,'sgs','Adad','1992-12-18','Male',32),(33,'xsvssg','CASCA','1991-03-15','Male',33),(34,'AFAFA','SFSF','2001-05-22','Male',34),(35,'vxvs','DSFFS','1982-06-03','Male',35),(36,'gsg','ADDADAgs','1986-11-12','Female',36),(37,'sgfs','ffasfda','1992-10-22','Male',37);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
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
