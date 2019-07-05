CREATE DATABASE  IF NOT EXISTS `getfit` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `getfit`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: getfit
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'Sendentary'),(2,'Light Activity'),(3,'Moderate Activity'),(4,'Very Active');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `catType` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'breakfast'),(2,'lunch'),(3,'dinner'),(4,'snack');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dailymealplan`
--

DROP TABLE IF EXISTS `dailymealplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dailymealplan` (
  `dailyMealplan_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `breakfast` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL,
  `snack` int(11) NOT NULL,
  `mealPlan_id` int(11) NOT NULL,
  `dayofweek` varchar(45) NOT NULL,
  PRIMARY KEY (`dailyMealplan_id`),
  KEY `fk_dailyMealplan_MealPlan1_idx` (`mealPlan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailymealplan`
--

LOCK TABLES `dailymealplan` WRITE;
/*!40000 ALTER TABLE `dailymealplan` DISABLE KEYS */;
INSERT INTO `dailymealplan` VALUES (1,4,3,1,2,1,'Monday'),(2,4,3,1,2,1,'Tuesday'),(3,4,3,1,2,1,'Wednesday'),(4,4,3,1,2,1,'Thursday'),(5,4,3,1,2,1,'Friday'),(6,4,3,1,2,1,'Saturday'),(7,4,3,1,2,1,'Sunday'),(8,4,3,1,2,2,'Monday'),(9,4,3,1,2,2,'Tuesday'),(10,4,3,1,2,2,'Wednesday'),(11,4,3,1,2,2,'Thursday'),(12,4,3,1,2,2,'Friday'),(13,4,3,1,2,2,'Saturday'),(14,4,3,1,2,2,'Sunday'),(15,4,5,1,2,3,'Monday'),(16,4,5,1,2,3,'Tuesday'),(17,4,5,1,2,3,'Wednesday'),(18,4,5,1,2,3,'Thursday'),(19,4,5,1,2,3,'Friday'),(20,4,5,1,2,3,'Saturday'),(21,4,5,1,2,3,'Sunday');
/*!40000 ALTER TABLE `dailymealplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diettype`
--

DROP TABLE IF EXISTS `diettype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diettype` (
  `diet_id` int(11) NOT NULL AUTO_INCREMENT,
  `dietType` varchar(45) NOT NULL,
  PRIMARY KEY (`diet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diettype`
--

LOCK TABLES `diettype` WRITE;
/*!40000 ALTER TABLE `diettype` DISABLE KEYS */;
INSERT INTO `diettype` VALUES (1,'vegan'),(2,'pescatarian'),(3,'dairy free'),(4,'vegetarian'),(5,'gluten free');
/*!40000 ALTER TABLE `diettype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal` (
  `goal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`goal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (1,'Weight Loss'),(2,'Weight Gain');
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `ingredient_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `protein` int(11) NOT NULL,
  `carbs` int(11) NOT NULL,
  `fat` int(11) NOT NULL,
  `cal` int(11) NOT NULL,
  `qty` float NOT NULL,
  `unit` varchar(45) NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'chicken',50,0,3,151,100,'gram'),(2,'rice',2,20,1,97,100,'gram'),(3,'orange juice',2,26,0,112,237,'milliliter'),(4,'brocolli',6,12,3,31,150,'kilogram'),(5,'banana',10,62,5,797,50,'gram'),(6,'granola',5,30,0,123,50,'kilogram'),(7,'yoghurt',20,0,10,55,123,'kilogram'),(8,'tuna',7,20,25,120,100,'kilogram'),(9,'lettuce',0,2,0,20,5,'kilogram');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal`
--

DROP TABLE IF EXISTS `meal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meal` (
  `meal_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `totalP` int(11) NOT NULL,
  `totalC` int(11) NOT NULL,
  `totalF` int(11) NOT NULL,
  `totalCal` int(11) NOT NULL,
  `method` text NOT NULL,
  PRIMARY KEY (`meal_id`),
  KEY `fk_meal_Category1_idx` (`category_id`),
  CONSTRAINT `fk_meal_Category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal`
--

LOCK TABLES `meal` WRITE;
/*!40000 ALTER TABLE `meal` DISABLE KEYS */;
INSERT INTO `meal` VALUES (1,'chicken fried rice','meal.jpg',3,52,12,4,205,'Ingredients \r\nServes: 2\r\n1 tablespoon water\r\n150g cooked white rice, cold\r\n150g cooked chicken meat, chopped\r\n300g brocoll\r\n\r\nMethod\r\nPrep:5min  ›  Cook:10min  ›  Ready in:15min \r\n\r\n1. Clean and wash chicken breast\r\n2. Boil rice\r\n3. cook in frying pan and add brocolli. Serve hot.'),(2,'banana ','banana.jpg',4,10,62,5,797,'n/a'),(3,'tune salad','1391769187151.jpeg',2,7,22,25,140,'fhfjffkuyfuyj'),(4,'granola','triple-coconut-granola-1.jpg',1,36,96,10,449,'put in a bowl'),(5,'yoghurt','1391769187151.jpeg',2,6,12,3,31,'fdssafa');
/*!40000 ALTER TABLE `meal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal_has_diettype`
--

DROP TABLE IF EXISTS `meal_has_diettype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meal_has_diettype` (
  `Meal_meal_id` int(11) NOT NULL,
  `DietType_diet_id` int(11) NOT NULL,
  PRIMARY KEY (`Meal_meal_id`,`DietType_diet_id`),
  KEY `fk_Meal_has_DietType_DietType1` (`DietType_diet_id`),
  CONSTRAINT `fk_Meal_has_DietType_DietType1` FOREIGN KEY (`DietType_diet_id`) REFERENCES `diettype` (`diet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Meal_has_DietType_Meal1` FOREIGN KEY (`Meal_meal_id`) REFERENCES `meal` (`meal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_has_diettype`
--

LOCK TABLES `meal_has_diettype` WRITE;
/*!40000 ALTER TABLE `meal_has_diettype` DISABLE KEYS */;
INSERT INTO `meal_has_diettype` VALUES (4,1),(1,2),(2,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(2,4),(4,4),(2,5),(3,5);
/*!40000 ALTER TABLE `meal_has_diettype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal_has_ingredient`
--

DROP TABLE IF EXISTS `meal_has_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meal_has_ingredient` (
  `meal_meal_id` int(11) NOT NULL,
  `ingredient_ingredient_id` int(11) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  PRIMARY KEY (`meal_meal_id`,`ingredient_ingredient_id`,`quantity`),
  KEY `fk_meal_has_ingridient_ingridient1_idx` (`ingredient_ingredient_id`),
  KEY `fk_meal_has_ingridient_meal1_idx` (`meal_meal_id`),
  CONSTRAINT `fk_meal_has_ingridient_ingridient1` FOREIGN KEY (`ingredient_ingredient_id`) REFERENCES `ingredient` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_meal_has_ingridient_meal1` FOREIGN KEY (`meal_meal_id`) REFERENCES `meal` (`meal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_has_ingredient`
--

LOCK TABLES `meal_has_ingredient` WRITE;
/*!40000 ALTER TABLE `meal_has_ingredient` DISABLE KEYS */;
INSERT INTO `meal_has_ingredient` VALUES (1,1,'100'),(1,2,'50'),(1,4,'25'),(5,4,'150'),(2,5,'50'),(4,6,'160'),(4,7,'123'),(3,8,'100'),(3,9,'5');
/*!40000 ALTER TABLE `meal_has_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mealplan`
--

DROP TABLE IF EXISTS `mealplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mealplan` (
  `mealPlan_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `profile_id` varchar(45) NOT NULL,
  PRIMARY KEY (`mealPlan_id`),
  KEY `fk_MealPlan_Profile1_idx` (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mealplan`
--

LOCK TABLES `mealplan` WRITE;
/*!40000 ALTER TABLE `mealplan` DISABLE KEYS */;
INSERT INTO `mealplan` VALUES (1,'mealplan1','2018-04-01','fsdfsdf','1'),(2,',ealplan2','2018-04-01','dsfa','1'),(3,'dsdsa','2018-04-02','fwfewfe','2');
/*!40000 ALTER TABLE `mealplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `goal` varchar(45) NOT NULL,
  `activity` varchar(45) NOT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `profileProtein` int(11) NOT NULL,
  `profileCarbs` int(11) NOT NULL,
  `profileFat` int(11) NOT NULL,
  `profileCal` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(45) NOT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `fk_Profile_user1_idx` (`user_id`),
  CONSTRAINT `fk_Profile_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (2,'1','4',130,155,2,236,282,77,2764,21,'Female');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_has_diettype`
--

DROP TABLE IF EXISTS `profile_has_diettype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_has_diettype` (
  `Profile_profile_id` int(11) NOT NULL,
  `DietType_diet_id` int(11) NOT NULL,
  PRIMARY KEY (`Profile_profile_id`,`DietType_diet_id`),
  KEY `fk_Profile_has_DietType_DietType1_idx` (`DietType_diet_id`),
  KEY `fk_Profile_has_DietType_Profile_idx` (`Profile_profile_id`),
  CONSTRAINT `fk_Profile_has_DietType_DietType1` FOREIGN KEY (`DietType_diet_id`) REFERENCES `diettype` (`diet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Profile_has_DietType_Profile1` FOREIGN KEY (`Profile_profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_has_diettype`
--

LOCK TABLES `profile_has_diettype` WRITE;
/*!40000 ALTER TABLE `profile_has_diettype` DISABLE KEYS */;
INSERT INTO `profile_has_diettype` VALUES (2,2);
/*!40000 ALTER TABLE `profile_has_diettype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `user_type` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jack','jack@hotmail.com','21232f297a57a5a743894a0e4a801fc3','jack','smith','1997-02-16','admin'),(2,'sm','sas@dsd.com','202cb962ac59075b964b07152d234b70','sm','m','1997-08-01','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-10 12:21:19
