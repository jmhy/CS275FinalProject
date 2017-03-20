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
  PRIMARY KEY (`exercise_id`),
  KEY `fk_muscle1_id` (`fk_muscle1_id`),
  KEY `fk_muscle2_id` (`fk_muscle2_id`),
  KEY `fk_muscle3_id` (`fk_muscle3_id`),
  KEY `fk_muscle4_id` (`fk_muscle4_id`),
  KEY `fk_muscle5_id` (`fk_muscle5_id`),
  CONSTRAINT `exercises_ibfk_1` FOREIGN KEY (`fk_muscle1_id`) REFERENCES `muscles` (`m_id`),
  CONSTRAINT `exercises_ibfk_2` FOREIGN KEY (`fk_muscle2_id`) REFERENCES `muscles` (`m_id`),
  CONSTRAINT `exercises_ibfk_3` FOREIGN KEY (`fk_muscle3_id`) REFERENCES `muscles` (`m_id`),
  CONSTRAINT `exercises_ibfk_4` FOREIGN KEY (`fk_muscle4_id`) REFERENCES `muscles` (`m_id`),
  CONSTRAINT `exercises_ibfk_5` FOREIGN KEY (`fk_muscle5_id`) REFERENCES `muscles` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (1,'Bench Press','<p><b>Step 1:</b> Lie on your back on a flat bench. Lift the bar off the rack and hold it straight over you, keeping your arms locked. This is the starting position.</p>\n<p><b>Step 2:</b> Next, inhale and bring the barbell down in a slow and controlled manner until it reaches your mid-chest.</p>\n<p><b>Step 3:</b> Pause briefly before raising the barbell back to your starting position as you exhale. Your focus should be on using your chest muscles to move the bar. Lock your arms at the top of the movement and squeeze your chest before slowly bringing the barbell down again. This step should take twice as long raising the weight to get the maximum benefit.</p>\n<p><b>Step 4:</b> Repeat the movement for the desired number of repetitions.</p>\n<p><b>Step 5:</b> The final step in the exercise is to place the barbell on the rack.</p>','heSumeWiFig',4,12,14,NULL,NULL),(2,'Machine Military Press','<p><b>Step 1:</b> Sit down on the shoulder press machine. Select the weight you want to use.</p>\n<p><b>Step 2:</b> Grasp the handles, keeping your elbows bent. They should be in line with your torso. This is the starting position.</p>\n<p><b>Step 3:</b> Lift the handles and extend your arms fully. Exhale as you do so. Hold the contraction when you get to the top of the position.</p>\n<p><b>Step 4:</b> Lower the handles slowly down to the starting position. Inhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the desired number of reps.</p>','dxPWKja9j68',12,14,NULL,NULL,NULL),(3,'Tricep Pushdown','<p><b>Step 1:</b> Feet shoulder width apart, face a high pulley machine with an attached bar at shoulder level height and grasp it with your palms facing down (pronated). Hold the bar close to your chest for your starting position.</p>\n<p><b>Step 2:</b> Keeping your body stationary, exhale as you lower the bar by completely extending your arms downward until the bar touches your thighs.</p>\n<p><b>Step 3:</b> Hold for a moment and then inhale as you slowly return the bar to shoulder level.</p>\n<p><b>Step 4:</b> Repeat for a complete set.</p>','plcA3Q-9RzI',14,NULL,NULL,NULL,NULL),(4,'Push-Up','<p><b>Step 1:</b> Lie on an exercise floor mat, face down.</p>\n<p><b>Step 2:</b> Press your toes against the floor and place your hands flat on the ground shoulder width apart, fingers extended forward.</p>\n<p><b>Step 3:</b> Push yourself up so that your arms are nearly extended and your torso and legs are off the floor. This is your starting position.</p>\n<p><b>Step 4:</b> Inhaling, bend your arms to lower your body and touch your chest nearly to the floor.</p>\n<p><b>Step 5:</b> Exhaling, contract your chest as you push off the ground and return to the starting position.</p>\n<p><b>Step 6:</b> Pause for a moment and then repeat for a full set.</p>','RgL5HFny_kA',1,4,12,14,NULL),(5,'Elliptical Trainer','<p><b>Step 1:</b> Step onto the elliptical trainer machine and choose the option you wish to use from the menu. You can select a set program or you can use the manual settings. You may be asked to enter your age and weight so that you can get an estimate of the number of calories you burn during your workout.</p>\n<p><b>Step 2:</b> Grasp the handles while using the machine. This feature helps by monitoring your heart rate to make sure that you are working out in your target range.</p>','mNM01g9wLy4',3,6,7,11,NULL),(6,'Squat','<p><b>Step 1:</b> Using a squat rack, place the barbell at shoulder height.</p>\n<p><b>Step 2:</b> Turn around so that the barbell is below your neck and behind your shoulders.</p>\n<p><b>Step 3:</b> With your arms positioned wide on the barbell, push up with your legs and straighten up to lift the barbell onto your back.</p>\n<p><b>Step 4:</b> Step forward and place your feet shoulder width apart with your toes pointing slightly outward.</p>\n<p><b>Step 5:</b> With your back straight and your head up, inhale and bend your knees until you are in a seated position and your knees are perpendicular to your toes.</p>\n<p><b>Step 6:</b> Exhaling, push off with your heels to straighten your legs and return to a standing position.</p>\n<p><b>Step 7:</b> Repeat.</p>','HoSPbdyNzQY',3,6,7,9,11),(7,'Crunch','<p><b>Step 1:</b> Lie down on the floor. Your back should be flat and your knees bent at an approximately 60 degree angle.</p>\n<p><b>Step 2:</b> Keeping your feet flat on the floor, cross your wrists over your chest. This is the starting position.</p>\n<p><b>Step 3:</b> Bring your upper body up so that your shoulder blades are just off the floor and your body forms a C-shape. Exhale as you do so and hold the contraction for a second.</p>\n<p><b>Step 4:</b> Slowly move down to the starting position. Exhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the desired number of reps.</p>','N8xOZ9cHHjo',1,NULL,NULL,NULL,NULL),(8,'Narrow Stance Leg Press','<p><b>Step 1:</b> Sit down on a leg press machine and place your legs on the platform in front of you. Your feet should be positioned approximately three inches apart with the toes pointed slightly out.</p>\n<p><b>Step 2:</b> Lower the safety bars holding the platform in place. Press the platform all the way up until your legs are fully extended, without locking your knees. As you inhale, slowly lower the platform until your upper and lower legs make a 90-degree angle. This is the starting position.</p>\n<p><b>Step 3:</b> Slowly lower the platform until your upper and lower legs make a 90-degree angle.</p>\n<p><b>Step 4:</b> Push with the heels of your feet and use your quadriceps to go back to the starting position. Exhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the number of reps in your set. Make sure that the safety pins are locked properly once you have finished.</p>','TtPMOj1xAgo',3,6,7,11,NULL),(9,'Calf Press','<p><b>Step 1:</b> Sit down on a leg press machine and place your legs on the platform directly in front of you with your feet approximately shoulder width apart.</p>\n<p><b>Step 2:</b> Lower the safety bars holding the platform in place and press it up until your legs are fully extended in front of you. Your torso and legs should be positioned in a 90-degree angle. Place your toes and the balls of your feet on the lower portion of the platform with your heels off the bottom. Your toes may be facing forward, inwards or outwards. This is the starting position.</p>\n<p><b>Step 3:</b> Push against the platform by raising your heels and extending your ankles as high as possible and flexing your calf. Your knees should be kept stationary. Hold the contracted position for a second and then start to go back down.</p>\n<p><b>Step 4:</b> Slowly move back to the starting position by lowering your heels and bending your ankles until your calves are fully extended. Inhale as you do so.</p>\n<p><b>Step 5:</b> Repeat for the desired number of reps in your set.</p>','W-NU8NUS8lI',3,NULL,NULL,NULL,NULL),(10,'Seated V-Bar Cable Row','<p><b>Step 1:</b> Attach a V-bar to a rowing machine and sit on the bench with your feet on the foot rest and your knees slightly bent.</p>\n<p><b>Step 2:</b> Grasp the V-bar so that your palms are facing forward.</p>\n<p><b>Step 3:</b> Extend your arms as you lean backward, achieving a 90 degree angle between your waist and your legs. Slightly arch your back so that your chest protrudes. This is your starting position.</p>\n<p><b>Step 4:</b> Without moving your torso, exhale as you pull the V-bar towards your body until it nearly touches your chest.</p>\n<p><b>Step 5:</b> Contract your back muscles for a count and then inhale as you slowly return the V-bar back to starting position.</p>\n<p><b>Step 6:</b> Repeat for a complete set.</p>','yYcYKXmV8kw',2,8,10,NULL,NULL),(11,'Barbell Curl','<p><b>Step 1:</b> Stand up straight while holding a barbell in a shoulder-width grip.</p>\n<p><b>Step 2:</b> Contract your biceps to curl the weight forward. Your upper arms should remain stationary during this process.</p>\n<p><b>Step 3:</b> Continue moving the barbell until the biceps are fully contracted and the bar is at shoulder height. Hold this position for a second and then squeeze your biceps.</p>\n<p><b>Step 4:</b> Bring the barbell back to the starting position. Repeat for the desired number of reps.</p>','Hi5VZ2cDruw',2,5,NULL,NULL,NULL),(12,'Wide-Grip Lat Pulldown','<p><b>Step 1:</b> Position yourself at a lat pulldown machine so that your thighs are under the leg pads.</p>\n<p><b>Step 2:</b> Grasp the bar with your arms fully extended, palms facing forward, and your hands wider than shoulder width apart.</p>\n<p><b>Step 3:</b> Curve your back approximately 30 degrees and protrude your chest. This is your starting position.</p>\n<p><b>Step 4:</b> Exhale as you lower the bar straight down to your chest.</p>\n<p><b>Step 5:</b> Contract your back muscles for a moment and then inhale as you reverse the motion back to the starting position.</p>\n<p><b>Step 6:</b> Repeat for a complete set.</p>','8LeK7pydt4s',2,8,10,12,NULL),(13,'Negative Chin-Up','<p><b>Step 1:</b> Stand on the steps of a chin-up machine or place a bench under a under a chin-up bar. Grasp bar with an underhand grip that is shoulder-width apart.</p>\n<p><b>Step 2:</b> Next, hold yourself up so the the bar is at your chest and arms bent (you may need to jump up slightly to get to this position without pulling yourself up to it).</p>\n<p><b>Step 3:</b> Next, begin negative chin-up by slowly lowering yourself down until your arms are straight. Try to lower yourself so that it takes more than 5 seconds till arms are straight.</p>\n<p><b>Step 4:</b> Release grip, step back up, and repeat.</p>','m1b30TAOvIk',2,5,8,10,NULL),(14,'Treadmill Walking','<p><b>Step 1:</b> Stand on the elevated platform of a treadmill machine.</p>\n<p><b>Step 2:</b> Choose your intended routine by selecting the route and following the onscreen prompts.</p>\n<p><b>Step 3:</b> Hold the handlebars provided by the treadmill and begin to walk when the treadmill starts to move.</p>\n<p><b>Step 4:</b> Once you are comfortable on the treadmill, release the handlebars (provided you can safely do so) and walk on the treadmill with your arms swinging naturally by your side.</p>\n<p><b>Step 5:</b> When your exercise is complete, slow down your walk as the treadmill slows and then come to a complete stop along with it.</p>','i7pA2SZRvJs',3,6,7,11,NULL),(15,'Dumbbell Kickback','<p><b>Step 1:</b> Brace one knee and one hand on a flat bench while keeping the other leg flat on the floor. Your back should be flat and your torso should be parallel with the bench.</p>\n<p><b>Step 2:</b> Hold a dumbbell in the free hand with your palm facing inward. Your arm should be bent at a 90 degree angle so that the dumbbell is next to your waist and your upper arm is parallel with the floor. This is your starting position.</p>\n<p><b>Step 3:</b> Without moving your upper arm, exhale and extend your arm completely back so that your entire arm is parallel with the floor and the dumbbell is perpendicular to the floor.</p>\n<p><b>Step 4:</b> Hold for a moment and then slowly reverse the motion back to the starting position.</p>\n<p><b>Step 5:</b> Repeat for a complete set and the switch sides.</p>','3tgSvIQwGx8',14,NULL,NULL,NULL,NULL),(16,'Alternating Hammer Curl','<p><b>Step 1:</b> Stand straight with your torso in an upright position. Hold a dumbbell in each hand at arm\'s length, keeping your elbows close to your torso.</p>\n<p><b>Step 2:</b> Your palms of your hands should be facing toward your torso. This is your starting position for the exercise.</p>\n<p><b>Step 3:</b> Keeping your upper arm stationary, curl the right dumbbell forward. As your bicep contracts, breathe out. Continue the motion until your bicep is completely contracted and the dumbbell is at shoulder height. Hold this position for a second while squeezing your bicep. Only your forearm should be moving.</p>\n<p><b>Step 4:</b> Slowly start to move the dumbbells back to your starting position. Breathe in while doing so.</p>\n<p><b>Step 5:</b> Repeat the movement with your left hand. This completes one repetition.</p>\n<p><b>Step 6:</b> Repeat the process for the recommended number of repetitions.</p>','4ib0G814jKA',2,5,NULL,NULL,NULL),(17,'Freehand Jump Squat','<p><b>Step 1:</b> Stand up with your hands crossed over your chest.</p>\n<p><b>Step 2:</b> Keep your head up and your back straight. Place your feet shoulder width apart.</p>\n<p><b>Step 3:</b> Squat down until your upper thighs are parallel to the floor. Inhale as you do so.</p>\n<p><b>Step 4:</b> Press with the balls of your feet and jump straight up into the air as high as you can. Your thighs will be acting like springs. Exhale as you do so.</p>\n<p><b>Step 5:</b> When you hit the floor again, squat down and jump as you did before.</p>\n<p><b>Step 6:</b> Repeat for the number of reps in your set.</p>','dtJ6kOV5dUc',3,6,7,11,NULL),(18,'Combo Shoulder Raise','<p><b>Step 1:</b> Stand with a pair of dumbbells in each hand, next to your thighs at arm\'s length. Palms facing each other.</p>\n<p><b>Step 2:</b> Now, turn your right hand so that your palm is facing forward (one end of the dumbbell will be touching your thigh).</p>\n<p><b>Step 3:</b> Next, begin exercise by simultaneously raising your right arm from your side until it is even with your shoulder (just like a side lateral raise), and raise your left arm straight out in front of your body until it is even even with your shoulder (just like a front raise).</p>\n<p><b>Step 4:</b> Hold position for a few moments and then lower weight back to starting position. Alternate arms for each rep.</p>','bjGBuKAkHpY',5,12,NULL,NULL,NULL),(19,'Glute Kickback','<p><b>Step 1:</b> Kneel on the floor or on an exercise mat with your arms extended in front of you. You should be in a kneeling push-up position with your arms shoulder width apart. This is the starting position.</p>\n<p><b>Step 2:</b> Lift your right leg until your hamstrings are in line with your back. Contract your glutes while performing this part of the exercise and hold the contraction at the top for a second.</p>\n<p><b>Step 3:</b> Return to the starting position and repeat the process with your left leg.</p>\n<p><b>Step 4:</b> Alternate legs until you have complete the number of reps in your set.</p>','w0zn00xFykQ',6,7,NULL,NULL,NULL),(20,'Treadmill Jogging','<p><b>Step 1:</b> Step onto the treadmill and choose the option you would like from the menu.</p>\n<p><b>Step 2:</b> The treadmill will likely have a manual setting and preset programs. Select the most appropriate for your goals.</p>\n<p><b>Step 3:</b> You will be asked to enter your age and weight to find out how many calories you burned during the exercise.</p>','2BaRsNe065k',6,7,11,NULL,NULL),(21,'Knee Push-Up','<p><b>Step 1:</b> Assume a standard push-up position. Next, get down on your knees instead of placing your weight on your feet. Feet should be crossed behind you.</p>\n<p><b>Step 2:</b> Your body now should look like a check mark, with your feet crossed behind you, knees to head forming a straight line. and arms straight with hands shoulder-width apart on the ground. This is the starting position.</p>\n<p><b>Step 3:</b> Begin exercise by lowering your chest to the ground by bending at the elbows. Don\'t let your hips sag down. Pause, then push back up to starting position. This completes one rep.</p>','8Ein-_05A0Q',1,4,10,14,NULL),(22,'Bodyweight Lunge','<p><b>Step 1:</b> Stand with your feet shoulder\'s width apart. Step forward with your right foot, while keeping your left foot planted.</p>\n<p><b>Step 2:</b> You will bend your right leg until your right thigh is inline with your knee and parallel to the floor.</p>\n<p><b>Step 3:</b> Return to starting position and repeat for opposite leg.</p>','vG6GGjk1CXQ',3,6,7,11,NULL);
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muscle_categories`
--

DROP TABLE IF EXISTS `muscle_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muscle_categories` (
  `name` varchar(20) NOT NULL,
  `fk_muscle1_id` int(11) DEFAULT NULL,
  `fk_muscle2_id` int(11) DEFAULT NULL,
  `fk_muscle3_id` int(11) DEFAULT NULL,
  `fk_muscle4_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_muscle1_id` (`fk_muscle1_id`),
  KEY `fk_muscle2_id` (`fk_muscle2_id`),
  KEY `fk_muscle3_id` (`fk_muscle3_id`),
  KEY `fk_muscle4_id` (`fk_muscle4_id`),
  CONSTRAINT `muscle_categories_ibfk_1` FOREIGN KEY (`fk_muscle1_id`) REFERENCES `muscles` (`m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `muscle_categories_ibfk_2` FOREIGN KEY (`fk_muscle2_id`) REFERENCES `muscles` (`m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `muscle_categories_ibfk_3` FOREIGN KEY (`fk_muscle3_id`) REFERENCES `muscles` (`m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `muscle_categories_ibfk_4` FOREIGN KEY (`fk_muscle4_id`) REFERENCES `muscles` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muscle_categories`
--

LOCK TABLES `muscle_categories` WRITE;
/*!40000 ALTER TABLE `muscle_categories` DISABLE KEYS */;
INSERT INTO `muscle_categories` VALUES ('arms',2,5,12,14),('back_torso',8,9,10,13),('front_torso',1,4,NULL,NULL),('legs',3,6,7,11);
/*!40000 ALTER TABLE `muscle_categories` ENABLE KEYS */;
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
  PRIMARY KEY (`workout_day_id`),
  KEY `fk_ex1_id` (`fk_ex1_id`),
  KEY `fk_ex2_id` (`fk_ex2_id`),
  KEY `fk_ex3_id` (`fk_ex3_id`),
  KEY `fk_ex4_id` (`fk_ex4_id`),
  KEY `fk_ex5_id` (`fk_ex5_id`),
  KEY `fk_ex6_id` (`fk_ex6_id`),
  KEY `fk_ex7_id` (`fk_ex7_id`),
  KEY `fk_ex8_id` (`fk_ex8_id`),
  KEY `fk_ex10_id` (`fk_ex10_id`),
  CONSTRAINT `workout_day_ibfk_1` FOREIGN KEY (`fk_ex1_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_10` FOREIGN KEY (`fk_ex10_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_2` FOREIGN KEY (`fk_ex2_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_3` FOREIGN KEY (`fk_ex3_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_4` FOREIGN KEY (`fk_ex4_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_5` FOREIGN KEY (`fk_ex5_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_6` FOREIGN KEY (`fk_ex6_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_7` FOREIGN KEY (`fk_ex7_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_8` FOREIGN KEY (`fk_ex8_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `workout_day_ibfk_9` FOREIGN KEY (`fk_ex8_id`) REFERENCES `exercises` (`exercise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_day`
--

LOCK TABLES `workout_day` WRITE;
/*!40000 ALTER TABLE `workout_day` DISABLE KEYS */;
INSERT INTO `workout_day` VALUES (1,'day 1 mens beginner',1,3,10,NULL,NULL,NULL,'00:01:00',2,3,10,NULL,NULL,NULL,'00:01:00',3,3,10,NULL,NULL,NULL,'00:01:00',4,3,10,NULL,NULL,NULL,'00:01:00',5,1,NULL,NULL,NULL,'00:20:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'day 2 mens beginner',6,3,10,NULL,NULL,NULL,'00:01:00',7,3,10,NULL,NULL,NULL,'00:01:00',8,3,10,NULL,NULL,NULL,'00:01:00',9,3,10,NULL,NULL,NULL,'00:01:00',5,1,NULL,NULL,NULL,'00:10:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'day 3 mens beginner',10,3,10,NULL,NULL,NULL,'00:01:00',11,3,10,NULL,NULL,NULL,'00:01:00',12,3,10,NULL,NULL,NULL,'00:01:00',13,3,10,NULL,NULL,NULL,'00:01:00',5,1,NULL,NULL,NULL,'00:20:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'day 1 womens beginner',14,1,NULL,NULL,NULL,'00:20:00',NULL,7,3,15,NULL,NULL,NULL,'00:01:00',15,3,15,NULL,NULL,NULL,'00:01:00',16,3,15,NULL,NULL,NULL,'00:01:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'day 2 womens beginner',14,1,NULL,NULL,NULL,'00:10:00',NULL,17,3,15,NULL,NULL,NULL,'00:01:00',18,3,15,NULL,NULL,NULL,'00:01:00',19,3,15,NULL,NULL,NULL,'00:01:00',20,1,NULL,NULL,NULL,'00:10:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'day 3 womens beginner',14,1,NULL,NULL,NULL,'00:20:00',NULL,21,3,15,NULL,NULL,NULL,'00:01:00',10,3,15,NULL,NULL,NULL,'00:01:00',22,3,15,NULL,NULL,NULL,'00:01:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`plan_id`),
  KEY `fk_workout_sun` (`fk_workout_sun`),
  KEY `fk_workout_mon` (`fk_workout_mon`),
  KEY `fk_workout_tue` (`fk_workout_tue`),
  KEY `fk_workout_wed` (`fk_workout_wed`),
  KEY `fk_workout_thu` (`fk_workout_thu`),
  KEY `fk_workout_fri` (`fk_workout_fri`),
  KEY `fk_workout_sat` (`fk_workout_sat`),
  CONSTRAINT `workout_plan_ibfk_1` FOREIGN KEY (`fk_workout_sun`) REFERENCES `workout_day` (`workout_day_id`),
  CONSTRAINT `workout_plan_ibfk_2` FOREIGN KEY (`fk_workout_mon`) REFERENCES `workout_day` (`workout_day_id`),
  CONSTRAINT `workout_plan_ibfk_3` FOREIGN KEY (`fk_workout_tue`) REFERENCES `workout_day` (`workout_day_id`),
  CONSTRAINT `workout_plan_ibfk_4` FOREIGN KEY (`fk_workout_wed`) REFERENCES `workout_day` (`workout_day_id`),
  CONSTRAINT `workout_plan_ibfk_5` FOREIGN KEY (`fk_workout_thu`) REFERENCES `workout_day` (`workout_day_id`),
  CONSTRAINT `workout_plan_ibfk_6` FOREIGN KEY (`fk_workout_fri`) REFERENCES `workout_day` (`workout_day_id`),
  CONSTRAINT `workout_plan_ibfk_7` FOREIGN KEY (`fk_workout_sat`) REFERENCES `workout_day` (`workout_day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_plan`
--

LOCK TABLES `workout_plan` WRITE;
/*!40000 ALTER TABLE `workout_plan` DISABLE KEYS */;
INSERT INTO `workout_plan` VALUES (1,'Men\'s Beginner Plan','<h1>Workout Summary</h1>\n<p>This men\'s beginner workout routine is a great workout plan for any man that is new to working out or hasn\'t worked out in a long time. If you try to take on too much at once, it\'s possible that you will start to feel burned out after just a few workouts.</p>\n<p>It\'s important to start with what you can handle, then increase your workouts progressively over time to avoid over-training and get the most out of your time at the gym.</p>\n<h1>Consistency is Key to Success</h2>\n<p>One of the most important ways to get results is to find a way to stay consistent in your workouts and diet, and we\'ve put together a complete workout plan to cover everything you need here.</p>\n<p>You don\'t have to waste any time with planning or wondering what you should do next!</p>\n<p>The simple combination of exercises will cover all the major muscle groups of the body. It\'s just up to you to put in the effort! Workout days are designed to target different groups, so you should be able to handle back-to-back workout days if that is all that your schedule allows.</p>',1,4,NULL,1,NULL,2,NULL,3,NULL),(2,'Women\'s Beginner Plan','<h1>Workout Summary</h1>\n<p>This beginner women\'s workout plan is designed for women just starting out (or just getting back into) following a fitness routine to get in shape. A lot of people try to do too much too soon, and end up either hurting themselves or being too sore after a single workout to get back in the gym the next time.</p>\n<p>While you don\'t want to over-do it, you DO need to get sweating! You\'re going to feel the burn with this workout, and look forward to coming back feeling it again when you have your next workout day.</p>\n<p>This workout plan will ease you into a great routine, and start preparing you to take your fitness to a whole new level! Once you\'re used to setting time aside to work out and putting some effort in, you\'ll be stepping it up in no time!</p>\n<h1>Women\'s Beginner Workout Goals</h1>\n<p>The goal of this women\'s exercise routine is an emphasis on muscle tone and tightness, fat loss, and improved cardiovascular endurance and NOT on gaining a lot of muscle or becoming a bulky bodybuilder. Sometimes women shy away from lifting weights because they don\'t want to pack on loads of muscle.</p>\n<p>Unless you\'re specifically training (and eating) like a bodybuilder, there\'s no need to worry about bulking up. Lifting will help you burn fat and get the shape you want for your body, and you will feel great too!</p>',1,4,NULL,4,NULL,5,NULL,6,NULL);
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

-- Dump completed on 2017-03-20 15:57:26
