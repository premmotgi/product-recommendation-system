CREATE DATABASE  IF NOT EXISTS `mallrecommendation` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mallrecommendation`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: mallrecommendation
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `MRP` double NOT NULL,
  `amountpaid` double NOT NULL,
  `productlist` tinyblob,
  `user_userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2E2407551DF893` (`user_userid`),
  CONSTRAINT `FK2E2407551DF893` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,200,200,'¬\í\0ur\0[Ljava.lang.String;­\ÒV\ç\é{G\0\0xp\0\0\0t\06t\07',1);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_text` longtext,
  `comment_Date` datetime DEFAULT NULL,
  `opinion` longtext,
  `score` int(11) NOT NULL,
  `sentiment` varchar(255) DEFAULT NULL,
  `targets` longtext,
  `value` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `user_userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK38A5EE5F51F46D88` (`user_id`),
  KEY `FK38A5EE5F176A3CEC` (`product_id`),
  KEY `FK38A5EE5F551DF893` (`user_userid`),
  CONSTRAINT `FK38A5EE5F176A3CEC` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK38A5EE5F51F46D88` FOREIGN KEY (`user_id`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK38A5EE5F551DF893` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floormaps`
--

DROP TABLE IF EXISTS `floormaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floormaps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `floor` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floormaps`
--

LOCK TABLES `floormaps` WRITE;
/*!40000 ALTER TABLE `floormaps` DISABLE KEYS */;
INSERT INTO `floormaps` VALUES (6,'ground','tv.jpg'),(7,'first','scifi.jpg'),(8,'second','scifi2.jpg'),(9,'third','RUSH-HOUR.jpg'),(10,'fourth','res02.jpg');
/*!40000 ALTER TABLE `floormaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `productCode` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPath` varchar(255) DEFAULT NULL,
  `productPrice` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `productCategory_id` bigint(20) DEFAULT NULL,
  `ownerid` bigint(20) DEFAULT NULL,
  `negative` int(11) DEFAULT NULL,
  `neutral` int(11) DEFAULT NULL,
  `positive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKED8DCCEFCB51464C` (`productCategory_id`),
  CONSTRAINT `FKED8DCCEFCB51464C` FOREIGN KEY (`productCategory_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (6,'Black','fs dhkjs dfjn\r\nsdf hkbjsd, f\r\nsdf oh',NULL,'Moto g4 +','moto-g4plus.jpg','14000','1500',3,6,0,0,0),(7,'Black','es vfjsdb fjs df kdsb fsdk',NULL,'SamSung','tv.jpg','40000','4000',4,7,0,0,0),(9,'black','asdjb askd ',NULL,'bl','moto-g4plus.jpg','1500','1500',3,10,0,0,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (3,'SmartPhone'),(4,'TV'),(5,'Cover'),(6,'Headphones'),(10,'banjo'),(13,'Laptop'),(14,'TShirts'),(16,'Pen'),(17,'Pencils');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'pune','gskarewad@gmail.com','8787878787','Ganesh Karewad','gskarewad','user'),(2,'pune','admin','7878787878','Admin','admin','mainadmin'),(3,'pune','gsk@gmail.com','7878787878','gsk','gsk','user'),(4,'pune','ask@gmail.com','7878787878','gsk','gsk','user'),(5,'TEST','test@g.com','1234567890','test','qwerty','user'),(6,'gyani','gyani@gmail.com','7878787879','gyani','gyani','admin'),(7,'pune','divya@gmail.com','7777777777','divya','divya','admin'),(9,'pune','raju@gmail.com','9876543211','raju','raju','admin'),(10,'pune','shop@gmail.com','8787878787','shop','shop','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mallrecommendation'
--

--
-- Dumping routines for database 'mallrecommendation'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-30 17:06:23
