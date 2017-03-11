CREATE DATABASE  IF NOT EXISTS `finalproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `finalproject`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercises` (
  `exercise_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `instructions` text,
  `video_url` varchar(100) DEFAULT NULL,
  `fk_muscle1_id` int(11) DEFAULT NULL,
  `fk_muscle2_id` int(11) DEFAULT NULL,
  `fk_muscle3_id` int(11) DEFAULT NULL,
  `fk_muscle4_id` int(11) DEFAULT NULL,
  `fk_muscle5_id` int(11) DEFAULT NULL,
  `fk_muscle6_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`exercise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muscles`
--

DROP TABLE IF EXISTS `muscles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muscles` (
  `m_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `img_filepath` varchar(100) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muscles`
--

LOCK TABLES `muscles` WRITE;
/*!40000 ALTER TABLE `muscles` DISABLE KEYS */;
INSERT INTO `muscles` VALUES (1,'Abs','\\images\\muscles\\abs.jpg'),(2,'Biceps','\\images\\muscles\\biceps.jpg'),(3,'Calves','\\images\\muscles\\calves.jpg'),(4,'Chest','\\images\\muscles\\chest.jpg'),(5,'Forearms','\\images\\muscles\\forearms.jpg'),(6,'Glutes','\\images\\muscles\\glutes.jpg'),(7,'Hamstrings','\\images\\muscles\\hamstrings.jpg'),(8,'Lats','\\images\\muscles\\lats.jpg'),(9,'Lower Back','\\images\\muscles\\back_lower.jpg'),(10,'Middle Back','\\images\\muscles\\back_middle.jpg'),(11,'Quads','\\images\\muscles\\quads.jpg'),(12,'Shoulders','\\images\\muscles\\shoulders.jpg'),(13,'Traps','\\images\\muscles\\traps.jpg'),(14,'Triceps','\\images\\muscles\\triceps.jpg');
/*!40000 ALTER TABLE `muscles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_day`
--

DROP TABLE IF EXISTS `workout_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workout_day` (
  `workout_day_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_ex1_id` int(11) DEFAULT NULL,
  `e1_sets` int(11) DEFAULT NULL,
  `e1_reps` int(11) DEFAULT NULL,
  `e1_weight` float DEFAULT NULL,
  `e1_dist` float DEFAULT NULL,
  `e1_dur` time DEFAULT NULL,
  `e1_rest` time DEFAULT NULL,
  `fk_ex2_id` int(11) DEFAULT NULL,
  `e2_sets` int(11) DEFAULT NULL,
  `e2_reps` int(11) DEFAULT NULL,
  `e2_weight` float DEFAULT NULL,
  `e2_dist` float DEFAULT NULL,
  `e2_dur` time DEFAULT NULL,
  `e2_rest` time DEFAULT NULL,
  `fk_ex3_id` int(11) DEFAULT NULL,
  `e3_sets` int(11) DEFAULT NULL,
  `e3_reps` int(11) DEFAULT NULL,
  `e3_weight` float DEFAULT NULL,
  `e3_dist` float DEFAULT NULL,
  `e3_dur` time DEFAULT NULL,
  `e3_rest` time DEFAULT NULL,
  `fk_ex4_id` int(11) DEFAULT NULL,
  `e4_sets` int(11) DEFAULT NULL,
  `e4_reps` int(11) DEFAULT NULL,
  `e4_weight` float DEFAULT NULL,
  `e4_dist` float DEFAULT NULL,
  `e4_dur` time DEFAULT NULL,
  `e4_rest` time DEFAULT NULL,
  `fk_ex5_id` int(11) DEFAULT NULL,
  `e5_sets` int(11) DEFAULT NULL,
  `e5_reps` int(11) DEFAULT NULL,
  `e5_weight` float DEFAULT NULL,
  `e5_dist` float DEFAULT NULL,
  `e5_dur` time DEFAULT NULL,
  `e5_rest` time DEFAULT NULL,
  `fk_ex6_id` int(11) DEFAULT NULL,
  `e6_sets` int(11) DEFAULT NULL,
  `e6_reps` int(11) DEFAULT NULL,
  `e6_weight` float DEFAULT NULL,
  `e6_dist` float DEFAULT NULL,
  `e6_dur` time DEFAULT NULL,
  `e6_rest` time DEFAULT NULL,
  `fk_ex7_id` int(11) DEFAULT NULL,
  `e7_sets` int(11) DEFAULT NULL,
  `e7_reps` int(11) DEFAULT NULL,
  `e7_weight` float DEFAULT NULL,
  `e7_dist` float DEFAULT NULL,
  `e7_dur` time DEFAULT NULL,
  `e7_rest` time DEFAULT NULL,
  `fk_ex8_id` int(11) DEFAULT NULL,
  `e8_sets` int(11) DEFAULT NULL,
  `e8_reps` int(11) DEFAULT NULL,
  `e8_weight` float DEFAULT NULL,
  `e8_dist` float DEFAULT NULL,
  `e8_dur` time DEFAULT NULL,
  `e8_rest` time DEFAULT NULL,
  `fk_ex9_id` int(11) DEFAULT NULL,
  `e9_sets` int(11) DEFAULT NULL,
  `e9_reps` int(11) DEFAULT NULL,
  `e9_weight` float DEFAULT NULL,
  `e9_dist` float DEFAULT NULL,
  `e9_dur` time DEFAULT NULL,
  `e9_rest` time DEFAULT NULL,
  `fk_ex10_id` int(11) DEFAULT NULL,
  `e10_sets` int(11) DEFAULT NULL,
  `e10_reps` int(11) DEFAULT NULL,
  `e10_weight` float DEFAULT NULL,
  `e10_dist` float DEFAULT NULL,
  `e10_dur` time DEFAULT NULL,
  `e10_rest` time DEFAULT NULL,
  PRIMARY KEY (`workout_day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_day`
--

LOCK TABLES `workout_day` WRITE;
/*!40000 ALTER TABLE `workout_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `workout_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_plan`
--

DROP TABLE IF EXISTS `workout_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workout_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `desc` text,
  `diff` int(11) DEFAULT NULL,
  `weeks` int(11) DEFAULT NULL,
  `fk_workout_sun` int(11) DEFAULT NULL,
  `fk_workout_mon` int(11) DEFAULT NULL,
  `fk_workout_tue` int(11) DEFAULT NULL,
  `fk_workout_wed` int(11) DEFAULT NULL,
  `fk_workout_thu` int(11) DEFAULT NULL,
  `fk_workout_fri` int(11) DEFAULT NULL,
  `fk_workout_sat` int(11) DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_plan`
--

LOCK TABLES `workout_plan` WRITE;
/*!40000 ALTER TABLE `workout_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `workout_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-11 17:46:13
