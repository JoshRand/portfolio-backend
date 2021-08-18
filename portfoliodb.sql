-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: portfoliodb
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `demo` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `technologies` tinyblob,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'-QF4bZye_Ns','An Application to control characters in a video game based on game memory data. ','','../../assets/TAGP/AStarVisualizer2.PNG',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0C#t\0.NETt\0\rWindows Formst\0A* Pathfindingt\0MemoryAccess Libraryt\0\rVisual Studiot\0GitHub','The Automated Game Player'),(2,'fnVsgb1SXU8','An Android Application that controlls a Treadmill based on the users heart rate. ','SeniorProject','../../assets/ST/MafWorkout.png',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Javat\0C/C++t\0Arduinot\0BLEt\0Android Studiot\0GitHub','Smart Treadmill'),(3,'fnVsgb1SXU8','A mock Banking Application used to Deposit, Withdraw, and Transfering funds. ','DollarsBankSpringBootApplication','../../assets/SpringbootBank/TransactionHistory.PNG',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0	t\0Javat\0\nSpringboott\0Jspt\0MySQLt\0\nRest API\"st\0JPAt\0CSSt\0Eclipset\0GitHub','Dollars Bank'),(4,'fnVsgb1SXU8','A Shopping app consisting of only Core Java, and has the option to enable MySQL mode. ','CoreJavaStandAloneShoppingApp','../../assets/ShoppingApp/ShoppingGuest.PNG',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Javat\0JDBCt\0MySQLt\0Eclipset\0GitHub','Core Java Shopping App'),(5,'fnVsgb1SXU8','EnrolleeBackend to provide simple API request routes for the use of manipulating enrollee data in a MongoDB database. ','EnrolleeBackend','../../assets/EB/EnrolleeBackendPostman.PNG',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\0Javat\0\nSpringboott\0Spring Data MongoDBt\0MongoDBt\0Eclipset\0GitHubt\0Postmant\0\rMongoDB Atlas','Enrollee Backend'),(6,'fnVsgb1SXU8','A web portfolio to provide visual and textual information about projects i\"ve made. ','josh-anderson-portfolio','../../assets/Portfolio/PortfolioHome.PNG',_binary '¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0\nt\0Javat\0\nSpringboott\0MySQLt\0Angulart\0Angular Materialt\0Visual Studio Codet\0Eclipset\0GitHubt\0Dockert\0AWS','Portfolio');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2owyvhj2yburrdd1505ps0mp0` (`project_id`),
  CONSTRAINT `FK2owyvhj2yburrdd1505ps0mp0` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
INSERT INTO `slide` VALUES (1,'All Forms','../../assets/TAGP/AllForms.PNG',1),(2,'Player Select Form','../../assets/TAGP/PlayerSelectionMenu.PNG',1),(3,'Fighter Form','../../assets/TAGP/FighterControls.PNG',1),(4,'Healer Form','../../assets/TAGP/PoetControlls.PNG',1),(5,'A* Visualizer 1','../../assets/TAGP/AStarVisualizer1.PNG',1),(6,'A* Visualizer 2','../../assets/TAGP/AStarVisualizer2.PNG',1),(7,'A* Visualizer 3','../../assets/TAGP/AStarVisualizer3.PNG',1),(8,'MemoryAccess Code','../../assets/TAGP/MemAccess.PNG',1),(9,'Memory Hex Data View','../../assets/TAGP/LocationsOfPointersExample.PNG',1),(10,'Main Page','../../assets/ST/MainPage.PNG',2),(11,'MAF Workout Settings','../../assets/ST/MafWorkoutMenu.png',2),(12,'MAF Workout','../../assets/ST/MafWorkout.png',2),(13,'Login','../../assets/SpringbootBank/DollarsBankLogin.PNG',3),(14,'Registration','../../assets/SpringbootBank/RegisterPage.PNG',3),(15,'Home','../../assets/SpringbootBank/HomePage.PNG',3),(16,'Transactions','../../assets/SpringbootBank/TransactionsPage.PNG',3),(17,'Transaction History','../../assets/SpringbootBank/TransactionHistory.PNG',3),(18,'Account Details','../../assets/SpringbootBank/AccountDetails.PNG',3),(19,'Menu','../../assets/ShoppingApp/MainMenu.PNG',4),(20,'Register & Login','../../assets/ShoppingApp/RegisterLogin.PNG',4),(21,'Cart Info','../../assets/ShoppingApp/CartInfo.PNG',4),(22,'Invoice','../../assets/ShoppingApp/Invoice.PNG',4),(23,'Change or Review Order','../../assets/ShoppingApp/ManageOrderChangeItem.PNG',4),(24,'Main Page','../../assets/EB/EnrolleeBackendPostman.PNG',5),(25,'Add Enrollee','../../assets/EB/AddEnrollee.PNG',5),(26,'Delete Enrollee','../../assets/EB/DelEnrollee.PNG',5),(27,'Modify and Get Enrollee','../../assets/EB/ModGetEnrollee.PNG',5),(28,'Add a Dependent','../../assets/EB/AddDependent.PNG',5),(29,'Delete or Patch Dependent','../../assets/EB/DelPatchDependent.PNG',5),(30,'Home Page','../../assets/Portfolio/HomePage.PNG',6),(31,'Projects Page','../../assets/Portfolio/Portfolio.PNG',6),(32,'About Me','../../assets/Portfolio/AboutMe.PNG',6);
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tile`
--

DROP TABLE IF EXISTS `tile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqsqutylv86pnkjvpyvoxwn12l` (`project_id`),
  CONSTRAINT `FKqsqutylv86pnkjvpyvoxwn12l` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tile`
