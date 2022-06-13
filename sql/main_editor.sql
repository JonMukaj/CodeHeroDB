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
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editor` (
  `Theme` enum('blackboard','github','xcode','eclipse','Brogrammer','solarized dark','Predawn','cyanide','Dracula','Soda','gruvbox','Darkmatter','Standard','Material Theme','Flatland') NOT NULL,
  `TabSize` int NOT NULL,
  `KeyBinding` enum('Standard','Vim','Emacs') NOT NULL,
  `FontType` varchar(15) NOT NULL,
  `FontSize` int NOT NULL,
  `PlaygroundID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PlaygroundID`),
  CONSTRAINT `editor_ibfk_1` FOREIGN KEY (`PlaygroundID`) REFERENCES `playground` (`PlaygroundID`)
) ENGINE=InnoDB AUTO_INCREMENT=3269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor`
--

LOCK TABLES `editor` WRITE;
/*!40000 ALTER TABLE `editor` DISABLE KEYS */;
INSERT INTO `editor` VALUES ('Dracula',4,'Standard','Consolas ',13,2323),('cyanide',4,'Standard','Consolas ',14,2390),('Predawn',4,'Standard','Consolas ',21,2409),('gruvbox',5,'Vim','Consolas ',8,2439),('Darkmatter',5,'Standard',' Courier New',15,2473),('Standard',5,'Standard',' Courier New',14,2729),('Brogrammer',4,'Vim',' Courier New',14,2948),('Material Theme',4,'Emacs','Calibri',20,3037),('Flatland',4,'Standard','Calibri',14,3253),('Soda',4,'Standard','Calibri',6,3268);
/*!40000 ALTER TABLE `editor` ENABLE KEYS */;
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
