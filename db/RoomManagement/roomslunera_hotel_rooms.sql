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
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_number` int DEFAULT NULL,
  `room_type` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `description` text,
  `people` int DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,101,'Connecting Family Room','Available','Spacious family room with two connecting sections, ideal for large families who want comfort and privacy.',6,1,'images/r101.jpg'),(2,102,'Cozy Single Room','Booked','Compact and inviting room designed for solo travelers, offering a peaceful and relaxing spaces.',1,1,'images/20178539-black-anime-aesthetic-pc-wallpaper.jpg'),(3,103,'Junior Suite','Dirty','Stylish suite featuring a living area and multiple beds, perfect for small groups or family stays.',3,1,'images/r103.jpg'),(4,104,'Standard Double Room','Dirty','Comfortable double room with soft lighting and a relaxing ambiance for two guests.',2,1,'images/r104.jpg'),(5,105,'Deluxe Double Room','Available','Elegant deluxe double room with premium beddings and a cozy atmosphere for a restful night.',2,1,'images/r105.jpg'),(6,201,'Connecting Family Room','Available','Bright and spacious connecting family room with generous space for everyone to relax.',6,2,'images/r201.jpg'),(7,202,'Cozy Single Room','Available','Well-appointed single room ideal for solo travelers who prefer comfort and simplicity.',1,2,'images/r202.jpg'),(8,203,'Junior Suite','Available','Beautifully designed suite offering a separate lounge and sleeping area, perfect for comfort and style.',3,2,'images/r203.jpg'),(9,204,'Standard Double Room','Available','A neatly furnished room for couples or two guests, offering comfort and practicality.',2,2,'images/r204.jpg'),(10,205,'Deluxe Double Room','Available','Modern deluxe room with chic design, double bed, and elegant amenities for your stay.',2,2,'images/r205.png'),(11,301,'Connecting Family Room','Available','Family-sized connecting room with multiple beds and plenty of space for shared moments.',6,3,'images/r301.jpg'),(12,302,'Cozy Single Room','Available','Simple yet cozy room made for solo guests who enjoy privacy and comfort.',1,3,'images/r302.jpeg'),(13,303,'Junior Suite','Available','Spacious suite with modern décor, offering a blend of comfort and functionality for small families.',3,3,'images/r303.jpg'),(14,304,'Standard Double Room','Dirty','Relaxing double room with comfortable bedding and a warm, welcoming interior.',2,3,'images/r304.jpg'),(15,305,'Deluxe Double Room','Available','Refined deluxe room with elegant furnishings and a relaxing environment for two guests.',2,3,'images/r305.jpg'),(16,401,'Cozy Single Room','Under Maintenance','Iwan Basta yun hahaha',1,4,'images/1387205.jpg');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
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
