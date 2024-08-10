-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: ems
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Alabama','Alabama City'),(2,'Texus','Texus City'),(3,'NY','NY City'),(4,'NY','NY City'),(5,'NY','NY City'),(6,'NY','NY City'),(7,'NY','Texus'),(8,'Texus','Texus'),(9,'Texus','Texus'),(10,'Alabama','Alabama'),(11,'Alabama','Alabama'),(12,'MP','Bhopal'),(13,'Alabama','Alabama'),(14,'NY','NY'),(15,'Texus','Tx'),(16,'Ohio','columbus'),(17,'NY','NY City'),(18,'NY','NY City'),(19,'A','B'),(20,'Alabama test','Alabama test'),(21,'pune','pune'),(22,'Alabama100','Alabama100'),(23,'TX','tx'),(24,'Alabama','ny'),(25,'WB-kolkata','Kolkata'),(26,'WB','kolkata'),(27,'s','c'),(28,'NY','Alabama'),(29,'Alabama','Alabama ny'),(30,'Alabama','Alabama'),(31,'Alabama','a'),(32,'Alabama','a'),(33,'Alabama','a'),(34,'NY','ny'),(35,'NY','NY'),(36,'NY','NY'),(37,'JH','bokaro'),(38,'JH','bokaro'),(39,'WB','kollkata'),(40,'JH','bokaro100'),(41,'WB','Manberia'),(42,'WB','Manberia'),(43,'WB','Manberia'),(44,'WB','kolkata'),(45,'WB','kolkata'),(46,'WB','kolkata'),(47,'WB','kolkata'),(48,'WB','kolkata'),(49,'Alabama','Alabama'),(50,'NY','NY'),(51,'WB','Kolkata'),(52,'WB','Kolkata'),(53,'WB','Kolkata'),(54,'tx','houston'),(55,'NY','NY'),(56,'Lisban','Lisban'),(57,'Lisban','Lisban'),(58,NULL,'Kolkata'),(59,'test500','koltest500'),(60,'WB','GobarDanga'),(61,'tcc','tdd');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_address_idx` (`address_id`),
  CONSTRAINT `fk_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'somnath biswas',50000,1),(2,'Manoj Gupta',100000,2),(3,'Jhon Gril',120000,3),(4,'Binita',120000,4),(5,'Binita pillai',120000,5),(6,'Himashi ',120000,6),(7,'Hanan',60000,7),(8,'somnath',60000,8),(9,'somnath',60000,9),(10,'Anu',70000,10),(11,'Hanan',50000,11),(12,'sailash',50000,12),(13,'somnathTest',50000,13),(14,'somnath',60000,14),(15,'somnath',50000,15),(16,'yeshi',20000,16),(17,'Himashi ',120000,17),(18,'Himashi ',120000,18),(19,'susanto',40000,19),(20,'Somnath Biswas test',NULL,20),(21,'test10',50000,21),(22,'somnathTest100',50000,22),(23,'nirbhay test',50000,23),(24,'somnath biswas',70000,25),(25,'somnath Angular',70000,26),(26,'s',20000,27),(27,'Chris Miller',90000,28),(28,'chris miller test',80000,29),(29,'Chris Miller Angular',60000,30),(30,'Somnath debug1',90000,31),(31,'Somnath debug1',90000,32),(32,'Somnath debug1',90000,33),(33,'Ayon Vai',50000,34),(35,'Yang',50000,36),(37,'sonu',50000,38),(38,' ',9000,39),(39,'yang100',50000,40),(41,'somnath100',200000,42),(42,'yang1000',200000,43),(43,'session',1,44),(44,'session',1,45),(45,'session',1,46),(46,'session',1,47),(47,'session',1,48),(48,'Anderw',50000,49),(49,'Alex ',50000,50),(50,'somnath',80000,51),(51,'somnath100',80000,52),(52,'junsik',80000,53),(53,'testNirmal',60000,54),(54,'Anindita',60000,55),(55,'Adam ',NULL,56),(57,'somnath',NULL,58),(58,'test500',80000,59),(59,'Agnibha',80000,60),(60,'sscc',888,61);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ems'
--
/*!50003 DROP PROCEDURE IF EXISTS `moinak_da` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `moinak_da`()
BEGIN
CREATE TEMPORARY TABLE IF NOT EXISTS TempTable (myid int, myfield varchar(100)); 

INSERT INTO TempTable SELECT employee.emp_id, employee.name FROM employee;


CREATE TEMPORARY TABLE IF NOT EXISTS TempTable1 (myid int);
 INSERT INTO TempTable1  (select emp_id from employee where emp_id in (select myid from TempTable) for update);
 select * from TempTable1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Nth_Value` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Nth_Value`(in l int ,in o int)
BEGIN
SELECT DISTINCT salary AS s
FROM employee
ORDER BY salary DESC
LIMIT l
OFFSET o;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-10 17:27:10
