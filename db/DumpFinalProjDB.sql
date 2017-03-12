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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'Bench Press','<p><b>Step 1:</b> Lie on your back on a flat bench. Lift the bar off the rack and hold it straight over you, keeping your arms locked. This is the starting position.</p>\n<p><b>Step 2:</b> Next, inhale and bring the barbell down in a slow and controlled manner until it reaches your mid-chest.</p>\n<p><b>Step 3:</b> Pause briefly before raising the barbell back to your starting position as you exhale. Your focus should be on using your chest muscles to move the bar. Lock your arms at the top of the movement and squeeze your chest before slowly bringing the barbell down again. This step should take twice as long raising the weight to get the maximum benefit.</p>\n<p><b>Step 4:</b> Repeat the movement for the desired number of repetitions.</p>\n<p><b>Step 5:</b> The final step in the exercise is to place the barbell on the rack.</p>',NULL,4,12,14,NULL,NULL,NULL),(2,'Machine Military Press','<p><b>Step 1:</b> Sit down on the shoulder press machine. Select the weight you want to use.</p>\n<p><b>Step 2:</b> Grasp the handles, keeping your elbows bent. They should be in line with your torso. This is the starting position.</p>\n<p><b>Step 3:</b> Lift the handles and extend your arms fully. Exhale as you do so. Hold the contraction when you get to the top of the position.</p>\n<p><b>Step 4:</b> Lower the handles slowly down to the starting position. Inhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the desired number of reps.</p>',NULL,12,14,NULL,NULL,NULL,NULL),(3,'Tricep Pushdown','<p><b>Step 1:</b> Feet shoulder width apart, face a high pulley machine with an attached bar at shoulder level height and grasp it with your palms facing down (pronated). Hold the bar close to your chest for your starting position.</p>\n<p><b>Step 2:</b> Keeping your body stationary, exhale as you lower the bar by completely extending your arms downward until the bar touches your thighs.</p>\n<p><b>Step 3:</b> Hold for a moment and then inhale as you slowly return the bar to shoulder level.</p>\n<p><b>Step 4:</b> Repeat for a complete set.</p>',NULL,14,NULL,NULL,NULL,NULL,NULL),(4,'Push-Up','<p><b>Step 1:</b> Lie on an exercise floor mat, face down.</p>\n<p><b>Step 2:</b> Press your toes against the floor and place your hands flat on the ground shoulder width apart, fingers extended forward.</p>\n<p><b>Step 3:</b> Push yourself up so that your arms are nearly extended and your torso and legs are off the floor. This is your starting position.</p>\n<p><b>Step 4:</b> Inhaling, bend your arms to lower your body and touch your chest nearly to the floor.</p>\n<p><b>Step 5:</b> Exhaling, contract your chest as you push off the ground and return to the starting position.</p>\n<p><b>Step 6:</b> Pause for a moment and then repeat for a full set.</p>',NULL,1,4,12,14,NULL,NULL),(5,'Elliptical Trainer','<p><b>Step 1:</b> Step onto the elliptical trainer machine and choose the option you wish to use from the menu. You can select a set program or you can use the manual settings. You may be asked to enter your age and weight so that you can get an estimate of the number of calories you burn during your workout.</p>\n<p><b>Step 2:</b> Grasp the handles while using the machine. This feature helps by monitoring your heart rate to make sure that you are working out in your target range.</p>',NULL,3,6,7,11,NULL,NULL),(6,'Squat','<p><b>Step 1:</b> Using a squat rack, place the barbell at shoulder height.</p>\n<p><b>Step 2:</b> Turn around so that the barbell is below your neck and behind your shoulders.</p>\n<p><b>Step 3:</b> With your arms positioned wide on the barbell, push up with your legs and straighten up to lift the barbell onto your back.</p>\n<p><b>Step 4:</b> Step forward and place your feet shoulder width apart with your toes pointing slightly outward.</p>\n<p><b>Step 5:</b> With your back straight and your head up, inhale and bend your knees until you are in a seated position and your knees are perpendicular to your toes.</p>\n<p><b>Step 6:</b> Exhaling, push off with your heels to straighten your legs and return to a standing position.</p>\n<p><b>Step 7:</b> Repeat.</p>',NULL,3,6,7,9,11,NULL),(7,'Crunch','<p><b>Step 1:</b> Lie down on the floor. Your back should be flat and your knees bent at an approximately 60 degree angle.</p>\n<p><b>Step 2:</b> Keeping your feet flat on the floor, cross your wrists over your chest. This is the starting position.</p>\n<p><b>Step 3:</b> Bring your upper body up so that your shoulder blades are just off the floor and your body forms a C-shape. Exhale as you do so and hold the contraction for a second.</p>\n<p><b>Step 4:</b> Slowly move down to the starting position. Exhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the desired number of reps.</p>',NULL,1,NULL,NULL,NULL,NULL,NULL),(8,'Narrow Stance Leg Press','<p><b>Step 1:</b> Sit down on a leg press machine and place your legs on the platform in front of you. Your feet should be positioned approximately three inches apart with the toes pointed slightly out.</p>\n<p><b>Step 2:</b> Lower the safety bars holding the platform in place. Press the platform all the way up until your legs are fully extended, without locking your knees. As you inhale, slowly lower the platform until your upper and lower legs make a 90-degree angle. This is the starting position.</p>\n<p><b>Step 3:</b> Slowly lower the platform until your upper and lower legs make a 90-degree angle.</p>\n<p><b>Step 4:</b> Push with the heels of your feet and use your quadriceps to go back to the starting position. Exhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the number of reps in your set. Make sure that the safety pins are locked properly once you have finished.</p>',NULL,3,6,7,11,NULL,NULL),(9,'Calf Press','<p><b>Step 1:</b> Sit down on a leg press machine and place your legs on the platform directly in front of you with your feet approximately shoulder width apart.</p>\n<p><b>Step 2:</b> Lower the safety bars holding the platform in place and press it up until your legs are fully extended in front of you. Your torso and legs should be positioned in a 90-degree angle. Place your toes and the balls of your feet on the lower portion of the platform with your heels off the bottom. Your toes may be facing forward, inwards or outwards. This is the starting position.</p>\n<p><b>Step 3:</b> Push against the platform by raising your heels and extending your ankles as high as possible and flexing your calf. Your knees should be kept stationary. Hold the contracted position for a second and then start to go back down.</p>\n<p><b>Step 4:</b> Slowly move back to the starting position by lowering your heels and bending your ankles until your calves are fully extended. Inhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the desired number of reps in your set.</p>',NULL,3,NULL,NULL,NULL,NULL,NULL),(10,'Seated V-Bar Cable Row','<p><b>Step 1:</b> Attach a V-bar to a rowing machine and sit on the bench with your feet on the foot rest and your knees slightly bent.</p>\n<p><b>Step 2:</b> Grasp the V-bar so that your palms are facing forward.</p>\n<p><b>Step 3:</b> Extend your arms as you lean backward, achieving a 90 degree angle between your waist and your legs. Slightly arch your back so that your chest protrudes. This is your starting position.</p>\n<p><b>Step 4:</b> Without moving your torso, exhale as you pull the V-bar towards your body until it nearly touches your chest.</p>\n<p><b>Step 5:</b> Contract your back muscles for a count and then inhale as you slowly return the V-bar back to starting position.</p>\n<p><b>Step 6:</b> Repeat for a complete set.</p>',NULL,2,8,10,NULL,NULL,NULL),(11,'Barbell Curl','<p><b>Step 1:</b> Stand up straight while holding a barbell in a shoulder-width grip.</p>\n<p><b>Step 2:</b> Contract your biceps to curl the weight forward. Your upper arms should remain stationary during this process.</p>\n<p><b>Step 3:</b> Continue moving the barbell until the biceps are fully contracted and the bar is at shoulder height. Hold this position for a second and then squeeze your biceps.</p>\n<p><b>Step 4:</b> Bring the barbell back to the starting position. Repeat for the desired number of reps.</p>',NULL,2,5,NULL,NULL,NULL,NULL),(12,'Wide-Grip Lat Pulldown','<p><b>Step 1:</b> Position yourself at a lat pulldown machine so that your thighs are under the leg pads.</p>\n<p><b>Step 2:</b> Grasp the bar with your arms fully extended, palms facing forward, and your hands wider than shoulder width apart.</p>\n<p><b>Step 3:</b> Curve your back approximately 30 degrees and protrude your chest. This is your starting position.</p>\n<p><b>Step 4:</b> Exhale as you lower the bar straight down to your chest.</p>\n<p><b>Step 5:</b> Contract your back muscles for a moment and then inhale as you reverse the motion back to the starting position.</p>\n<p><b>Step 6:</b> Repeat for a complete set.</p>',NULL,2,8,10,12,NULL,NULL),(13,'Negative Chin-Up','<p><b>Step 1:</b> Stand on the steps of a chin-up machine or place a bench under a under a chin-up bar. Grasp bar with an underhand grip that is shoulder-width apart.</p>\n<p><b>Step 2:</b> Next, hold yourself up so the the bar is at your chest and arms bent (you may need to jump up slightly to get to this position without pulling yourself up to it).</p>\n<p><b>Step 3:</b> Next, begin negative chin-up by slowly lowering yourself down until your arms are straight. Try to lower yourself so that it takes more than 5 seconds till arms are straight.</p>\n<p><b>Step 4:</b> Release grip, step back up, and repeat.</p>',NULL,2,5,8,10,NULL,NULL);
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
  `notes` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_day`
--

LOCK TABLES `workout_day` WRITE;
/*!40000 ALTER TABLE `workout_day` DISABLE KEYS */;
INSERT INTO `workout_day` VALUES (1,'day 1 mens beginner',1,3,10,NULL,NULL,NULL,'00:01:00',2,3,10,NULL,NULL,NULL,'00:01:00',3,3,10,NULL,NULL,NULL,'00:01:00',4,3,10,NULL,NULL,NULL,'00:01:00',5,1,NULL,NULL,NULL,'00:20:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'day 2 mens beginner',6,3,10,NULL,NULL,NULL,'00:01:00',7,3,10,NULL,NULL,NULL,'00:01:00',8,3,10,NULL,NULL,NULL,'00:01:00',9,3,10,NULL,NULL,NULL,'00:01:00',5,1,NULL,NULL,NULL,'00:10:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'day 3 mens beginner',10,3,10,NULL,NULL,NULL,'00:01:00',11,3,10,NULL,NULL,NULL,'00:01:00',12,3,10,NULL,NULL,NULL,'00:01:00',13,3,10,NULL,NULL,NULL,'00:01:00',5,1,NULL,NULL,NULL,'00:20:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_plan`
--

LOCK TABLES `workout_plan` WRITE;
/*!40000 ALTER TABLE `workout_plan` DISABLE KEYS */;
INSERT INTO `workout_plan` VALUES (1,'Men\'s Beginner Plan','<h1>Workout Summary</h1>\n<p>This men\'s beginner workout routine is a great workout plan for any man that is new to working out or hasn\'t worked out in a long time. If you try to take on too much at once, it\'s possible that you will start to feel burned out after just a few workouts.</p>\n<p>It\'s important to start with what you can handle, then increase your workouts progressively over time to avoid over-training and get the most out of your time at the gym.</p>\n<h1>Consistency is Key to Success</h2>\n<p>One of the most important ways to get results is to find a way to stay consistent in your workouts and diet, and we\'ve put together a complete workout plan to cover everything you need here.</p>\n<p>You don\'t have to waste any time with planning or wondering what you should do next!</p>\n<p>The simple combination of exercises will cover all the major muscle groups of the body. It\'s just up to you to put in the effort! Workout days are designed to target different groups, so you should be able to handle back-to-back workout days if that is all that your schedule allows.</p>',1,4,NULL,1,NULL,2,NULL,3,NULL);
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

-- Dump completed on 2017-03-11 21:35:28
