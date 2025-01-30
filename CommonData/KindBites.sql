CREATE DATABASE  IF NOT EXISTS `kindbites` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kindbites`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: kindbites
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `consumer_info`
--

DROP TABLE IF EXISTS `consumer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer_info` (
  `id` bigint NOT NULL,
  `consumer_address_string` varchar(255) DEFAULT NULL,
  `consumer_contact_string` varchar(255) DEFAULT NULL,
  `consumer_email` varchar(255) DEFAULT NULL,
  `consumer_license` varchar(255) DEFAULT NULL,
  `consumer_name_string` varchar(255) DEFAULT NULL,
  `number_of_children` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_info`
--

LOCK TABLES `consumer_info` WRITE;
/*!40000 ALTER TABLE `consumer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_info_seq`
--

DROP TABLE IF EXISTS `consumer_info_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer_info_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_info_seq`
--

LOCK TABLES `consumer_info_seq` WRITE;
/*!40000 ALTER TABLE `consumer_info_seq` DISABLE KEYS */;
INSERT INTO `consumer_info_seq` VALUES (1);
/*!40000 ALTER TABLE `consumer_info_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumerinfo`
--

DROP TABLE IF EXISTS `consumerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumerinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `consumerNameString` varchar(255) NOT NULL,
  `consumerEmail` varchar(255) NOT NULL,
  `consumerContactString` varchar(20) NOT NULL,
  `consumerLicense` varchar(255) NOT NULL,
  `consumerAddressString` text NOT NULL,
  `numberOfChildren` bigint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `consumerEmail` (`consumerEmail`),
  UNIQUE KEY `consumerLicense` (`consumerLicense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumerinfo`
--

LOCK TABLES `consumerinfo` WRITE;
/*!40000 ALTER TABLE `consumerinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_info`
--

DROP TABLE IF EXISTS `hotel_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_info` (
  `id` bigint NOT NULL,
  `food_quantity` int NOT NULL,
  `food_status` varchar(255) DEFAULT NULL,
  `food_type_string` varchar(255) DEFAULT NULL,
  `hotel_addrss_string` varchar(255) DEFAULT NULL,
  `hotel_contact_number` bigint NOT NULL,
  `hotel_email_string` varchar(255) DEFAULT NULL,
  `hotel_liscence` varchar(255) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_info`
--

LOCK TABLES `hotel_info` WRITE;
/*!40000 ALTER TABLE `hotel_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_info_seq`
--

DROP TABLE IF EXISTS `hotel_info_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_info_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_info_seq`
--

LOCK TABLES `hotel_info_seq` WRITE;
/*!40000 ALTER TABLE `hotel_info_seq` DISABLE KEYS */;
INSERT INTO `hotel_info_seq` VALUES (1);
/*!40000 ALTER TABLE `hotel_info_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelinfo`
--

DROP TABLE IF EXISTS `hotelinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelinfo` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `hotelName` varchar(255) NOT NULL,
  `hotelEmailString` varchar(255) NOT NULL,
  `hotelContactNumber` bigint NOT NULL,
  `hotelLiscence` varchar(255) NOT NULL,
  `hotelAddressString` text NOT NULL,
  `foodTypeString` varchar(255) NOT NULL,
  `foodStatus` varchar(100) NOT NULL,
  `foodQuantity` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `hotelEmailString` (`hotelEmailString`),
  UNIQUE KEY `hotelLiscence` (`hotelLiscence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelinfo`
--

LOCK TABLES `hotelinfo` WRITE;
/*!40000 ALTER TABLE `hotelinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotelinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kindbites'
--

--
-- Dumping routines for database 'kindbites'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-30 23:16:09
