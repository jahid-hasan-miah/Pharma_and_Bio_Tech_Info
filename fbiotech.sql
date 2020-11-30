-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: biotechinfo
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `clinical_trial_result`
--

DROP TABLE IF EXISTS `clinical_trial_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinical_trial_result` (
  `Clinical_Trial_Id` int(11) NOT NULL,
  `Drug_Id` int(11) NOT NULL,
  `Test_Result` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Clinical_Trial_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinical_trial_result`
--

LOCK TABLES `clinical_trial_result` WRITE;
/*!40000 ALTER TABLE `clinical_trial_result` DISABLE KEYS */;
INSERT INTO `clinical_trial_result` VALUES (1,2,'3fxgz');
/*!40000 ALTER TABLE `clinical_trial_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinical_trial_sites`
--

DROP TABLE IF EXISTS `clinical_trial_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinical_trial_sites` (
  `Site_Id` int(11) NOT NULL,
  `Catg_Code` int(11) NOT NULL,
  `Trial_Name` varchar(45) NOT NULL,
  `Description` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Site_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinical_trial_sites`
--

LOCK TABLES `clinical_trial_sites` WRITE;
/*!40000 ALTER TABLE `clinical_trial_sites` DISABLE KEYS */;
INSERT INTO `clinical_trial_sites` VALUES (1,34354,'joyh','dr');
/*!40000 ALTER TABLE `clinical_trial_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinical_trials`
--

DROP TABLE IF EXISTS `clinical_trials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinical_trials` (
  `Trial_Id` int(11) NOT NULL,
  `Trial_Site_Id` int(11) NOT NULL,
  `Dept_Id` int(11) NOT NULL,
  `Trial_Date` date NOT NULL,
  `Trial_Title` varchar(60) NOT NULL,
  PRIMARY KEY (`Trial_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinical_trials`
--

LOCK TABLES `clinical_trials` WRITE;
/*!40000 ALTER TABLE `clinical_trials` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinical_trials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `Dept_Id` int(11) NOT NULL,
  `Hospital_Id` int(11) NOT NULL,
  `Dept_Name` varchar(25) NOT NULL,
  `Contact` varchar(25) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Dept_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (2,2,'easd','aww','sada');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugs` (
  `Drug_Id` int(11) NOT NULL,
  `Company_Id` int(11) NOT NULL,
  `Drug_Name` varchar(15) NOT NULL,
  `Drug_description` varchar(45) DEFAULT NULL,
  `Price` varchar(10) NOT NULL,
  PRIMARY KEY (`Drug_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
INSERT INTO `drugs` VALUES (1,3,'fgg','sf','sfs');
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `Hospital_Id` int(11) NOT NULL,
  `Hospital_Name` varchar(45) NOT NULL,
  `Hospital_Contact` varchar(20) NOT NULL,
  `Email` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Hospital_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'United Hospital Limited','02-8836000445','info@uhlbd.com');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management`
--

DROP TABLE IF EXISTS `management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management` (
  `Id` int(11) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management`
--

LOCK TABLES `management` WRITE;
/*!40000 ALTER TABLE `management` DISABLE KEYS */;
INSERT INTO `management` VALUES (1,'joyh','12345'),(2,'Neha','123'),(3,'Samiha','1234'),(4,'hasan','123'),(5,'Juwel','234');
/*!40000 ALTER TABLE `management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmaceuticals_company`
--

DROP TABLE IF EXISTS `pharmaceuticals_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pharmaceuticals_company` (
  `Company_Id` int(11) NOT NULL,
  `Company_Name` varchar(45) NOT NULL,
  `Contact` varchar(25) NOT NULL,
  PRIMARY KEY (`Company_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmaceuticals_company`
--

LOCK TABLES `pharmaceuticals_company` WRITE;
/*!40000 ALTER TABLE `pharmaceuticals_company` DISABLE KEYS */;
INSERT INTO `pharmaceuticals_company` VALUES (1,'ear','afa');
/*!40000 ALTER TABLE `pharmaceuticals_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_category`
--

DROP TABLE IF EXISTS `site_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_category` (
  `Catg_Code` int(11) NOT NULL,
  `Catg_Name` varchar(45) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Catg_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_category`
--

LOCK TABLES `site_category` WRITE;
/*!40000 ALTER TABLE `site_category` DISABLE KEYS */;
INSERT INTO `site_category` VALUES (1,'s','df');
/*!40000 ALTER TABLE `site_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 19:52:07
