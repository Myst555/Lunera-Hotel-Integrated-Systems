-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: roomslunera_hotel
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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` int DEFAULT NULL,
  `amenity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_amenities_room` (`room_id`),
  CONSTRAINT `fk_amenities_room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1488 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (80,8,'Wi-Fi'),(81,8,'Air Conditioning'),(82,8,'Private Bathroom'),(83,8,'Television'),(84,8,'Toiletries'),(85,8,'Pillows'),(86,8,'Blanket'),(87,8,'Wardrobe / desk'),(88,8,'Mini Refrigerator / mini bar'),(89,8,'Coffee and tea maker'),(90,8,'Setting area / table'),(102,10,'Wi-Fi'),(103,10,'Air Conditioning'),(104,10,'Private Bathroom'),(105,10,'Television'),(106,10,'Toiletries'),(107,10,'Pillows'),(108,10,'Blanket'),(109,10,'Wardrobe / desk'),(110,10,'Mini Refrigerator / mini bar'),(111,10,'Coffee and tea maker'),(112,10,'Setting area / table'),(113,11,'Wi-Fi'),(114,11,'Air Conditioning'),(115,11,'Private Bathroom'),(116,11,'Television'),(117,11,'Toiletries'),(118,11,'Pillows'),(119,11,'Blanket'),(120,11,'Wardrobe / desk'),(121,11,'Mini Refrigerator / mini bar'),(122,11,'Coffee and tea maker'),(123,11,'Setting area / table'),(124,11,'Extra Beds'),(125,11,'Crib / Baby Cot'),(126,11,'Microwave / Kitchenette'),(127,11,'Dining Table'),(128,11,'Sofa Bed'),(136,13,'Wi-Fi'),(137,13,'Air Conditioning'),(138,13,'Private Bathroom'),(139,13,'Television'),(140,13,'Toiletries'),(141,13,'Pillows'),(142,13,'Blanket'),(143,13,'Wardrobe / desk'),(144,13,'Mini Refrigerator / mini bar'),(145,13,'Coffee and tea maker'),(146,13,'Setting area / table'),(711,7,'Wi-Fi'),(712,7,'Air Conditioning'),(713,7,'Private Bathroom'),(714,7,'Television'),(715,7,'Toiletries'),(716,7,'Pillows'),(717,7,'Blanket'),(718,5,'Wi-Fi'),(719,5,'Air Conditioning'),(720,5,'Private Bathroom'),(721,5,'Television'),(722,5,'Toiletries'),(723,5,'Pillows'),(724,5,'Blanket'),(725,5,'Wardrobe / desk'),(726,5,'Mini Refrigerator / mini bar'),(727,5,'Coffee and tea maker'),(728,5,'Setting area / table'),(729,9,'Wi-Fi'),(730,9,'Air Conditioning'),(731,9,'Private Bathroom'),(732,9,'Television'),(733,9,'Toiletries'),(734,9,'Pillows'),(735,9,'Blanket'),(736,9,'Wardrobe / desk'),(737,9,'Mini Refrigerator / mini bar'),(738,9,'Coffee and tea maker'),(739,9,'Setting area / table'),(1334,2,'Wi-Fi'),(1335,2,'Air Conditioning'),(1336,2,'Private Bathroom'),(1337,2,'Television'),(1338,2,'Toiletries'),(1339,2,'Pillows'),(1340,2,'Blanket'),(1385,12,'Wi-Fi'),(1386,12,'Air Conditioning'),(1387,12,'Private Bathroom'),(1388,12,'Television'),(1389,12,'Toiletries'),(1390,12,'Pillows'),(1391,12,'Blanket'),(1392,3,'Wi-Fi'),(1393,3,'Air Conditioning'),(1394,3,'Private Bathroom'),(1395,3,'Television'),(1396,3,'Toiletries'),(1397,3,'Pillows'),(1398,3,'Blanket'),(1399,3,'Wardrobe / desk'),(1400,3,'Mini Refrigerator / mini bar'),(1401,3,'Coffee and tea maker'),(1402,3,'Setting area / table'),(1403,4,'Wi-Fi'),(1404,4,'Air Conditioning'),(1405,4,'Private Bathroom'),(1406,4,'Television'),(1407,4,'Toiletries'),(1408,4,'Pillows'),(1409,4,'Blanket'),(1410,4,'Wardrobe / desk'),(1411,4,'Mini Refrigerator / mini bar'),(1412,4,'Coffee and tea maker'),(1413,4,'Setting area / table'),(1414,6,'Wi-Fi'),(1415,6,'Air Conditioning'),(1416,6,'Private Bathroom'),(1417,6,'Television'),(1418,6,'Toiletries'),(1419,6,'Pillows'),(1420,6,'Blanket'),(1421,6,'Wardrobe / desk'),(1422,6,'Mini Refrigerator / mini bar'),(1423,6,'Coffee and tea maker'),(1424,6,'Setting area / table'),(1425,6,'Extra Beds'),(1426,6,'Crib / Baby Cot'),(1427,6,'Microwave / Kitchenette'),(1428,6,'Dining Table'),(1429,6,'Sofa Bed'),(1430,14,'Wi-Fi'),(1431,14,'Air Conditioning'),(1432,14,'Private Bathroom'),(1433,14,'Television'),(1434,14,'Toiletries'),(1435,14,'Pillows'),(1436,14,'Blanket'),(1437,14,'Wardrobe / desk'),(1438,14,'Mini Refrigerator / mini bar'),(1439,14,'Coffee and tea maker'),(1440,14,'Setting area / table'),(1441,15,'Wi-Fi'),(1442,15,'Air Conditioning'),(1443,15,'Private Bathroom'),(1444,15,'Television'),(1445,15,'Toiletries'),(1446,15,'Pillows'),(1447,15,'Blanket'),(1448,15,'Wardrobe / desk'),(1449,15,'Mini Refrigerator / mini bar'),(1450,15,'Coffee and tea maker'),(1451,15,'Setting area / table'),(1468,1,'Wi-Fi'),(1469,1,'Air Conditioning'),(1470,1,'Private Bathroom'),(1471,1,'Television'),(1472,1,'Toiletries'),(1473,1,'Pillows'),(1474,1,'Blanket'),(1475,1,'Wardrobe / desk'),(1476,1,'Mini Refrigerator / mini bar'),(1477,1,'Coffee and tea maker'),(1478,1,'Setting area / table'),(1479,1,'Extra Beds'),(1480,1,'Crib / Baby Cot'),(1481,1,'Microwave / Kitchenette'),(1482,1,'Dining Table'),(1483,1,'Sofa Bed'),(1484,16,'Wi-Fi'),(1485,16,'Air Conditioning'),(1486,16,'Television'),(1487,16,'Blanket');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-25 21:20:43
