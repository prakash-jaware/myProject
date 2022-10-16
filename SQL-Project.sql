-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.30

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

-- comment
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Order_Date` date DEFAULT NULL,
  `Product` varchar(50) DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Number_Shipped` int DEFAULT NULL,
  `First` varchar(100) DEFAULT NULL,
  `Last` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2018-10-10','Dell Alienware-M14',1022,14,'Horton','Waterhowse'),(2,'2022-08-05','HP-Spectre',1042,40,'Pieter','Brewis'),(3,'2017-05-11','Dell Vostro-3510',1032,88,'Devinne','Joselson'),(4,'2022-06-05','Asus Chromebooks-14',1013,81,'Huey','Offiler'),(5,'2018-07-30','Dell Vostro-3520',1033,35,'Nevil','Swindin'),(6,'2019-07-26','Asus Vivobook Pro-15',1015,18,'Charmian','Jackalin'),(7,'2017-09-14','Dell XPS-15',1038,77,'Michel','Nibley'),(8,'2020-12-02','Acer Thin & Lightweight-Swift 5',1008,61,'Gretel','Maffy'),(9,'2021-08-01','Dell Alienware-M15',1023,58,'Godwin','Wilmott'),(10,'2018-10-18','Asus Chromebooks-14',1013,81,'Dave','Lushey'),(11,'2021-12-17','Dell G Series-G15',1027,17,'Vanya','Dudin'),(12,'2017-08-01','HP G Series-Omen',1043,15,'Gaye','Cota'),(13,'2019-10-20','Acer Aspire-5',1002,41,'Malvina','Renney'),(14,'2021-04-07','Dell XPS-13-Plus',1037,85,'Giffard','Fessier'),(15,'2018-10-05','Acer-Spin 3',1010,16,'Waylon','Gutsell'),(16,'2021-11-23','Acer Aspire-5',1002,41,'Anestassia','Sargent'),(17,'2020-07-16','Asus Zenbook Duo-13',1018,94,'Prisca','Constanza'),(18,'2017-01-31','HP G Series-Omen',1043,15,'Teena','Keijser'),(19,'2020-10-08','HP G Series-Victus',1045,22,'Frazer','Webermann'),(20,'2020-11-29','HP G Series-Victus',1045,22,'Silvan','Artingstall'),(21,'2019-10-20','Dell Alienware-M15',1023,58,'Bronson','Wilcock'),(22,'2020-10-08','Asus Vivobook Slate-14',1017,46,'Nicolette','Petrelli'),(23,'2022-08-05','Asus Zenbook Flip-13',1019,30,'Godart','Brignell'),(24,'2020-10-08','Asus Zenbook Pro-16',1020,51,'Caddric','Childerhouse'),(25,'2018-07-30','Dell Alienware-X15',1025,76,'Pascale','Winney'),(26,'2019-07-26','Dell Inspiron-14 2-in-1',1028,78,'Killy','Edscer'),(27,'2017-09-14','Dell G Series-G15',1027,17,'Aurie','Slaght'),(28,'2020-12-02','HP-Envy',1040,32,'Mycah','Brockest');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(50) NOT NULL,
  `Part_Number` varchar(100) DEFAULT NULL,
  `Label` varchar(100) DEFAULT NULL,
  `Starting_Inventory` int DEFAULT NULL,
  `Inventory_Received` int DEFAULT NULL,
  `Inventory_Shipped` int DEFAULT NULL,
  `Inventory_On_Hand` int DEFAULT NULL,
  `Minimum_Required` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1046 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1001,'Acer Aspire','3','Acer Aspire-3',18,73,63,8,40),(1002,'Acer Aspire','5','Acer Aspire-5',59,81,41,19,30),(1003,'Acer Aspire','Extensa','Acer Aspire-Extensa',50,65,44,29,21),(1004,'Acer Aspire','Vero','Acer Aspire-Vero',31,17,38,52,14),(1005,'Acer Nitro G','5','Acer Nitro G-5',27,44,49,32,51),(1006,'Acer Nitro G','7','Acer Nitro G-7',68,71,76,73,33),(1007,'Acer Thin & Lightweight','Swift 3','Acer Thin & Lightweight-Swift 3',20,59,16,-23,32),(1008,'Acer Thin & Lightweight','Swift 5','Acer Thin & Lightweight-Swift 5',42,41,61,62,21),(1009,'Acer Thin & Lightweight','Swift X','Acer Thin & Lightweight-Swift X',88,85,92,95,27),(1010,'Acer','Spin 3','Acer-Spin 3',41,18,16,39,17),(1011,'Acer','Spin 5','Acer-Spin 5',95,99,98,94,41),(1012,'Asus Chromebook Flip','13','Asus Chromebook Flip-13',60,78,55,37,33),(1013,'Asus Chromebooks','14','Asus Chromebooks-14',22,45,81,58,47),(1014,'Asus Vivobook Flip','13','Asus Vivobook Flip-13',80,28,53,105,46),(1015,'Asus Vivobook Pro','15','Asus Vivobook Pro-15',77,91,18,4,39),(1016,'Asus Vivobook S','15','Asus Vivobook S-15',17,41,41,17,27),(1017,'Asus Vivobook Slate','14','Asus Vivobook Slate-14',94,54,46,86,11),(1018,'Asus Zenbook Duo','13','Asus Zenbook Duo-13',43,94,94,43,45),(1019,'Asus Zenbook Flip','13','Asus Zenbook Flip-13',95,90,30,35,17),(1020,'Asus Zenbook Pro','16','Asus Zenbook Pro-16',26,56,51,21,43),(1021,'Asus Zenbook S','14','Asus Zenbook S-14',78,83,41,36,34),(1022,'Dell Alienware','M14','Dell Alienware-M14',22,69,14,-33,11),(1023,'Dell Alienware','M15','Dell Alienware-M15',33,92,58,-1,14),(1024,'Dell Alienware','M16','Dell Alienware-M16',58,30,89,117,44),(1025,'Dell Alienware','X15','Dell Alienware-X15',78,71,76,83,32),(1026,'Dell Alienware','X17','Dell Alienware-X17',55,26,47,76,27),(1027,'Dell G Series','G15','Dell G Series-G15',63,89,17,-9,47),(1028,'Dell Inspiron','14 2-in-1','Dell Inspiron-14 2-in-1',76,59,78,95,31),(1029,'Dell Inspiron','14','Dell Inspiron-14',56,42,98,112,49),(1030,'Dell Inspiron','15-3000','Dell Inspiron-15-3000',66,22,86,130,21),(1031,'Dell Inspiron','16','Dell Inspiron-16',78,96,63,45,36),(1032,'Dell Vostro','3510','Dell Vostro-3510',32,52,88,68,20),(1033,'Dell Vostro','3520','Dell Vostro-3520',32,23,35,44,48),(1034,'Dell Vostro','3525','Dell Vostro-3525',90,71,85,104,17),(1035,'Dell XPS','13','Dell XPS-13',17,87,62,-8,30),(1036,'Dell XPS','13','Dell XPS-13',40,75,84,49,46),(1037,'Dell XPS','13-Plus','Dell XPS-13-Plus',41,25,85,101,13),(1038,'Dell XPS','15','Dell XPS-15',39,20,77,96,45),(1039,'Dell XPS','17','Dell XPS-17',37,96,32,-27,11),(1040,'HP ','Envy','HP-Envy',52,15,32,69,46),(1041,'HP ','Pavilion','HP-Pavilion',33,15,12,30,41),(1042,'HP ','Spectre','HP-Spectre',79,73,40,46,45),(1043,'HP G Series','Omen','HP G Series-Omen',74,66,15,23,28),(1044,'HP G Series','Pavilion','HP G Series-Pavilion',61,66,81,76,50),(1045,'HP G Series','Victus','HP G Series-Victus',44,93,22,-27,16);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Purchases_Date` date DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Product_Name` varchar(100) DEFAULT NULL,
  `Number_Received` int DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Supplier_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`),
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`Supplier_ID`) REFERENCES `suppliers` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,'2021-06-16',1044,'HP G Series-Pavilion',66,1,'ShockWave Tech'),(2,'2017-08-12',1009,'Acer Thin & Lightweight-Swift X',85,5,'Alpha Seller'),(3,'2021-03-15',1023,'Dell Alienware-M15',92,8,'Tech Infra'),(4,'2020-03-16',1001,'Acer Aspire-3',73,8,'Tech Infra'),(5,'2017-01-11',1040,'HP-Envy',15,2,'CDW'),(6,'2018-02-16',1022,'Dell Alienware-M14',69,2,'CDW'),(7,'2021-04-26',1037,'Dell XPS-13-Plus',25,7,'Smart Tech'),(8,'2017-02-17',1037,'Dell XPS-13-Plus',25,1,'ShockWave Tech'),(9,'2021-09-09',1009,'Acer Thin & Lightweight-Swift X',85,1,'ShockWave Tech'),(10,'2017-07-26',1038,'Dell XPS-15',20,3,'ACME Tech'),(11,'2019-10-28',1042,'HP-Spectre',73,4,'CloudTail'),(12,'2022-06-20',1018,'Asus Zenbook Duo-13',94,7,'Smart Tech'),(13,'2019-02-24',1014,'Asus Vivobook Flip-13',28,7,'Smart Tech'),(14,'2021-03-11',1023,'Dell Alienware-M15',92,4,'CloudTail'),(15,'2017-10-18',1045,'HP G Series-Victus',93,4,'CloudTail'),(16,'2021-12-04',1003,'Acer Aspire-Extensa',65,2,'CDW'),(17,'2018-08-06',1002,'Acer Aspire-5',81,3,'ACME Tech'),(18,'2018-10-16',1031,'Dell Inspiron-16',96,2,'CDW'),(19,'2018-08-09',1001,'Acer Aspire-3',73,8,'Tech Infra'),(20,'2019-03-17',1034,'Dell Vostro-3525',71,3,'ACME Tech');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Supplier_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'ShockWave Tech'),(2,'CDW'),(3,'ACME Tech'),(4,'CloudTail'),(5,'Alpha Seller'),(6,'Killer Tech'),(7,'Smart Tech'),(8,'Tech Infra');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-28 22:24:11
