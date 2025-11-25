-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: webdb
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `housekeepers`
--

DROP TABLE IF EXISTS `housekeepers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housekeepers` (
  `HousekeeperID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `AssignedFloor` varchar(50) DEFAULT NULL,
  `Availability` enum('Available','On Break','Absent','On Leave','Unavailable') NOT NULL,
  `UUID` varchar(12) DEFAULT NULL,
  `haveAccount` tinyint(1) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`HousekeeperID`),
  UNIQUE KEY `UUID` (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housekeepers`
--

LOCK TABLES `housekeepers` WRITE;
/*!40000 ALTER TABLE `housekeepers` DISABLE KEYS */;
INSERT INTO `housekeepers` VALUES (10,'John Doe','09345235454','johndoe@gmail.com','2005-04-21','3','Absent','A9gzid2kWns0',1,NULL),(11,'Alex Smith','09349059085','alex2014@gmail.com','2000-05-17','2','Available','uFk4IkAPf8RI',1,NULL),(12,'Kieth Megan','09345345636','megan45@hotmail.com','2001-08-02','1','Available','L1UXBbEje7GA',1,NULL),(13,'Arthur Cruz','09547873422','Art772@yahoo.com','2013-08-16','2','Available','adQJ5uMKkxew',1,NULL),(14,'Chris Dela Pena','09565667844','chrissss402@gmail.com','2015-05-25','1','Available','DazBQnakqZiD',1,NULL),(15,'Mae Ford','09345367678','maemae254@gmail.com','2020-02-21','2','Available','1DM6BIVN61YR',1,NULL),(17,'Steve Harrison','09638734254','steve653@yahoo.com','2021-07-19','3','On Break','jG7wXNps1D0L',1,NULL),(18,'Joe Manson','09567543453','joemansoon44@outlook.com','2012-03-02','1','Absent','1OnCZmXxumOD',1,'I forgor');
/*!40000 ALTER TABLE `housekeepers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-25 21:21:07
