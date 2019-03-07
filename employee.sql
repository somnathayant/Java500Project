-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pin` int(10) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (3,NULL,NULL,'alabama'),(4,NULL,NULL,'alabama qq'),(5,22,'ss','texus'),(6,99,'',''),(7,11,'qq','arab'),(8,22,'qq','qq'),(9,44,'qq','qq'),(10,77,'qq','aa'),(11,11,'aa','aa'),(12,22,'ww','wwqq'),(13,NULL,NULL,'ww'),(14,11,'wb','dg'),(15,NULL,NULL,'h'),(16,44,'Texus','texus city '),(17,44,'TEXUS','arab'),(18,55,'Texus1','texus 1 city'),(19,NULL,NULL,'NY11'),(20,NULL,NULL,'Miami'),(21,NULL,NULL,'NY'),(22,NULL,NULL,'Ny'),(23,NULL,NULL,'miami'),(24,NULL,NULL,'London1'),(25,NULL,NULL,''),(26,NULL,NULL,''),(27,NULL,NULL,''),(28,NULL,NULL,''),(29,NULL,NULL,''),(30,223223,'texus','texus'),(31,123456,'texus','alabama'),(32,222222,'alabama','alabama'),(33,123456,'alabama','alabama'),(34,122334,'texus','alabama'),(35,123412,'alabama','alabama'),(36,121212,'alabama','alabama'),(37,2212212,'alabama','alabama'),(38,NULL,NULL,'texus'),(39,11,'texus','alabama'),(40,NULL,NULL,'texus1'),(41,NULL,NULL,'alabama'),(42,NULL,NULL,'texus'),(43,11,'texus','texus'),(44,22,'texus','texus22'),(45,NULL,NULL,'alabama11'),(46,44,'texus','dalls'),(47,12,'texus','texus'),(48,121212,'alabama','dalls'),(49,222233,'alabama','dalls'),(50,222,'alabama','alabama1'),(51,NULL,NULL,'alabama1'),(52,NULL,NULL,'alabama'),(53,NULL,NULL,'texus'),(54,NULL,NULL,'alabama'),(55,NULL,NULL,'test1'),(56,NULL,NULL,'test1'),(57,NULL,NULL,'test5'),(58,NULL,NULL,'test5'),(59,NULL,NULL,'alabama'),(60,NULL,NULL,'alabama'),(61,22,'q','q'),(62,33,'test','test'),(63,22,'w','w'),(64,22,'w','w'),(65,NULL,NULL,'selenium City'),(66,NULL,NULL,'selenium City'),(67,NULL,NULL,'selenium City'),(68,221133,'Alabama','Alabama');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (1,'comp.Sc');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `addressId` int(10) DEFAULT NULL,
  `deptID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_idx` (`addressId`),
  KEY `fk_dept_idx` (`deptID`),
  CONSTRAINT `fk_address` FOREIGN KEY (`addressId`) REFERENCES `Address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_dept` FOREIGN KEY (`deptID`) REFERENCES `dept` (`deptId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (15,'admin','admin','ww',4,NULL),(16,'admin','admin','ss@gmail.com',5,NULL),(17,'admin','admin','',6,NULL),(18,'admin','admin','db@gmail.com',7,NULL),(19,'admin','admin','bb@gmail.com',8,NULL),(20,'admin','admin','nn',9,NULL),(21,'admin','admin','qq',10,NULL),(22,'admin','admin','aa',11,NULL),(23,'admin','admin','ww',12,NULL),(24,'admin123','admin','dd',13,NULL),(25,'JOY11','som007','som001@gmail.com',14,NULL),(26,'hibernate','hiber007','hibe',15,NULL),(27,'Hibernate10','Hiber007','hiber@gmail.com',16,NULL),(28,'raju','raju007','raju@gmail.com',17,NULL),(29,'Jack','jack009','jack@gmail.com',NULL,NULL),(30,'hibernate100',NULL,NULL,NULL,NULL),(32,'somnath','somu','somnath_hibernate009',19,NULL),(33,'Stac',NULL,'st@gmail.com',20,NULL),(34,'sam007','samy','samy@gmail.com',21,NULL),(35,'Stacyoo9',NULL,'st@gmail.com',22,NULL),(36,'samdtd','','samy@gmail.com',23,NULL),(37,'class Java ','java007','java@gmail.com',24,NULL),(38,'admin','admin','',25,NULL),(39,'','admin','',26,NULL),(40,'','admin','',27,NULL),(41,'admin','admin','',28,NULL),(42,'somnath','somnath','',29,NULL),(43,'somnath077','somnath007','som@gmail.com',30,NULL),(44,'Faysal Sagar','Faysal008','Faysal@gmail.com',31,NULL),(45,'sam','samoo7','sam@gmail.com',32,NULL),(46,'Archi','Archi007','Arch@gmail.com',33,NULL),(47,'Archi','Archi','Archi@gmail.co m',34,NULL),(48,'somu','somu007','som@gmail.com',35,NULL),(49,'sam','sam009','sam@gmail.com',36,NULL),(50,'admin11111','admin','Archi@gmail.co m',37,NULL),(51,'somnath Biswas','somnath','biswassomnath39@gmail.com',38,NULL),(52,'java1','java007','java@gmail.com',39,NULL),(53,'Shagun Pandey','shagun','Sh@gmail.com',40,NULL),(54,'mark Shayng','mark','m@gmail.com',41,NULL),(55,'Rachna Ramachandran','Rachna','Rachna@gmail.com`',42,NULL),(56,'sulav shakya','sulav','sulav11@gmail.com',43,NULL),(57,'Dolma','dolma','dolma11@gmail.com',44,NULL),(58,'somu','somu','sulav@gmail.com',45,NULL),(59,'Hirendra Dubey','12345','h11@gmail.com',46,NULL),(60,'Mark','mark','mark@gmail.com',47,NULL),(61,'james1','james','jam@gmail.com',48,NULL),(62,'sam11','sam','sam@gmail.com',49,NULL),(63,'mander','mander','man@gmail.com',50,NULL),(64,'somu001','somu','sam@gmail.com',51,NULL),(65,'test1','test1','test@gmail.com',52,NULL),(66,'jit','jit','j@gmail.com',53,NULL),(67,'priti','priti007','p@gmail.com',54,NULL),(68,'test1','admin','test1',55,NULL),(69,'test4','admin','test1',56,NULL),(70,'test66','admin','test5',57,NULL),(71,'test5','admin','test5',58,NULL),(72,'prashant','p007','p1@gmail.com',59,NULL),(73,'prashant','p007','p1@gmail.com',60,NULL),(74,'nikita','admin','niki@gmail.com',61,NULL),(75,'hafsa','admin','hafsa@gmail.com',62,NULL),(76,'admin','admin','java@gmail.com',63,NULL),(77,'javabatch','admin','java@gmail.com',64,NULL),(78,'selenium kumar','abc@123','selenium@gmail.com',65,NULL),(79,'selenium kumar','abc@123','selenium@gmail.com',66,NULL),(80,'abc','selenium@123','selenium@gmail.com',67,NULL),(81,'Somnath Biswas',NULL,'som@gmail.com',68,1);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `Name` varchar(45) DEFAULT NULL,
  `Roll` int(10) DEFAULT NULL,
  `student_Id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`student_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-08  4:31:59
