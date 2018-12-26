-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: isdproject
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `invalid_queries`
--

DROP TABLE IF EXISTS `invalid_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invalid_queries` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `query` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invalid_queries`
--

LOCK TABLES `invalid_queries` WRITE;
/*!40000 ALTER TABLE `invalid_queries` DISABLE KEYS */;
INSERT INTO `invalid_queries` VALUES (1,'directions to college ?'),(2,''),(3,''),(4,'what is your name'),(5,''),(6,''),(7,'africa'),(8,'thapar ragging compare'),(9,'how are you?'),(10,'how are you ?\r\n'),(11,'how are you'),(12,'owner ?\r\n'),(13,'your owner\r\n'),(14,'how are you'),(15,'how are you ?\r\n'),(16,'how are you'),(17,'how are you'),(18,'africa');
/*!40000 ALTER TABLE `invalid_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(6) NOT NULL,
  `query` varchar(200) DEFAULT NULL,
  `answer` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (-1,'null','Please enter some query.'),(0,'invalid','I don\'t know how to respond to this at the moment. The answer to this question will be uploaded soon within 24hrs.'),(1,'hi','hello, ask me anything'),(2,'lnmiit','The LNM Institute of Information Technology(LNMIIT), is a deemed university located in Jaipur, India, on an 100-acre campus. The institute is public-private partnership venture between the LNM foundation and the Government of Rajasthan and operates as an autonomous non-profit organization. You can find all the details <a href=\'https://www.lnmiit.ac.in/\'> here </a>'),(3,'How is lnmiit jaipur ?','The LNM Institute of Information Technology(LNMIIT), is a deemed university located in Jaipur , India, on an 100-acre campus. The institute is a public-private partnership venture between the LNM foundation and the Government of Rajasthan and operates as an autonomous non-profit organization. You can also refer to <a href = \"https://en.wikipedia.org/wiki/LNM_Institute_of_Information_Technology\">https://en.wikipedia.org/wiki/LNM_Institute_of_Information_Technology</a> for more details.'),(4,'placements lnmiit','This academic year thus far, highest salary offered in India here is INR 28 L (on-campus placements are still on) and so far Average if offers in India is in the vicinity of INR 7 L (median is in vicinity of INR 6 L thus far, if I recollect it right). For exact figures, you may refer <a href=\"https://placements.lnmiit.ac.in/\">https://placements.lnmiit.ac.in/</a>'),(5,'lnmiit nit','Yes definitely better than many low ranked NITs. Although their cutoff maybe be higher than LNMIIT due to an NIT tag, but LNMIIT is far better than those. It is a great place to learn. If you are interested in coding, then this is a place for you, as LNMIIT has one of the best coding culture among engineering colleges. Also, don’t opt for a low branch (such as production etc) in NITs just to have an NIT tag. You will regret after some time. Make a wise decision. good luck!'),(6,'lnmiit thapar','Thapar is really an old and a prestigious institutions and have been giving good results in the form of placements whereas LNMIIT is quite young comparatively and is gaining popularity at an amazing pace. People are now often comparing Thapar and LNMIIT because of the promising result by the LNMIIT. LNMIIT produced 15 GSOCs in a year. But one really amazing and important point is that there is NO kind of reservation in LNMIIT which means that all are bright students and are selected on the basis of merit, whereas in Thapar there is Punjab Quota.'),(7,'lnmiit vit','Definitely  LNMIIT is better than vit .The placements shown by vit  are not completely true and please note that lnmiit is a nonprofit  institute where as vit   is not like that and please note that there are fixed number of seats for each branch in lnmiit and no management  quota.'),(8,'lnmiit cutoff','LNMIT does not disclose its cut off.'),(9,'counselling procedure','Firstly there are online counseling rounds(last time there were two). If you are allotted any branch then you will be requested to arrive on campus at the time of registration (counseling is online procedure you just need to see if you are allotted any branch according to your preference order). On reaching the campus token numbers will be provided to you and you have to wait until your number has been called out, Then you have to show all the documents.Finally you have to test your luck by picking out a 2 or 1 numbered chit from a box. That chit represents double room or a single room and the room number is written on it. If you already have a friend with you, you can request them for same room. Voila! job is done and welcome to the college.'),(10,'lnmiit branches btech','In B.Tech these branches are offered: Computer Science & Engineering, Electronics & Communication Engineering, Communication & Computer Engineering, Mechanical Engineering.'),(11,'lnmiit branches mtech','In M.Tech these branches are offered: Computer Science & Engineering, Electronics & Communication Engineering, Communication & Computer Engineering.'),(12,'lnmiit branches msc','In M.Sc these branches are offered: M.Sc(Mathematics) & M.Sc(Physics)'),(13,'lnmiit branches phd','In Ph.D these branches are offered: Computer Science & Engineering, Electronics & Communication Engineering, Mechanical Engineering, Physics, Mathematics, Humanities and Social Sciences.'),(14,'lnmiit campus','Campus life, is pretty relaxed and welcoming - groups of friends taking walks on the walking track or sitting atop the LNMIIT Great Wall, ever-fit athletes and sportsmen breaking a sweat at the SAC and various sports grounds/fields, students catching up on the latest gossip and happenings of college while grabbing a bite at the canteen - these are every day sights you’ll see around campus. The hostel in-time is pretty late(10:45 PM), so you have plenty of time to roam around campus, interact with seniors and batch mates etc.'),(15,'lnmiit ragging','No ragging in this university, only interaction with kind seniors.'),(16,'How are you ','Excellent, tell me what can I do for you ?'),(17,'what is your name','LNMBOT, Pleased to meet you !'),(18,'Bot functionalities','I can answer all your queries about LNMIIT !'),(19,'Who is your owner','I believe I belong to Mr.Jadon Sir'),(20,'reach lnmiit','Here are the direction to LNMIIT <a href = \"https://www.google.co.in/maps/dir//lnmiit/@26.9363288,75.853483,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x396dba21e8a1d1c9:0x5ab565cce4d44c2b!2m2!1d75.9235233!2d26.9363461\"> LNMIIT_DIRECTIONS</a>'),(21,'lnmiit mnit','LNMIIT and MNIT are more or less on the same level. MNIT is a government college so definitely fee structure varies a lot. Both will provide you ample of opportunities to develop yourself as an entrepreneur but it depends on you to grasp the opportunity and move forward. firstly choose your branch precisely branch matters a lot. Do not see the college just go for the branch you want. If you think only government colleges are good then you are definitely wrong. Judging a college on the basis of just a brand name is awful. I personally suggest you to opt for LNMIIT if you are getting better branch at LNMIIT as I am presently studying in this college and found myself lucky to be a part of it. I can assure you about the coding culture, curriculum are none the less than any other institute. You can even visit the campus and make yourself satisfy about it.'),(22,'facilities','Well, about hostel facilities, you get good furnished rooms with a study table, chair, cupboard, shelves, bed, lan port, and tubelights along with windows and fans. You would also be having an elevator and two common rooms in which the Televisions are kept along with a set top box. There is also a badminton court in the hostel itself for recreational badminton, for professional, you can always visit the Students Activity Centre (SAC).'),(23,'fees structure','You can get all the details from <a href = \'https://www.lnmiit.ac.in/Admissions/ugadmissions/Fee_Structure.html\'> here </a>');
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 16:31:02
