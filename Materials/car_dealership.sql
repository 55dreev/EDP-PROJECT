-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: car_dealership
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `car_condition_view`
--

DROP TABLE IF EXISTS `car_condition_view`;
/*!50001 DROP VIEW IF EXISTS `car_condition_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `car_condition_view` AS SELECT 
 1 AS `car_id`,
 1 AS `car_model`,
 1 AS `car_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Toyota','Corolla',2023,25000.00),(2,'Honda','Civic',2022,23000.00),(3,'Ford','Mustang',2023,55000.00),(4,'Chevrolet','Malibu',2022,27000.00),(5,'Tesla','Model 3',2023,45000.00),(6,'BMW','X5',2023,60000.00),(7,'Mercedes','C-Class',2022,50000.00),(8,'Audi','A4',2023,48000.00),(9,'Nissan','Altima',2022,26000.00),(10,'Hyundai','Sonata',2023,24000.00),(11,'Nissan','GTR-35',2023,73000.00);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe','1234567890','johndoe@example.com'),(2,'Jane','Smith','0987654321','janesmith@example.com'),(3,'Michael','Johnson','1122334455','michaelj@example.com'),(4,'Emily','Davis','2233445566','emilyd@example.com'),(5,'Robert','Brown','3344556677','robertb@example.com'),(6,'Jessica','Wilson','4455667788','jessicaw@example.com'),(7,'David','Anderson','5566778899','davida@example.com'),(8,'Laura','Martinez','6677889900','lauram@example.com'),(9,'Daniel','Hernandez','7788990011','danielh@example.com'),(10,'Sophia','Garcia','8899001122','sophiag@example.com'),(11,'Andrew','Albert','123213','andrew@outlook.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dealer_stock_view`
--

DROP TABLE IF EXISTS `dealer_stock_view`;
/*!50001 DROP VIEW IF EXISTS `dealer_stock_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dealer_stock_view` AS SELECT 
 1 AS `dealer_id`,
 1 AS `dealer_name`,
 1 AS `total_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dealer_view`
--

DROP TABLE IF EXISTS `dealer_view`;
/*!50001 DROP VIEW IF EXISTS `dealer_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dealer_view` AS SELECT 
 1 AS `dealer_id`,
 1 AS `dealer_name`,
 1 AS `location`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealers` (
  `dealer_id` int NOT NULL AUTO_INCREMENT,
  `dealer_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dealer_id`),
  UNIQUE KEY `contact_email` (`contact_email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES (1,'Speedy Motors','New York','contact@speedymotors.com'),(2,'Luxury Rides','Los Angeles','info@luxuryrides.com'),(3,'Auto World','Chicago','sales@autoworld.com'),(4,'Elite Cars','Miami','support@elitecars.com'),(5,'Budget Auto','Houston','help@budgetauto.com'),(6,'Family Cars','Seattle','service@familycars.com'),(7,'DriveAway','San Francisco','hello@driveaway.com'),(8,'RoadStar','Las Vegas','info@roadstar.com'),(9,'Highway Dealers','Boston','contact@highwaydealers.com'),(10,'FastTrack Auto','Denver','sales@fasttrackauto.com'),(12,'Andrew Motors','San Francisco','AM@gmail.com');
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `dealer_id` int NOT NULL,
  `car_id` int NOT NULL,
  `stock` int NOT NULL,
  `car_condition` varchar(10) NOT NULL,
  PRIMARY KEY (`inventory_id`),
  CONSTRAINT `inventory_chk_1` CHECK ((`stock` >= 0)),
  CONSTRAINT `inventory_chk_2` CHECK ((`car_condition` in (_utf8mb4'New',_utf8mb4'Used')))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,5,'New'),(2,2,2,4,'Used'),(3,3,3,11,'New'),(4,4,4,17,'Used'),(5,5,5,16,'New'),(6,6,6,7,'Used'),(7,7,7,9,'New'),(8,8,8,22,'Used'),(9,9,9,14,'New'),(10,10,10,13,'Used'),(11,2,1,10,'New'),(13,1,1,3,'New'),(14,1,2,5,'New'),(15,1,2,3,'Used'),(16,2,3,1,'New'),(17,3,5,11,'New');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_archive`
--

DROP TABLE IF EXISTS `inventory_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_archive` (
  `inventory_id` int NOT NULL,
  `dealer_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `car_condition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_archive`
--

LOCK TABLES `inventory_archive` WRITE;
/*!40000 ALTER TABLE `inventory_archive` DISABLE KEYS */;
INSERT INTO `inventory_archive` VALUES (1,1,1,5,'New'),(2,2,2,4,'Used'),(3,3,3,11,'New'),(4,4,4,17,'Used'),(5,5,5,16,'New'),(6,6,6,7,'Used'),(7,7,7,9,'New'),(8,8,8,22,'Used'),(9,9,9,14,'New'),(10,10,10,13,'Used'),(11,2,1,10,'New'),(13,1,1,3,'New'),(14,1,2,5,'New'),(15,1,2,3,'Used'),(16,2,3,1,'New');
/*!40000 ALTER TABLE `inventory_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_backup`
--

DROP TABLE IF EXISTS `inventory_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_backup` (
  `inventory_id` int NOT NULL,
  `dealer_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `car_condition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_backup`
--

LOCK TABLES `inventory_backup` WRITE;
/*!40000 ALTER TABLE `inventory_backup` DISABLE KEYS */;
INSERT INTO `inventory_backup` VALUES (1,1,1,5,'New'),(2,2,2,4,'Used'),(3,3,3,11,'New'),(4,4,4,17,'Used'),(5,5,5,16,'New'),(6,6,6,7,'Used'),(7,7,7,9,'New'),(8,8,8,22,'Used'),(9,9,9,14,'New'),(10,10,10,13,'Used'),(11,2,1,10,'New'),(13,1,1,3,'New'),(14,1,2,5,'New'),(15,1,2,3,'Used'),(16,2,3,1,'New'),(17,3,5,11,'New');
/*!40000 ALTER TABLE `inventory_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_logs`
--

DROP TABLE IF EXISTS `inventory_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(10) DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_logs`
--

LOCK TABLES `inventory_logs` WRITE;
/*!40000 ALTER TABLE `inventory_logs` DISABLE KEYS */;
INSERT INTO `inventory_logs` VALUES (1,'INSERT',1,'2025-03-23 22:46:03'),(2,'UPDATE',4,'2025-03-24 21:01:38'),(3,'UPDATE',1,'2025-03-24 21:49:48'),(4,'INSERT',1,'2025-03-24 21:50:37'),(5,'UPDATE',1,'2025-03-24 21:51:14'),(6,'UPDATE',1,'2025-03-24 21:55:54'),(7,'INSERT',1,'2025-03-24 21:56:30'),(8,'UPDATE',1,'2025-03-24 21:58:20'),(9,'DELETE',1,'2025-03-24 21:58:29'),(10,'INSERT',2,'2025-04-03 22:10:06'),(12,'UPDATE',2,'2025-04-03 22:15:04'),(13,'INSERT',2,'2025-04-03 22:32:27'),(14,'INSERT',3,'2025-04-03 22:40:11'),(15,'INSERT',2,'2025-05-10 14:24:20'),(16,'UPDATE',5,'2025-05-10 14:30:03');
/*!40000 ALTER TABLE `inventory_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `inventory_status_view`
--

DROP TABLE IF EXISTS `inventory_status_view`;
/*!50001 DROP VIEW IF EXISTS `inventory_status_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inventory_status_view` AS SELECT 
 1 AS `car_id`,
 1 AS `stock`,
 1 AS `stock_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inventory_view`
--

DROP TABLE IF EXISTS `inventory_view`;
/*!50001 DROP VIEW IF EXISTS `inventory_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inventory_view` AS SELECT 
 1 AS `inventory_id`,
 1 AS `dealer_id`,
 1 AS `car_id`,
 1 AS `stock`,
 1 AS `car_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` enum('Cash','Credit Card','Bank Transfer','Financing') DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `sale_id` (`sale_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,25000.00,'2024-01-05','Cash'),(2,2,23000.00,'2024-01-10','Credit Card'),(3,3,55000.00,'2024-01-15','Bank Transfer'),(4,4,27000.00,'2024-01-20','Financing'),(5,5,45000.00,'2024-01-25','Cash'),(6,6,60000.00,'2024-02-01','Credit Card'),(7,7,50000.00,'2024-02-05','Bank Transfer'),(8,8,48000.00,'2024-02-10','Financing'),(9,9,26000.00,'2024-02-15','Cash'),(10,10,24000.00,'2024-02-20','Credit Card'),(11,11,56000.00,'2025-05-07','Financing');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `dealer_id` int DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `customer_id` (`customer_id`),
  KEY `car_id` (`car_id`),
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE,
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`dealer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,1,1,'2024-01-05'),(2,2,2,2,'2024-01-10'),(3,3,3,3,'2024-01-15'),(4,4,4,4,'2024-01-20'),(5,5,5,5,'2024-01-25'),(6,6,6,6,'2024-02-01'),(7,7,7,7,'2024-02-05'),(8,8,8,8,'2024-02-10'),(9,9,9,9,'2024-02-15'),(10,10,10,10,'2024-02-20'),(11,1,2,1,'2025-05-06');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_drives`
--

DROP TABLE IF EXISTS `test_drives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_drives` (
  `test_drive_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `car_id` int NOT NULL,
  `dealer_id` int NOT NULL,
  `test_drive_date` date NOT NULL,
  `status` enum('Scheduled','Completed','Cancelled') NOT NULL,
  PRIMARY KEY (`test_drive_id`),
  KEY `customer_id` (`customer_id`),
  KEY `car_id` (`car_id`),
  KEY `dealer_id` (`dealer_id`),
  CONSTRAINT `test_drives_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `test_drives_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  CONSTRAINT `test_drives_ibfk_3` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`dealer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_drives`
--

LOCK TABLES `test_drives` WRITE;
/*!40000 ALTER TABLE `test_drives` DISABLE KEYS */;
INSERT INTO `test_drives` VALUES (2,2,5,2,'2024-02-05','Cancelled'),(3,3,2,3,'2024-02-07','Scheduled'),(4,4,6,1,'2024-02-10','Completed'),(5,5,8,2,'2024-02-12','Scheduled'),(6,6,4,3,'2024-02-14','Cancelled'),(7,7,7,1,'2024-02-16','Completed'),(8,8,1,2,'2024-02-18','Scheduled'),(9,9,9,3,'2024-02-20','Cancelled'),(10,10,10,1,'2024-02-22','Completed');
/*!40000 ALTER TABLE `test_drives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_stock_view`
--

DROP TABLE IF EXISTS `total_stock_view`;
/*!50001 DROP VIEW IF EXISTS `total_stock_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_stock_view` AS SELECT 
 1 AS `car_id`,
 1 AS `total_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin123','2025-05-10 06:37:42',''),(2,'Magicman','123','2025-05-10 06:51:57',''),(3,'Magic2','123','2025-05-10 06:57:55',''),(4,'john tho','12345','2025-05-10 07:21:26','johntho@outlook.com'),(5,'magicman12','magic1234','2025-05-14 13:42:47','magic@outlook.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `car_condition_view`
--

/*!50001 DROP VIEW IF EXISTS `car_condition_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `car_condition_view` AS select `c`.`car_id` AS `car_id`,`c`.`model` AS `car_model`,`i`.`car_condition` AS `car_condition` from (`cars` `c` join `inventory` `i` on((`c`.`car_id` = `i`.`car_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dealer_stock_view`
--

/*!50001 DROP VIEW IF EXISTS `dealer_stock_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dealer_stock_view` AS select `d`.`dealer_id` AS `dealer_id`,`d`.`dealer_name` AS `dealer_name`,sum(`i`.`stock`) AS `total_stock` from (`dealers` `d` join `inventory` `i` on((`d`.`dealer_id` = `i`.`dealer_id`))) group by `d`.`dealer_id`,`d`.`dealer_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dealer_view`
--

/*!50001 DROP VIEW IF EXISTS `dealer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dealer_view` AS select `dealers`.`dealer_id` AS `dealer_id`,`dealers`.`dealer_name` AS `dealer_name`,`dealers`.`location` AS `location` from `dealers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inventory_status_view`
--

/*!50001 DROP VIEW IF EXISTS `inventory_status_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventory_status_view` AS select `inventory`.`car_id` AS `car_id`,`inventory`.`stock` AS `stock`,`GetStockStatus`(`inventory`.`car_id`) AS `stock_status` from `inventory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inventory_view`
--

/*!50001 DROP VIEW IF EXISTS `inventory_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventory_view` AS select `inventory`.`inventory_id` AS `inventory_id`,`inventory`.`dealer_id` AS `dealer_id`,`inventory`.`car_id` AS `car_id`,`inventory`.`stock` AS `stock`,`inventory`.`car_condition` AS `car_condition` from `inventory` where (`inventory`.`stock` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_stock_view`
--

/*!50001 DROP VIEW IF EXISTS `total_stock_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_stock_view` AS select `inventory`.`car_id` AS `car_id`,sum(`inventory`.`stock`) AS `total_stock` from `inventory` group by `inventory`.`car_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15 14:38:23
