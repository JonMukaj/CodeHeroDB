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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `UserID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('jmukaj','2002','jmukaj20@epoka.edu.al',1),('fmarku','2001','fmarku20@epoka.edu.al',2),('ktenolli','1294adada','ktenolli20@epoka.edu.al',3),('emethasani','sadfasfas221d','emethasani20@epoka.edu.al',4),('krrapaj','lsflfsjfshvbxs','krrapaj20@epoka.edu.al',5),('eselenica','hndvdfvsafa','eselenica20@epoka.edu.al',6),('ahdakdahd','hedqfafaf','wffjwjj@gov.al',7),('dosoja21','mCKSjXhF','dosoja21@epoka.edu.al',8),('eveli20','k9YbAnPe','eveli20@epoka.edu.al',9),('lislami20','6a2E53RP','lislami20@epoka.edu.al',10),('kdomi18','CuzLWpZD','kdomi18@epoka.edu.al',11),('mceyhan','B5aKmPhY','mceyhan@epoka.edu.al',12),('armilo20','2Gn5GbPC','armilo20@epoka.edu.al',13),('fspata20','tHVSytwf','fspata20@epoka.edu.al',14),('evasjari15','UkNmAcDA','evasjari15@epoka.edu.al',15),('ggjoka20','QJSNU7BT','ggjoka20@epoka.edu.al',16),('hlleshaj21','cXRcxpEf','hlleshaj21@epoka.edu.al',17),('rbitri20','6ddsPF5u','rbitri20@epoka.edu.al',18),('dkarkini20','u7s86f37','dkarkini20@epoka.edu.al',19),('eqevani20','DQCLp4CC','eqevani20@epoka.edu.al',20),('ekerciku22','bCbVEc6r','ekerciku22@epoka.edu.al',21),('emancellari','u5F42gd8','emancellari@epoka.edu.al',22),('rcanaj20','Vb5zCjdJ','rcanaj20@epoka.edu.al',23),('aparllaku21','8RYd8WPa','aparllaku21@epoka.edu.al',24),('kcuni18','U392M7kQ','kcuni18@epoka.edu.al',25),('kshehu19','L6DjyPpM','kshehu19@epoka.edu.al',26),('lrrapaj20','v9sewgV5','lrrapaj20@epoka.edu.al',27),('aloka21','V3DBxjM3','aloka21@epoka.edu.al',28),('kkulari21','XvBJucex','kkulari21@epoka.edu.al',29),('kkullolli19','3ECCPgDZ','kkullolli19@epoka.edu.al',30),('akoka21','NVX5nLAs','akoka21@epoka.edu.al',31),('mavdiu21','rfAFJPK4','mavdiu21@epoka.edu.al',32),('jbathorja21','EzQGbvpa','jbathorja21@epoka.edu.al',33),('emucollari21','bRyzGcYJ','emucollari21@epoka.edu.al',34),('jnazifi21','a645AZDb','jnazifi21@epoka.edu.al',35),('kshehu21','yLLWY2Mr','kshehu21@epoka.edu.al',36),('aaliu21','hFkjX2Kp','aaliu21@epoka.edu.al',37);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
