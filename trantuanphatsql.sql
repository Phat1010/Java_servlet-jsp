CREATE DATABASE  IF NOT EXISTS `toeic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `toeic`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: toeic
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `idaccount` int NOT NULL AUTO_INCREMENT,
  `username` text,
  `email` text,
  `password` text,
  `accountcategory` text,
  PRIMARY KEY (`idaccount`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (33,'trantuanphat','trantuanphat1010@gmail.com','1234567','1'),(34,'a','trantuanphat1010@gmail.com','1234567','1'),(35,'hihi','trantuanphat1010@gmail.com','1234567','1'),(36,'admin','','123','2');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `idbanner` int NOT NULL AUTO_INCREMENT,
  `Bannername` text,
  `Bannercontent` text,
  `bannerimage` text,
  PRIMARY KEY (`idbanner`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'Ludwig Wittgenstein','The limits of my language mean the limits of my world.','bg2.jpg'),(2,'Charlemagne','To have another language is to possess a second soul.','bg3.jpg'),(3,'Nelson Mandela','If you talk to a man in a language he understands, that goes to his head. If you talk to him in his language, that goes to his heart.','bg1.jpg'),(4,'Federico Fellini','A different language is a different vision of life','bg2.jpg');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorymember`
--

DROP TABLE IF EXISTS `categorymember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorymember` (
  `idcategorymember` int NOT NULL,
  `categorymembername` text,
  PRIMARY KEY (`idcategorymember`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymember`
--

LOCK TABLES `categorymember` WRITE;
/*!40000 ALTER TABLE `categorymember` DISABLE KEYS */;
INSERT INTO `categorymember` VALUES (1,'users'),(2,'administrator');
/*!40000 ALTER TABLE `categorymember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_grammar`
--

DROP TABLE IF EXISTS `comment_grammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_grammar` (
  `idcomment_Grammar` int NOT NULL AUTO_INCREMENT,
  `comment_Grammarcontent` text,
  `comment_Grammar_Username` text,
  `comment_idgrammar` text,
  `times` text,
  PRIMARY KEY (`idcomment_Grammar`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_grammar`
--

LOCK TABLES `comment_grammar` WRITE;
/*!40000 ALTER TABLE `comment_grammar` DISABLE KEYS */;
INSERT INTO `comment_grammar` VALUES (209,'ua ua','a','183','26-9-2021 8:49:48'),(210,'la sao ta','a','183','26-9-2021 8:49:53'),(211,'dác','a','183','26-9-2021 8:49:55'),(212,'la sao ta','a','179','26-9-2021 8:50:15'),(213,'uaua','a','179','26-9-2021 8:50:18'),(214,'áccas','trantuanphat','179','26-9-2021 8:51:22'),(215,'la sao ta','ac','182','26-9-2021 9:4:24'),(216,'ac','ac','182','26-9-2021 9:4:42'),(217,'lsa sao tao','ac','182','26-9-2021 9:6:5'),(218,'dá','trantuanphat','179','8-10-2021 14:48:31'),(219,'alo','trantuanphat','180','25-10-2021 15:34:9'),(220,'tuk cak','trantuanphat','180','25-10-2021 15:34:14'),(221,'alo','trantuanphat','187','25-10-2021 22:35:57'),(222,'ok','trantuanphat','187','25-10-2021 22:36:2'),(223,'ua alo','hihi','180','1-11-2021 23:14:5'),(224,'la sao ta','hihi','180','1-11-2021 23:14:21'),(225,'?? :D','hihi','181','1-11-2021 23:14:38'),(226,'?? :Da','hihi','181','1-11-2021 23:14:41'),(227,'?? :Dacâcs','hihi','181','1-11-2021 23:14:43'),(228,'ac','trantuanphat','180','1-11-2021 23:15:3'),(229,'accâcs','trantuanphat','180','1-11-2021 23:15:9'),(230,'la sao ta','trantuanphat','180','1-11-2021 23:15:15'),(231,'ua ua','trantuanphat','180','1-11-2021 23:15:52'),(232,'a','hihi','180','1-11-2021 23:16:33'),(233,'đá','hihi','181','1-11-2021 23:16:48'),(234,'a','hihi','181','1-11-2021 23:17:37'),(235,'a','hihi','181','1-11-2021 23:18:3'),(236,'ac','hihi','181','1-11-2021 23:18:6'),(237,'uaua','hihi','181','1-11-2021 23:18:11'),(238,'test','hihi','180','1-11-2021 23:18:22'),(239,'test1','hihi','180','1-11-2021 23:18:26'),(240,'utkcas','hihi','183','1-11-2021 23:19:31'),(241,'câcsc','trantuanphat','181','1-11-2021 23:19:46');
/*!40000 ALTER TABLE `comment_grammar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examination` (
  `idexamination` int NOT NULL AUTO_INCREMENT,
  `examinationname` text,
  `examinationimage` varchar(45) DEFAULT NULL,
  `checktable` int DEFAULT NULL,
  PRIMARY KEY (`idexamination`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examinationquestion`
--

DROP TABLE IF EXISTS `examinationquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examinationquestion` (
  `idexaminationquestion` int NOT NULL AUTO_INCREMENT,
  `num` int DEFAULT NULL,
  `imagequestion` varchar(45) DEFAULT NULL,
  `audio` varchar(45) DEFAULT NULL,
  `audiomp3` varchar(45) DEFAULT NULL,
  `paragraph` text,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `correctanswser` text,
  `examinationid` int DEFAULT NULL,
  `examinationquestionexplain` text,
  PRIMARY KEY (`idexaminationquestion`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinationquestion`
--

LOCK TABLES `examinationquestion` WRITE;
/*!40000 ALTER TABLE `examinationquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examinationquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grammarguide`
--

DROP TABLE IF EXISTS `grammarguide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grammarguide` (
  `idgrammarguide` int NOT NULL AUTO_INCREMENT,
  `grammarguidename` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `grammarguideimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`idgrammarguide`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarguide`
--

LOCK TABLES `grammarguide` WRITE;
/*!40000 ALTER TABLE `grammarguide` DISABLE KEYS */;
/*!40000 ALTER TABLE `grammarguide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id`
--

DROP TABLE IF EXISTS `id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id` (
  `idid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id`
--

LOCK TABLES `id` WRITE;
/*!40000 ALTER TABLE `id` DISABLE KEYS */;
INSERT INTO `id` VALUES (2),(185),(181);
/*!40000 ALTER TABLE `id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read`
--

DROP TABLE IF EXISTS `read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read` (
  `idreadexercise` int NOT NULL AUTO_INCREMENT,
  `readname` text,
  `readimage` text,
  `checktable` int DEFAULT NULL,
  PRIMARY KEY (`idreadexercise`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read`
--

LOCK TABLES `read` WRITE;
/*!40000 ALTER TABLE `read` DISABLE KEYS */;
/*!40000 ALTER TABLE `read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readquestion`
--

DROP TABLE IF EXISTS `readquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `readquestion` (
  `idreadquestion` int NOT NULL AUTO_INCREMENT,
  `num` int DEFAULT NULL,
  `paragraph` text,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `correctanswer` text,
  `idreadexercise` int DEFAULT NULL,
  PRIMARY KEY (`idreadquestion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readquestion`
--

LOCK TABLES `readquestion` WRITE;
/*!40000 ALTER TABLE `readquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `readquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `idresult` int NOT NULL AUTO_INCREMENT,
  `correctanswer` int DEFAULT NULL,
  `incorrectanswer` int DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  `username` text,
  `idexamination` int DEFAULT NULL,
  PRIMARY KEY (`idresult`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vocabulary` (
  `idvocabulary` int NOT NULL AUTO_INCREMENT,
  `vocabularyname` text,
  `vocabularyimage` text,
  `checktable` int DEFAULT NULL,
  PRIMARY KEY (`idvocabulary`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `vocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularydetails`
--

DROP TABLE IF EXISTS `vocabularydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vocabularydetails` (
  `idvocabularydetails` int NOT NULL AUTO_INCREMENT,
  `num` int DEFAULT NULL,
  `vocabularydetailsname` text,
  `transcribe` text,
  `image` text,
  `audiomp3` text,
  `audioogg` text,
  `mean` text,
  `idvocabulary` int DEFAULT NULL,
  PRIMARY KEY (`idvocabularydetails`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularydetails`
--

LOCK TABLES `vocabularydetails` WRITE;
/*!40000 ALTER TABLE `vocabularydetails` DISABLE KEYS */;
INSERT INTO `vocabularydetails` VALUES (201,1,'hinh1.png','audio1.ogg','audio1.mp3','It\'s only 36 centimeters tall, but to fans throughout the world, it represents the highest achievement in football. Every four years, teams from all over the globe compete to take home the FIFA World Cup Trophy, yet nobody ever does.','. This reading is mainly about……','the World Cup tournament',34),(202,2,'hinh2.png','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',34),(203,3,' ','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',34),(204,4,'hinh1.png',' ',' ','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',34),(205,1,'hinh1.png','audio1.ogg','audio1.mp3','It\'s only 36 centimeters tall, but to fans throughout the world, it represents the highest achievement in football. Every four years, teams from all over the globe compete to take home the FIFA World Cup Trophy, yet nobody ever does.','. This reading is mainly about……','the World Cup tournament',35),(206,2,'hinh2.png','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',35),(207,3,' ','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',35),(208,4,'hinh1.png',' ',' ','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',35);
/*!40000 ALTER TABLE `vocabularydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'toeic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-10 15:22:34
