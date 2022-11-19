-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: wbh
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `table_data`
--

DROP TABLE IF EXISTS `table_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_data` (
  `Traffic_source` text,
  `Views` int DEFAULT NULL,
  `Watch_time (hours)` double DEFAULT NULL,
  `Average_view_duration` text,
  `Impressions` text,
  `Impressions_click-through_rate(%)` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_data`
--

LOCK TABLES `table_data` WRITE;
/*!40000 ALTER TABLE `table_data` DISABLE KEYS */;
INSERT INTO `table_data` VALUES ('Suggested videos',15398,2319.0307,'0:09:02','307975','2.13'),('Direct or unknown',2158,149.8786,'0:04:10','',''),('External',2123,108.2728,'0:03:03','',''),('Browse features',1810,55.1654,'0:01:49','105884','1'),('YouTube search',1677,63.9085,'0:02:17','17125','8.47'),('Channel pages',723,32.5804,'0:02:42','11160','5'),('Other YouTube features',269,24.2355,'0:05:24','',''),('Playlists',47,4.8692,'0:06:12','447','3.58'),('Shorts feed',36,0.1257,'0:00:12','',''),('Playlist page',34,1.3192,'0:02:19','967','3.1'),('Notifications',21,0.6565,'0:01:52','',''),('End screens',2,0.1378,'0:04:08','',''),('Video cards and annotations',1,0.0138,'0:00:49','','');
/*!40000 ALTER TABLE `table_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18 21:21:54