--

LOCK TABLES `tile` WRITE;
/*!40000 ALTER TABLE `tile` DISABLE KEYS */;
INSERT INTO `tile` VALUES (1,'','','','About','text',1),(2,'The Automated Game Player is an application that automatically controls a single character or multiple characters through a series of simulated keystrokes and program memory manipulation. In order to make this possible I needed to create my own library or (DLL) to Access or Modify the game\"s program memory. After that I used a Hex viewer application to find pointer locations in the games memory for: health, mana, position, targets, items, players, and monsters. I used A* pathfinding to find the optimal route from player to monster if the player is a Fighter, and player to player if following another player. Although this project is complete, I still update the control logic and UI from time to time.','','false','','text',1),(3,'','','','Pictures','text',1),(4,'','','','','carousel',1),(5,'','','','Demo','text',1),(6,'','','','','demo',1),(7,'','','','','text',1),(8,NULL,'',NULL,'About','text',2),(9,'The Smart Treadmill project was developed by a team of 5 Computer Engineering students at the University of Houston - Clear Lake. The project solution consists of 2 Arduinos, a Heart Rate Monitor, a Treadmill, and an Android Application. The Smart Treadmill adjusts its speed depending on the heart rate of the user recieved by the HR monitor.','','false','','text',2),(10,NULL,'',NULL,'Pictures','text',2),(11,NULL,'',NULL,'','carousel',2),(12,NULL,'','true','Project Poster','text',2),(13,NULL,'../../assets/ST/ProjectPoster.jpg',NULL,'','image',2),(14,NULL,'',NULL,'','text',2),(15,NULL,'',NULL,'About','text',3),(16,'A mock Banking Application used to Deposit, Withdraw, and Transfering funds. Users may create as many accounts as they desire and transfer money between accounts, deposit, and witdraw from those accounts.','','false','','text',3),(17,NULL,'',NULL,'Pictures','text',3),(18,NULL,'',NULL,'','carousel',3),(19,NULL,'','true','','text',3),(20,NULL,'',NULL,'About','text',4),(21,'The Core Java Shopping App is a pure java based application which uses Collections, streams, and file streams to emulate an ecommerce website. If you don\"t want to use filestreams to save Invoices or Inventory, you can use the main menu option to switch the Dao to save information to a MySQL database.','','false','','text',4),(22,NULL,'',NULL,'Pictures','text',4),(23,NULL,'',NULL,'','carousel',4),(24,NULL,'',NULL,'About','text',5),(25,'EnrolleeBackend is a Java and Spring Boot based web application backend. Its purpose is to provide simple API request routes for the use of manipulating data in a MongoDB database.','','false','','text',5),(26,NULL,'',NULL,'Pictures','text',5),(27,NULL,'',NULL,'','carousel',5),(28,NULL,'',NULL,'About','text',6),(29,'A Web Portfolio to show off what I can do as a Computer Engineer.  I started this project because I wanted to learn more about Angular and TypeScript.','','false','','text',6),(30,NULL,'',NULL,'Pictures','text',6),(31,NULL,'',NULL,'','carousel',6),(32,NULL,'','true','','text',6);
/*!40000 ALTER TABLE `tile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-17  7:18:48
