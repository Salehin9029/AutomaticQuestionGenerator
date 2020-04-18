-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: questionbank
-- ------------------------------------------------------
-- Server version	8.0.19

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

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL,
  `subject` varchar(40) DEFAULT NULL,
  `questions` varchar(200) DEFAULT NULL,
  `doc` datetime DEFAULT NULL,
  `faculty` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Software Engineering','Q-01: Who is impossible to credit the invention of the internet to a single person?','2020-04-10 20:12:08','group@mail.com'),(2,'Software Engineering','Q-02: Who developed new features and technologies that eventually merged to become the “ information superhighway ” you know today?','2020-04-10 20:12:08','group@mail.com'),(3,'Software Engineering','Q-03: Who know today?','2020-04-10 20:12:08','group@mail.com'),(4,'Software Engineering','Q-04: What did many scientists had of worldwide networks of information?','2020-04-10 20:12:08','group@mail.com'),(5,'Software Engineering','Q-05: Who had already anticipated the existence of worldwide networks of information?','2020-04-10 20:12:08','group@mail.com'),(6,'Software Engineering','Q-06: When what N?','2020-04-10 20:12:09','group@mail.com'),(7,'Software Engineering','Q-07: How much c N popularized?','2020-04-10 20:12:09','group@mail.com'),(8,'Software Engineering','Q-08: What did Licklider popularized of an “ Intergalactic Network ” of c N?','2020-04-10 20:12:09','group@mail.com'),(9,'Software Engineering','Q-09: Who popularized the idea of an “ Intergalactic Network ” of c N?','2020-04-10 20:12:09','group@mail.com'),(10,'Software Engineering','Q-10: Who c N the?','2020-04-10 20:12:09','group@mail.com'),(11,'Software Engineering','Q-11: Who effectively transmitting electronic data that would later become one of the major building blocks of the internet?','2020-04-10 20:12:09','group@mail.com'),(12,'Software Engineering','Q-12: Whom the concept of “ packet switching switching for effectively transmitting electronic data that would later become one of the major building blocks of the internet?','2020-04-10 20:12:09','group@mail.com'),(13,'Software Engineering','Q-13: What the concept of “ packet switching ” a method for effectively switching that would later become one of the major building blocks of the internet?','2020-04-10 20:12:09','group@mail.com'),(14,'Software Engineering','Q-14: What the concept of “ packet switching ” a method for effectively switching electronic data that would later become of the major building blocks of the internet?','2020-04-10 20:12:09','group@mail.com'),(15,'Software Engineering','Q-15: Who switching become one of the m J electronic data that would later become one of the major building blocks of the internet?','2020-04-10 20:12:09','group@mail.com'),(16,'Software Engineering','Q-16: What did Arpanet used to allow multiple computers to communicate on a single network?','2020-04-10 20:12:09','group@mail.com'),(17,'Software Engineering','Q-17: Who used packet switching to allow multiple computers to communicate on a single network?','2020-04-10 20:12:09','group@mail.com'),(18,'Software Engineering','Q-18: Who switching to allow multiple computers to communicate on a single network?','2020-04-10 20:12:10','group@mail.com'),(19,'Software Engineering','Q-19: What did Arpanet delivered first message : a “ node-to-node ” communication from one computer to another?','2020-04-10 20:12:10','group@mail.com'),(20,'Software Engineering','Q-20: Who delivered its first message : a “ node-to-node ” communication from one computer to another?','2020-04-10 20:12:10','group@mail.com'),(21,'Software Engineering','Q-21: How much was the size of a small house?','2020-04-10 20:12:10','group@mail.com'),(22,'Software Engineering','Q-22: Who was located in a research lab at Ucla and the second was at Stanford ; each one was the size of a small house?','2020-04-10 20:12:10','group@mail.com'),(23,'Software Engineering','Q-23: Who was at Stanford ; each one was the size of a small house?','2020-04-10 20:12:10','group@mail.com'),(24,'Software Engineering','Q-24: What but it crashed anyway : the Stanford computer only received the note ’ s first two letters?','2020-04-10 20:12:10','group@mail.com'),(25,'Software Engineering','Q-25: Who crashed the fledgling Arpa network anyway : the Stanford computer only received the note ’ s first two letters?','2020-04-10 20:12:10','group@mail.com'),(26,'Software Engineering','Q-26: Who only received the note ’ s first two letters?','2020-04-10 20:12:10','group@mail.com'),(27,'Software Engineering','Q-27: What did John had on his bookshelf?','2020-04-10 20:12:10','group@mail.com'),(28,'Software Engineering','Q-28: Who had 15 books on his bookshelf?','2020-04-10 20:12:10','group@mail.com'),(29,'Software Engineering','Q-29: Who slobbered all over four of them?','2020-04-10 20:12:10','group@mail.com'),(30,'Software Engineering','Q-30: Who came in and slobbered all over four of them?','2020-04-10 20:12:11','group@mail.com'),(31,'Software Engineering','Q-31: Who slobbered all over four of them?','2020-04-10 20:12:11','group@mail.com'),(32,'Software Engineering','Q-32: How whom did many books did have left that were not slobbered on ??','2020-04-10 20:12:11','group@mail.com'),(33,'Software Engineering','Q-33: How many books did what have John left that were not slobbered on ??','2020-04-10 20:12:11','group@mail.com'),(34,'Software Engineering','Q-34: How many books did what have John left that were on ??','2020-04-10 20:12:11','group@mail.com'),(35,'Software Engineering','Q-35: Who did John have left that were not slobbered on ??','2020-04-10 20:12:11','group@mail.com'),(36,'Software Engineering','Q-36: Who have left that were not slobbered on ??','2020-04-10 20:12:11','group@mail.com');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-17 22:26:33
