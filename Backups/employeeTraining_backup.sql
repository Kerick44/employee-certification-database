-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: employeetraining
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `certs`
--

DROP TABLE IF EXISTS `certs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certs` (
  `certID` int NOT NULL AUTO_INCREMENT,
  `certName` varchar(100) NOT NULL,
  PRIMARY KEY (`certID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certs`
--

LOCK TABLES `certs` WRITE;
/*!40000 ALTER TABLE `certs` DISABLE KEYS */;
INSERT INTO `certs` VALUES (1,'Security+'),(2,'CCNA'),(3,'Network+'),(4,'Cybersecurity Awareness'),(5,'Workplace Safety'),(6,'First Aid'),(7,'CPR');
/*!40000 ALTER TABLE `certs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_certifications`
--

DROP TABLE IF EXISTS `employee_certifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_certifications` (
  `employeeID` int NOT NULL,
  `certID` int NOT NULL,
  `dateEarned` date DEFAULT NULL,
  `expirationDate` date DEFAULT NULL,
  PRIMARY KEY (`employeeID`,`certID`),
  KEY `certID` (`certID`),
  CONSTRAINT `employee_certifications_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`),
  CONSTRAINT `employee_certifications_ibfk_2` FOREIGN KEY (`certID`) REFERENCES `certs` (`certID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_certifications`
--

LOCK TABLES `employee_certifications` WRITE;
/*!40000 ALTER TABLE `employee_certifications` DISABLE KEYS */;
INSERT INTO `employee_certifications` VALUES (1,1,'2024-04-21','2027-04-21'),(1,2,'2024-04-21','2027-04-21'),(1,3,'2024-04-21','2027-04-21'),(1,4,'2024-04-21','2025-04-21'),(1,5,'2024-04-21','2026-04-21'),(1,6,'2024-04-21','2026-04-21'),(1,7,'2024-04-21','2026-04-21'),(2,1,'2026-06-09','2029-06-09'),(2,2,'2026-06-09','2029-06-09'),(2,3,'2026-06-09','2029-06-09'),(2,4,'2026-06-09','2027-06-09'),(2,5,'2026-06-09','2028-06-09'),(2,6,'2026-06-09','2028-06-09'),(2,7,'2026-06-09','2028-06-09'),(3,1,'2025-12-10','2028-12-10'),(3,2,'2025-12-10','2028-12-10'),(3,3,'2025-12-10','2028-12-10'),(3,4,'2025-12-10','2026-12-10'),(3,5,'2025-12-10','2027-12-10'),(3,6,'2025-12-10','2027-12-10'),(3,7,'2025-12-10','2027-12-10'),(4,1,'2026-01-30','2029-01-30'),(4,2,'2026-01-30','2029-01-30'),(4,3,'2026-01-30','2029-01-30'),(4,4,'2026-01-30','2027-01-30'),(4,5,'2026-01-30','2028-01-30'),(4,6,'2026-01-30','2028-01-30'),(4,7,'2026-01-30','2028-01-30'),(5,1,'2022-03-14','2025-03-14'),(5,2,'2022-03-14','2025-03-14'),(5,3,'2022-03-14','2025-03-14'),(5,4,'2022-03-14','2023-03-14'),(5,5,'2022-03-14','2024-03-14'),(5,6,'2022-03-14','2024-03-14'),(5,7,'2022-03-14','2024-03-14'),(6,1,'2023-04-20','2026-04-20'),(6,2,'2023-04-20','2026-04-20'),(6,3,'2023-04-20','2026-04-20'),(6,4,'2023-04-20','2024-04-20'),(6,5,'2023-04-20','2025-04-20'),(6,6,'2023-04-20','2025-04-20'),(6,7,'2023-04-20','2025-04-20'),(7,1,'2025-09-19','2028-09-19'),(7,2,'2025-09-19','2028-09-19'),(7,3,'2025-09-19','2028-09-19'),(7,4,'2025-09-19','2026-09-19'),(7,5,'2025-09-19','2027-09-19'),(7,6,'2025-09-19','2027-09-19'),(7,7,'2025-09-19','2027-09-19'),(8,1,'2024-02-28','2027-02-28'),(8,2,'2024-02-28','2027-02-28'),(8,3,'2024-02-28','2027-02-28'),(8,4,'2024-02-28','2025-02-28'),(8,5,'2024-02-28','2026-02-28'),(8,6,'2024-02-28','2026-02-28'),(8,7,'2024-02-28','2026-02-28'),(9,1,'2024-02-02','2027-02-02'),(9,2,'2024-02-02','2027-02-02'),(9,3,'2024-02-02','2027-02-02'),(9,4,'2024-02-02','2025-02-02'),(9,5,'2024-02-02','2026-02-02'),(9,6,'2024-02-02','2026-02-02'),(9,7,'2024-02-02','2026-02-02'),(10,1,'2026-09-26','2029-09-26'),(10,2,'2026-09-26','2029-09-26'),(10,3,'2026-09-26','2029-09-26'),(10,4,'2026-09-26','2027-09-26'),(10,5,'2026-09-26','2028-09-26'),(10,6,'2026-09-26','2028-09-26'),(10,7,'2026-09-26','2028-09-26'),(11,1,'2026-07-29','2029-07-29'),(11,2,'2026-07-29','2029-07-29'),(11,3,'2026-07-29','2029-07-29'),(11,4,'2026-07-29','2027-07-29'),(11,5,'2026-07-29','2028-07-29'),(11,6,'2026-07-29','2028-07-29'),(11,7,'2026-07-29','2028-07-29'),(12,1,'2025-06-30','2028-06-30'),(12,2,'2025-06-30','2028-06-30'),(12,3,'2025-06-30','2028-06-30'),(12,4,'2025-06-30','2026-06-30'),(12,5,'2025-06-30','2027-06-30'),(12,6,'2025-06-30','2027-06-30'),(12,7,'2025-06-30','2027-06-30'),(13,1,'2026-07-18','2029-07-18'),(13,2,'2026-07-18','2029-07-18'),(13,3,'2026-07-18','2029-07-18'),(13,4,'2026-07-18','2027-07-18'),(13,5,'2026-07-18','2028-07-18'),(13,6,'2026-07-18','2028-07-18'),(13,7,'2026-07-18','2028-07-18'),(14,1,'2025-01-18','2028-01-18'),(14,2,'2025-01-18','2028-01-18'),(14,3,'2025-01-18','2028-01-18'),(14,4,'2025-01-18','2026-01-18'),(14,5,'2025-01-18','2027-01-18'),(14,6,'2025-01-18','2027-01-18'),(14,7,'2025-01-18','2027-01-18'),(15,1,'2025-10-12','2028-10-12'),(15,2,'2025-10-12','2028-10-12'),(15,3,'2025-10-12','2028-10-12'),(15,4,'2025-10-12','2026-10-12'),(15,5,'2025-10-12','2027-10-12'),(15,6,'2025-10-12','2027-10-12'),(15,7,'2025-10-12','2027-10-12'),(16,1,'2026-04-05','2029-04-05'),(16,2,'2026-04-05','2029-04-05'),(16,3,'2026-04-05','2029-04-05'),(16,4,'2026-04-05','2027-04-05'),(16,5,'2026-04-05','2028-04-05'),(16,6,'2026-04-05','2028-04-05'),(16,7,'2026-04-05','2028-04-05'),(17,1,'2025-08-20','2028-08-20'),(17,2,'2025-08-20','2028-08-20'),(17,3,'2025-08-20','2028-08-20'),(17,4,'2025-08-20','2026-08-20'),(17,5,'2025-08-20','2027-08-20'),(17,6,'2025-08-20','2027-08-20'),(17,7,'2025-08-20','2027-08-20'),(18,1,'2024-12-12','2027-12-12'),(18,2,'2024-12-12','2027-12-12'),(18,3,'2024-12-12','2027-12-12'),(18,4,'2024-12-12','2025-12-12'),(18,5,'2024-12-12','2026-12-12'),(18,6,'2024-12-12','2026-12-12'),(18,7,'2024-12-12','2026-12-12'),(19,1,'2025-05-10','2028-05-10'),(19,2,'2025-05-10','2028-05-10'),(19,3,'2025-05-10','2028-05-10'),(19,4,'2025-05-10','2026-05-10'),(19,5,'2025-05-10','2027-05-10'),(19,6,'2025-05-10','2027-05-10'),(19,7,'2025-05-10','2027-05-10'),(20,1,'2025-09-09','2028-09-09'),(20,2,'2025-09-09','2028-09-09'),(20,3,'2025-09-09','2028-09-09'),(20,4,'2025-09-09','2026-09-09'),(20,5,'2025-09-09','2027-09-09'),(20,6,'2025-09-09','2027-09-09'),(20,7,'2025-09-09','2027-09-09');
/*!40000 ALTER TABLE `employee_certifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `supervisorID` int DEFAULT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `supervisorID` (`supervisorID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`supervisorID`) REFERENCES `employees` (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Michael','Smith',NULL),(2,'Mary','Johnson',1),(3,'John','Williams',1),(4,'Robert','Brown',1),(5,'Jennifer','Jones',2),(6,'David','Garcia',2),(7,'Linda','Miller',2),(8,'Patricia','Davis',3),(9,'James','Rodriguez',3),(10,'Maria','Martinez',3),(11,'James','Whitaker',4),(12,'Ethan ','Marsh',4),(13,'Amelia','Crawford',4),(14,'Lucas ','Pereira',5),(15,'Olivia','Bennett',5),(16,'Mason','Okafor',5),(17,'Logan','Fitzgerald',6),(18,'Sophia','Delgado',6),(19,'Keenan','Thompson',6),(20,'Elizabeth','Johnson',6);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-27 21:00:11
