CREATE DATABASE  IF NOT EXISTS `toeic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `toeic`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (33,'trantuanphat','trantuanphat1010@gmail.com','1234567','1');
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
INSERT INTO `banner` VALUES (1,'tesst','test','toeic_panner1.png'),(2,NULL,NULL,'toeic_panner2.jpg'),(3,NULL,NULL,'toeic_panner3.png'),(4,NULL,NULL,'toeic_panner.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_grammar`
--

LOCK TABLES `comment_grammar` WRITE;
/*!40000 ALTER TABLE `comment_grammar` DISABLE KEYS */;
INSERT INTO `comment_grammar` VALUES (209,'ua ua','a','183','26-9-2021 8:49:48'),(210,'la sao ta','a','183','26-9-2021 8:49:53'),(211,'dác','a','183','26-9-2021 8:49:55'),(212,'la sao ta','a','179','26-9-2021 8:50:15'),(213,'uaua','a','179','26-9-2021 8:50:18'),(214,'áccas','trantuanphat','179','26-9-2021 8:51:22'),(215,'la sao ta','ac','182','26-9-2021 9:4:24'),(216,'ac','ac','182','26-9-2021 9:4:42'),(217,'lsa sao tao','ac','182','26-9-2021 9:6:5'),(218,'dá','trantuanphat','179','8-10-2021 14:48:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (53,'last ne','hinh1.png',1),(54,'a',NULL,1),(55,'b','hinh2.png',0),(56,'c',NULL,0),(57,'c',NULL,0),(58,'tesst lai',NULL,0),(59,'a',NULL,1);
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
  PRIMARY KEY (`idexaminationquestion`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinationquestion`
--

LOCK TABLES `examinationquestion` WRITE;
/*!40000 ALTER TABLE `examinationquestion` DISABLE KEYS */;
INSERT INTO `examinationquestion` VALUES (94,222,'hinh1.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','hehe','hello',' ',' ','  ',9),(95,7,'hinh2.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',9),(96,8,'hinh3.png','audio1.mp3','audio4.ogg','audio1.ogg','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',9),(97,9,'hinh4.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ','a',' ',' ','  ',9),(98,10,'hinh 5',' ',' ','alo',' ',' ',' ',' ',' ',' ',9),(99,11,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',9),(100,12,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',9),(101,13,'hinh 6 ',' ',' ',' ',' ',' ',' ',' ',' ',' ',9),(102,14,'hinh7',' ',' ',' ',' ',' ',' ',' ',' ',' ',9),(103,222,'hinh1.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','hehe','hello',' ',' ','  ',34),(104,7,'hinh2.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',34),(105,8,'hinh3.png','audio1.mp3','audio4.ogg','audio1.ogg','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',34),(106,9,'hinh4.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ','a',' ',' ','  ',34),(107,10,'hinh 5',' ',' ','alo',' ',' ',' ',' ',' ',' ',34),(108,11,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',34),(109,12,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',34),(110,13,'hinh 6 ',' ',' ',' ',' ',' ',' ',' ',' ',' ',34),(111,14,'hinh7',' ',' ',' ',' ',' ',' ',' ',' ',' ',34),(112,222,'hinh1.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','hehe','hello',' ',' ','  ',31),(113,7,'hinh2.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',31),(114,8,'hinh3.png','audio1.mp3','audio4.ogg','audio1.ogg','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',31),(115,9,'hinh4.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ','a',' ',' ','  ',31),(116,10,'hinh 5',' ',' ','alo',' ',' ',' ',' ',' ',' ',31),(117,11,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',31),(118,12,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',31),(119,13,'hinh 6 ',' ',' ',' ',' ',' ',' ',' ',' ',' ',31),(120,14,'hinh7',' ',' ',' ',' ',' ',' ',' ',' ',' ',31),(121,222,'hinh1.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','hehe','hello',' ',' ','  ',35),(122,7,'hinh2.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',35),(123,8,'hinh3.png','audio1.mp3','audio4.ogg','audio1.ogg','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',35),(124,9,'hinh4.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ','a',' ',' ','  ',35),(125,10,'hinh 5',' ',' ','alo',' ',' ',' ',' ',' ',' ',35),(126,11,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',35),(127,12,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',35),(128,13,'hinh 6 ',' ',' ',' ',' ',' ',' ',' ',' ',' ',35),(129,14,'hinh7',' ',' ',' ',' ',' ',' ',' ',' ',' ',35),(139,222,'hinh1.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','hehe','hello',' ',' ','  ',47),(140,7,'hinh2.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',47),(141,8,'hinh3.png','audio1.mp3','audio4.ogg','audio1.ogg','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',47),(142,9,'hinh4.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ','a',' ',' ','  ',47),(143,10,'hinh 5',' ',' ','alo',' ',' ',' ',' ',' ',' ',47),(144,11,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',47),(145,12,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',47),(146,13,'hinh 6 ',' ',' ',' ',' ',' ',' ',' ',' ',' ',47),(147,14,'hinh7',' ',' ',' ',' ',' ',' ',' ',' ',' ',47),(148,222,'hinh1.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','hehe','hello',' ',' ','  ',48),(149,7,'hinh2.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',48),(150,8,'hinh3.png','audio1.mp3','audio4.ogg','audio1.ogg','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ',' ',' ',' ','  ',48),(151,9,'hinh4.png','audio1.mp3','audio1.ogg',' ','look at the picture and listen to the sentences. Choose the sentences that best describes ','  ','a',' ',' ','  ',48),(152,10,'hinh 5',' ',' ','alo',' ',' ',' ',' ',' ',' ',48),(153,11,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',48),(154,12,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',48),(155,13,'hinh 6 ',' ',' ',' ',' ',' ',' ',' ',' ',' ',48),(156,14,'hinh7',' ',' ',' ',' ',' ',' ',' ',' ',' ',48),(208,1,'hinh1.png','audio1.ogg','audio1.mp3','It\'s only 36 centimeters tall, but to fans throughout the world, it represents the highest achievement in football. Every four years, teams from all over the globe compete to take home the FIFA World Cup Trophy, yet nobody ever does.','. This reading is mainly about……','the World Cup tournament','thieves','the World Cup trophy','World Cup stars','the World Cup tournament',53),(209,2,'hinh2.png','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','1.What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','ac','none of the above','knotting carpet threads',53),(210,3,' ','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','2.What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder1','none of the above','mixing gunpowder1',53),(211,4,'hinh1.png',' ',' ','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','3.What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','alo_ck','none of the above','none of the above',53),(212,1,'hinh1.png','audio1.ogg','audio1.mp3','It\'s only 36 centimeters tall, but to fans throughout the world, it represents the highest achievement in football. Every four years, teams from all over the globe compete to take home the FIFA World Cup Trophy, yet nobody ever does.','. This reading is mainly about……','the World Cup tournament','thieves',' the World Cup trophy\n','World Cup stars','  World Cup stars',54),(213,2,'hinh2.png','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder\n','none of the above','none of the above',54),(214,3,' ','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder\n','none of the above','none of the above',54),(215,4,'hinh1.png',' ',' ','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder\n','none of the above','none of the above',54),(216,1,'hinh1.png','audio1.ogg','audio1.mp3','It\'s only 36 centimeters tall, but to fans throughout the world, it represents the highest achievement in football. Every four years, teams from all over the globe compete to take home the FIFA World Cup Trophy, yet nobody ever does.','. This reading is mainly about……','the World Cup tournament','thieves',' the World Cup trophy\n','World Cup stars','  World Cup stars',59),(217,2,'hinh2.png','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder\n','none of the above','none of the above',59),(218,3,' ','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder\n','none of the above','none of the above',59),(219,4,'hinh1.png',' ',' ','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder\n','none of the above','none of the above',59);
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarguide`
--

LOCK TABLES `grammarguide` WRITE;
/*!40000 ALTER TABLE `grammarguide` DISABLE KEYS */;
INSERT INTO `grammarguide` VALUES (179,'past simple','hear.png','Dấu hiệu nhận biết\r\nAlready\r\nJust\r\nRecently\r\nLately\r\nNot…yet\r\nEver\r\nNever\r\nStill\r\nSeveral times\r\nUp to now\r\nMany times\r\nSo far\r\nNever before\r\nFor + 1 khoảng thời gian (ví dụ: for 5 years)\r\nSince + 1 mốc thời gian (ví dụ: since 2012)\r\nFor so long/a long time\r\nCách sử dụng\r\n1. Diễn tả 1 sự việc đã xảy ra ở quá khứ nhưng kết quả của nó vẫn liên quan đến hiện tại. Ví dụ:\r\n\r\nThey’ve been married for nearly fifty years.\r\nShe has lived in Liverpool all her life.\r\n2. Diễn tả 1 hành động thường xuyên làm trong quá khứ và vẫn tiếp tục đến hiện tại. Ví dụ:\r\n\r\nI’ve played the guitar ever since I was a teenager.\r\nHe has written three books and he is working on another one.\r\n3. Ta thường sử dụng mệnh đề với “since” khi 1 sự việc bắt đầu trong quá khứ. Ví dụ:\r\n\r\nI have worked here since I left school.\r\n4. Nói về kinh nghiệm đã từng trải qua. Lưu ý:Thường sử dụng từ ever để nói về kinh nghiệm, việc từng trải qua cho đến hiện tại. Ví dụ:\r\n\r\nMy last birthday was the worst day I have ever had.\r\nVà không bao giờ sử dụng thể phủ định với ever. Ví dụ:\r\n\r\nHave you ever met George?\r\nYes, but I’ve never met his wife.\r\n5. Diễn tả hành động đã xảy ra trong quá khứ nhưng lại rất quan trọng ở thời điểm nói. Ví dụ:\r\n\r\nI can’t get in the house. I’ve lost my keys.\r\nI’m tired out. I’ve been working all day.\r\n6. Thường sử dụng phân từ 2 của “be” khi ai đó vừa tới nơi nào đó và đã quay trở lại. Ví dụ:\r\n\r\nA: Where have you been?\r\nB: I’ve just been out to the supermarket.\r\nA: Have you ever been to San Francisco?\r\nB: No, but I’ve been to Los Angeles.\r\nNhưng khi người đó chưa trở lại thì ta sử dụng have/has gone:\r\n\r\nA: Where is Maria? I haven’t seen her for weeks.\r\nB: She’s gone to Paris for a week. She’ll be back tomorrow.\r\n7. Thường dùng hiện tại hoàn thành với trạng ngữ chỉ thời gian để nói về thời gian gần đây: just, only just, recently. Ví dụ:\r\n\r\nScientists have recently discovered a new breed of monkey.\r\nWe have just got back from our holidays.\r\nHoặc trạng ngữ tính đến hiện tại: ever (trong câu hỏi), so far, until now, up to now, yet (trong câu hỏi và phủ định). Ví dụ:\r\n\r\nHave you ever seen a ghost?\r\nWhere have you been up to now?\r\nHave you finished your homework yet?\r\nNo, so far I’ve only done my history.\r\nChú ý: Không sử dụng hiện tại hoàn thành với các trạng ngữ chỉ quá khứ với những việc đã kết thúc:\r\n\r\nI have seen that film yesterday.\r\nWe have just bought a new car last week.\r\nWhen we were children we have been to California.\r\nNhưng có thể sử dụng với những việc chưa kết thúc:\r\n\r\nHave you seen Helen today?\r\nWe have bought a new car this week.\r\n4 – Present Perfect Continuous – Hiện Tại Hoàn Thành Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS has/have +been + V-ing + O	S has/have + Not +been + V-ing + O	Has/Have+ S+ been+ V-ing + O?	Wh_Q + have/has + S + been + V-ing?\r\nDấu hiệu nhận biết\r\nAll day\r\nAll week\r\nFor a long time\r\nAlmost\r\nThis week\r\nRecently\r\nAll day long\r\nThe whole week\r\nLately\r\nIn the past week\r\nIn recent years\r\nUp until now\r\nSo far\r\nFor + 1 khoảng thời gian\r\nSince + 1 mốc thời gian\r\n(Thời này thường đi với các động từ wait, stay, live, work, learn, sit, stand…)\r\n\r\nCách sử dụng\r\n1. Dùng để nhấn mạnh tính liên tục của 1 hành động bắt đầu trong quá khứ, kéo dài đến hiện tại và còn tiếp tục đến tương lai.  Ví dụ:\r\n\r\nI have been waiting for you since 4 p.m.\r\nShe has been working for more than 2 hours.\r\n2. Là nguyên nhân dẫn đến kết quả hiện tại.\r\n\r\nSo sánh hiện tại hoàn thành và hiện tại hoàn thành tiếp diễn\r\nHiện tại hoàn thành	Hiện tại hoàn thành tiếp diễn\r\nNhấn mạnh kết của hành động, số lượng thu được.\r\nVí dụ: I have taught for 4 hours today. (hành động đã hoàn tất vào lúc nói, nhấn mạnh vào kết quả “4 giờ”)	Nhấn mạnh tính liên tục của hành động.\r\nVí dụ: I have been teaching since 2 p.m (hành động chưa hoàn tất, nhấn mạnh vào tính liên tục)\r\n5 – Simple Past – Quá Khứ Đơn\r\n\r\n 	Động từ thường	To be\r\nKhẳng định	S + V-ed / V bqt-qk + O\r\nVbpt-qk: Động từ bất quy tắc, quá khứ	S + To be + N/Adj\r\nWas: I, he, she, it, danh từ số ít, danh từ không đếm được\r\nWere: You, we, they, danh từ s\r\n'),(180,'HTD','landscap4.jpg','Dấu hiệu nhận biết\r\nAlready\r\nJust\r\nRecently\r\nLately\r\nNot…yet\r\nEver\r\nNever\r\nStill\r\nSeveral times\r\nUp to now\r\nMany times\r\nSo far\r\nNever before\r\nFor + 1 khoảng thời gian (ví dụ: for 5 years)\r\nSince + 1 mốc thời gian (ví dụ: since 2012)\r\nFor so long/a long time\r\nCách sử dụng\r\n1. Diễn tả 1 sự việc đã xảy ra ở quá khứ nhưng kết quả của nó vẫn liên quan đến hiện tại. Ví dụ:\r\n\r\nThey’ve been married for nearly fifty years.\r\nShe has lived in Liverpool all her life.\r\n2. Diễn tả 1 hành động thường xuyên làm trong quá khứ và vẫn tiếp tục đến hiện tại. Ví dụ:\r\n\r\nI’ve played the guitar ever since I was a teenager.\r\nHe has written three books and he is working on another one.\r\n3. Ta thường sử dụng mệnh đề với “since” khi 1 sự việc bắt đầu trong quá khứ. Ví dụ:\r\n\r\nI have worked here since I left school.\r\n4. Nói về kinh nghiệm đã từng trải qua. Lưu ý:Thường sử dụng từ ever để nói về kinh nghiệm, việc từng trải qua cho đến hiện tại. Ví dụ:\r\n\r\nMy last birthday was the worst day I have ever had.\r\nVà không bao giờ sử dụng thể phủ định với ever. Ví dụ:\r\n\r\nHave you ever met George?\r\nYes, but I’ve never met his wife.\r\n5. Diễn tả hành động đã xảy ra trong quá khứ nhưng lại rất quan trọng ở thời điểm nói. Ví dụ:\r\n\r\nI can’t get in the house. I’ve lost my keys.\r\nI’m tired out. I’ve been working all day.\r\n6. Thường sử dụng phân từ 2 của “be” khi ai đó vừa tới nơi nào đó và đã quay trở lại. Ví dụ:\r\n\r\nA: Where have you been?\r\nB: I’ve just been out to the supermarket.\r\nA: Have you ever been to San Francisco?\r\nB: No, but I’ve been to Los Angeles.\r\nNhưng khi người đó chưa trở lại thì ta sử dụng have/has gone:\r\n\r\nA: Where is Maria? I haven’t seen her for weeks.\r\nB: She’s gone to Paris for a week. She’ll be back tomorrow.\r\n7. Thường dùng hiện tại hoàn thành với trạng ngữ chỉ thời gian để nói về thời gian gần đây: just, only just, recently. Ví dụ:\r\n\r\nScientists have recently discovered a new breed of monkey.\r\nWe have just got back from our holidays.\r\nHoặc trạng ngữ tính đến hiện tại: ever (trong câu hỏi), so far, until now, up to now, yet (trong câu hỏi và phủ định). Ví dụ:\r\n\r\nHave you ever seen a ghost?\r\nWhere have you been up to now?\r\nHave you finished your homework yet?\r\nNo, so far I’ve only done my history.\r\nChú ý: Không sử dụng hiện tại hoàn thành với các trạng ngữ chỉ quá khứ với những việc đã kết thúc:\r\n\r\nI have seen that film yesterday.\r\nWe have just bought a new car last week.\r\nWhen we were children we have been to California.\r\nNhưng có thể sử dụng với những việc chưa kết thúc:\r\n\r\nHave you seen Helen today?\r\nWe have bought a new car this week.\r\n4 – Present Perfect Continuous – Hiện Tại Hoàn Thành Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS has/have +been + V-ing + O	S has/have + Not +been + V-ing + O	Has/Have+ S+ been+ V-ing + O?	Wh_Q + have/has + S + been + V-ing?\r\nDấu hiệu nhận biết\r\nAll day\r\nAll week\r\nFor a long time\r\nAlmost\r\nThis week\r\nRecently\r\nAll day long\r\nThe whole week\r\nLately\r\nIn the past week\r\nIn recent years\r\nUp until now\r\nSo far\r\nFor + 1 khoảng thời gian\r\nSince + 1 mốc thời gian\r\n(Thời này thường đi với các động từ wait, stay, live, work, learn, sit, stand…)\r\n\r\nCách sử dụng\r\n1. Dùng để nhấn mạnh tính liên tục của 1 hành động bắt đầu trong quá khứ, kéo dài đến hiện tại và còn tiếp tục đến tương lai.  Ví dụ:\r\n\r\nI have been waiting for you since 4 p.m.\r\nShe has been working for more than 2 hours.\r\n2. Là nguyên nhân dẫn đến kết quả hiện tại.\r\n\r\nSo sánh hiện tại hoàn thành và hiện tại hoàn thành tiếp diễn\r\nHiện tại hoàn thành	Hiện tại hoàn thành tiếp diễn\r\nNhấn mạnh kết của hành động, số lượng thu được.\r\nVí dụ: I have taught for 4 hours today. (hành động đã hoàn tất vào lúc nói, nhấn mạnh vào kết quả “4 giờ”)	Nhấn mạnh tính liên tục của hành động.\r\nVí dụ: I have been teaching since 2 p.m (hành động chưa hoàn tất, nhấn mạnh vào tính liên tục)\r\n5 – Simple Past – Quá Khứ Đơn\r\n\r\n 	Động từ thường	To be\r\nKhẳng định	S + V-ed / V bqt-qk + O\r\nVbpt-qk: Động từ bất quy tắc, quá khứ	S + To be + N/Adj\r\nWas: I, he, she, it, danh từ số ít, danh từ không đếm được\r\nWere: You, we, they, danh từ s\r\n'),(181,'TLD','icondress.png','Will/Shall	To be going to\r\nKhẳng định	S + shall/will + V + O	S + to be + going to + V + O\r\nPhủ định	S + shall/will + Not + V + O	S + to be + not + going to + V + O\r\nNghi vấn	Will/ Shall + S + V + O?	To be + S + going to + V + O?\r\nCâu hỏi Wh_Q	Wh_Q + will/shall + S + V?	Wh_Q + To be + S + going to + V?\r\nCách sử dụng	\r\nDiễn tả việc sẽ xảy ra trong tương lai mà không sắp xếp, dự định trước.\r\nĐề nghị được làm việc gì đó.\r\nHứa làm 1 việc gì đó.\r\nYêu cầu ai đó làm việc gì.\r\nĐồng ý, từ chối làm việc gì.\r\nDiễn tả việc sắp xảy ra ở tương lai gần.\r\nDiễn tả dự định sẽ làm 1 việc gì đó trong tương lai.\r\nDự đoán việc sẽ xảy ra ở tương lai dựa vào dấu hiệu ở hiện tại.\r\nDấu hiệu nhận biết\r\nTonight\r\nTomorrow\r\nNext (day, week, month, year)\r\nLater\r\nSoon\r\nIn + 1 khoảng thời gian\r\nThời gian trong tương lai\r\nTrong câu có những động từ chỉ quan điểm như: think, believe, suppose, perhaps, probably\r\nCách sử dụng\r\n1. Khi bạn đoán (predict, guess), dùng will hoặc be going to. Ví dụ:\r\n\r\nI think the United will win the game.\r\nI think the United is going to win the game.\r\n2. Khi có dự định trước, dùng be going to. Ví dụ:\r\n\r\nWe’re going to have a meal.\r\n3. Diễn tả sự tình nguyện hoặc sự sẵn sàng, dùng will. Ví dụ:\r\n\r\nOh, I’ve left the door open. I will go and shut it.\r\n10 – Future Continuous – Thì Tương Lai Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS + shall/will + be + V_ing+ O	S + shall/will + NOT+ be + V_ing+ O	Shall/will +S+ be + V_ing+ O?	Wh_Q + shall/will + be + S + V-ing?\r\nDấu hiệu nhận biết\r\nIn the future\r\nNext time/year/week\r\nSoon\r\nAt this time/ At this moment + thời gian trong tương lai\r\nAt + giờ cụ thể + thời gian trong tương lai\r\nCách sử dụng\r\n1. Dùng để diễn tả một hành động hay sự việc đang diễn ra tại một thời điểm xác định trong tương lai.  Ví dụ:\r\n\r\nDon’t ring at 8 o’clock. I’ll be watching “Who Wants to be a Millionaire”.\r\nThis time tomorrow we’ll be sitting on the beach. I can’t wait!\r\n2. Dùng để diễn tả một hành động, một sự việc đang xảy ra thì một hành động, sự việc khác xen vào trong tương lai.  Ví dụ:\r\n\r\nWhen you come tomorrow, they will be playing badminton.\r\nHe will be waiting for me when I arrive tomorrow.\r\n3. Trong những câu không phải về tương lai nhưng chúng ta có thể sử dụng thì tương lai tiếp diễn để nói về những gì chúng ta giả định đang xảy ra tại thời điểm này.  Ví dụ:\r\n\r\nDon’t phone grandma now, she’ll be having dinner.\r\nThe kids are very quiet. They’ll be doing something wrong, I know it!\r\n11 – Future Perfect – Thì Tương Lai Hoàn Thành\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS + shall/will + have/has + V3 + O	S + shall/will + not + have/has + V3 + O	Shall/Will + S + have/has + V3 + O?	Wh_Q + shall/will + have/has + S + V3 + O?\r\nDấu hiệu nhận biết\r\nBy the time\r\nPrior to the time\r\nBy + thời gian trong tương lai\r\nBy the end of + thời gian trong tương lai\r\nBefore + thời gian trong tương lai\r\nCách sử dụng\r\n1. Dùng để diễn tả một hành động hay sự việc hoàn thành trước một thời điểm trong tương lai. Ví dụ:\r\n\r\nDo you think you will have finished it by next Thursday?\r\nIn 5 years time I’ll have finished university.\r\n2. Dùng để diễn tả một hành động hay sự việc hoàn thành trước một hành động hay sự việc khác trong tương lai. Ví dụ:\r\n\r\nI will have made the meal ready before the time you come tomorrow.\r\n12 – Future Perfect Continuous – Thì Tương Lai Hoàn Thành Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi Vấn	Câu hỏi Wh_Q\r\nS + shall/will + have been + V-ing + O	S + shall/will + not + have been + V-ing + O	Shall/will + S+ have been + V-ing + O?	Wh_Q + S + been + V-ing + O?\r\nDấu hiệu nhận biết\r\nFor + khoảng thời gian + by/before + mốc thời gian trong tương lai. VD: For 2 hours by the time she arrives.\r\nCách sử dụng\r\nDùng để diễn tả một hành động xảy ra trong quá khứ tiếp diễn liên tục đến một thời điểm cho trước trong tương lai.  Ví dụ:\r\n\r\nI will have been studying English for 10 year by the end of next month.\r\nTomorrow, when you come back, I will have been watching that football match on TV for half an hour.\r\nMẹo Ghi Nhớ 12 Thì Trong Tiếng Anh\r\nĐể tiết kiệm thời gian hơn và tránh việc học thuộc lòng một cách máy móc, dưới đây là 3 mẹo ghi nhớ 12 thì trong tiếng Anh siêu nhanh mà bạn cần biết.\r\n\r\nNhớ dạng động từ tương ứng với mỗi thì trong tiếng Anh\r\n12 thì trong tiếng Anh, mỗi thì có một cấu trúc ngữ pháp và cách dùng khác nhau. Bạn cần nắm chắc cách xây dựng cấu trúc của mỗi thì để tránh nhầm lẫn không đáng có.\r\n\r\nDựa trên bảng động từ bất quy tắc trong tiếng Anh (bạn có thể tìm thấy trên internet), động từ tồn tại ở 3 dạng là V1 (nguyên thể), V2 (quá khứ), và V3 (phần từ 2).\r\n\r\nBảng động từ bất quy tắc\r\n'),(182,'SQL','191470694_771199697090274_7826799411433853678_n.jpg','Will/Shall	To be going to\r\nKhẳng định	S + shall/will + V + O	S + to be + going to + V + O\r\nPhủ định	S + shall/will + Not + V + O	S + to be + not + going to + V + O\r\nNghi vấn	Will/ Shall + S + V + O?	To be + S + going to + V + O?\r\nCâu hỏi Wh_Q	Wh_Q + will/shall + S + V?	Wh_Q + To be + S + going to + V?\r\nCách sử dụng	\r\nDiễn tả việc sẽ xảy ra trong tương lai mà không sắp xếp, dự định trước.\r\nĐề nghị được làm việc gì đó.\r\nHứa làm 1 việc gì đó.\r\nYêu cầu ai đó làm việc gì.\r\nĐồng ý, từ chối làm việc gì.\r\nDiễn tả việc sắp xảy ra ở tương lai gần.\r\nDiễn tả dự định sẽ làm 1 việc gì đó trong tương lai.\r\nDự đoán việc sẽ xảy ra ở tương lai dựa vào dấu hiệu ở hiện tại.\r\nDấu hiệu nhận biết\r\nTonight\r\nTomorrow\r\nNext (day, week, month, year)\r\nLater\r\nSoon\r\nIn + 1 khoảng thời gian\r\nThời gian trong tương lai\r\nTrong câu có những động từ chỉ quan điểm như: think, believe, suppose, perhaps, probably\r\nCách sử dụng\r\n1. Khi bạn đoán (predict, guess), dùng will hoặc be going to. Ví dụ:\r\n\r\nI think the United will win the game.\r\nI think the United is going to win the game.\r\n2. Khi có dự định trước, dùng be going to. Ví dụ:\r\n\r\nWe’re going to have a meal.\r\n3. Diễn tả sự tình nguyện hoặc sự sẵn sàng, dùng will. Ví dụ:\r\n\r\nOh, I’ve left the door open. I will go and shut it.\r\n10 – Future Continuous – Thì Tương Lai Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS + shall/will + be + V_ing+ O	S + shall/will + NOT+ be + V_ing+ O	Shall/will +S+ be + V_ing+ O?	Wh_Q + shall/will + be + S + V-ing?\r\nDấu hiệu nhận biết\r\nIn the future\r\nNext time/year/week\r\nSoon\r\nAt this time/ At this moment + thời gian trong tương lai\r\nAt + giờ cụ thể + thời gian trong tương lai\r\nCách sử dụng\r\n1. Dùng để diễn tả một hành động hay sự việc đang diễn ra tại một thời điểm xác định trong tương lai.  Ví dụ:\r\n\r\nDon’t ring at 8 o’clock. I’ll be watching “Who Wants to be a Millionaire”.\r\nThis time tomorrow we’ll be sitting on the beach. I can’t wait!\r\n2. Dùng để diễn tả một hành động, một sự việc đang xảy ra thì một hành động, sự việc khác xen vào trong tương lai.  Ví dụ:\r\n\r\nWhen you come tomorrow, they will be playing badminton.\r\nHe will be waiting for me when I arrive tomorrow.\r\n3. Trong những câu không phải về tương lai nhưng chúng ta có thể sử dụng thì tương lai tiếp diễn để nói về những gì chúng ta giả định đang xảy ra tại thời điểm này.  Ví dụ:\r\n\r\nDon’t phone grandma now, she’ll be having dinner.\r\nThe kids are very quiet. They’ll be doing something wrong, I know it!\r\n11 – Future Perfect – Thì Tương Lai Hoàn Thành\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS + shall/will + have/has + V3 + O	S + shall/will + not + have/has + V3 + O	Shall/Will + S + have/has + V3 + O?	Wh_Q + shall/will + have/has + S + V3 + O?\r\nDấu hiệu nhận biết\r\nBy the time\r\nPrior to the time\r\nBy + thời gian trong tương lai\r\nBy the end of + thời gian trong tương lai\r\nBefore + thời gian trong tương lai\r\nCách sử dụng\r\n1. Dùng để diễn tả một hành động hay sự việc hoàn thành trước một thời điểm trong tương lai. Ví dụ:\r\n\r\nDo you think you will have finished it by next Thursday?\r\nIn 5 years time I’ll have finished university.\r\n2. Dùng để diễn tả một hành động hay sự việc hoàn thành trước một hành động hay sự việc khác trong tương lai. Ví dụ:\r\n\r\nI will have made the meal ready before the time you come tomorrow.\r\n12 – Future Perfect Continuous – Thì Tương Lai Hoàn Thành Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi Vấn	Câu hỏi Wh_Q\r\nS + shall/will + have been + V-ing + O	S + shall/will + not + have been + V-ing + O	Shall/will + S+ have been + V-ing + O?	Wh_Q + S + been + V-ing + O?\r\nDấu hiệu nhận biết\r\nFor + khoảng thời gian + by/before + mốc thời gian trong tương lai. VD: For 2 hours by the time she arrives.\r\nCách sử dụng\r\nDùng để diễn tả một hành động xảy ra trong quá khứ tiếp diễn liên tục đến một thời điểm cho trước trong tương lai.  Ví dụ:\r\n\r\nI will have been studying English for 10 year by the end of next month.\r\nTomorrow, when you come back, I will have been watching that football match on TV for half an hour.\r\nMẹo Ghi Nhớ 12 Thì Trong Tiếng Anh\r\nĐể tiết kiệm thời gian hơn và tránh việc học thuộc lòng một cách máy móc, dưới đây là 3 mẹo ghi nhớ 12 thì trong tiếng Anh siêu nhanh mà bạn cần biết.\r\n\r\nNhớ dạng động từ tương ứng với mỗi thì trong tiếng Anh\r\n12 thì trong tiếng Anh, mỗi thì có một cấu trúc ngữ pháp và cách dùng khác nhau. Bạn cần nắm chắc cách xây dựng cấu trúc của mỗi thì để tránh nhầm lẫn không đáng có.\r\n\r\nDựa trên bảng động từ bất quy tắc trong tiếng Anh (bạn có thể tìm thấy trên internet), động từ tồn tại ở 3 dạng là V1 (nguyên thể), V2 (quá khứ), và V3 (phần từ 2).\r\n\r\nBảng động từ bất quy tắc\r\n'),(183,'hihi','testanhdh.jpg','Will/Shall	To be going to\r\nKhẳng định	S + shall/will + V + O	S + to be + going to + V + O\r\nPhủ định	S + shall/will + Not + V + O	S + to be + not + going to + V + O\r\nNghi vấn	Will/ Shall + S + V + O?	To be + S + going to + V + O?\r\nCâu hỏi Wh_Q	Wh_Q + will/shall + S + V?	Wh_Q + To be + S + going to + V?\r\nCách sử dụng	\r\nDiễn tả việc sẽ xảy ra trong tương lai mà không sắp xếp, dự định trước.\r\nĐề nghị được làm việc gì đó.\r\nHứa làm 1 việc gì đó.\r\nYêu cầu ai đó làm việc gì.\r\nĐồng ý, từ chối làm việc gì.\r\nDiễn tả việc sắp xảy ra ở tương lai gần.\r\nDiễn tả dự định sẽ làm 1 việc gì đó trong tương lai.\r\nDự đoán việc sẽ xảy ra ở tương lai dựa vào dấu hiệu ở hiện tại.\r\nDấu hiệu nhận biết\r\nTonight\r\nTomorrow\r\nNext (day, week, month, year)\r\nLater\r\nSoon\r\nIn + 1 khoảng thời gian\r\nThời gian trong tương lai\r\nTrong câu có những động từ chỉ quan điểm như: think, believe, suppose, perhaps, probably\r\nCách sử dụng\r\n1. Khi bạn đoán (predict, guess), dùng will hoặc be going to. Ví dụ:\r\n\r\nI think the United will win the game.\r\nI think the United is going to win the game.\r\n2. Khi có dự định trước, dùng be going to. Ví dụ:\r\n\r\nWe’re going to have a meal.\r\n3. Diễn tả sự tình nguyện hoặc sự sẵn sàng, dùng will. Ví dụ:\r\n\r\nOh, I’ve left the door open. I will go and shut it.\r\n10 – Future Continuous – Thì Tương Lai Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS + shall/will + be + V_ing+ O	S + shall/will + NOT+ be + V_ing+ O	Shall/will +S+ be + V_ing+ O?	Wh_Q + shall/will + be + S + V-ing?\r\nDấu hiệu nhận biết\r\nIn the future\r\nNext time/year/week\r\nSoon\r\nAt this time/ At this moment + thời gian trong tương lai\r\nAt + giờ cụ thể + thời gian trong tương lai\r\nCách sử dụng\r\n1. Dùng để diễn tả một hành động hay sự việc đang diễn ra tại một thời điểm xác định trong tương lai.  Ví dụ:\r\n\r\nDon’t ring at 8 o’clock. I’ll be watching “Who Wants to be a Millionaire”.\r\nThis time tomorrow we’ll be sitting on the beach. I can’t wait!\r\n2. Dùng để diễn tả một hành động, một sự việc đang xảy ra thì một hành động, sự việc khác xen vào trong tương lai.  Ví dụ:\r\n\r\nWhen you come tomorrow, they will be playing badminton.\r\nHe will be waiting for me when I arrive tomorrow.\r\n3. Trong những câu không phải về tương lai nhưng chúng ta có thể sử dụng thì tương lai tiếp diễn để nói về những gì chúng ta giả định đang xảy ra tại thời điểm này.  Ví dụ:\r\n\r\nDon’t phone grandma now, she’ll be having dinner.\r\nThe kids are very quiet. They’ll be doing something wrong, I know it!\r\n11 – Future Perfect – Thì Tương Lai Hoàn Thành\r\n\r\nKhẳng định	Phủ định	Nghi vấn	Câu hỏi Wh_Q\r\nS + shall/will + have/has + V3 + O	S + shall/will + not + have/has + V3 + O	Shall/Will + S + have/has + V3 + O?	Wh_Q + shall/will + have/has + S + V3 + O?\r\nDấu hiệu nhận biết\r\nBy the time\r\nPrior to the time\r\nBy + thời gian trong tương lai\r\nBy the end of + thời gian trong tương lai\r\nBefore + thời gian trong tương lai\r\nCách sử dụng\r\n1. Dùng để diễn tả một hành động hay sự việc hoàn thành trước một thời điểm trong tương lai. Ví dụ:\r\n\r\nDo you think you will have finished it by next Thursday?\r\nIn 5 years time I’ll have finished university.\r\n2. Dùng để diễn tả một hành động hay sự việc hoàn thành trước một hành động hay sự việc khác trong tương lai. Ví dụ:\r\n\r\nI will have made the meal ready before the time you come tomorrow.\r\n12 – Future Perfect Continuous – Thì Tương Lai Hoàn Thành Tiếp Diễn\r\n\r\nKhẳng định	Phủ định	Nghi Vấn	Câu hỏi Wh_Q\r\nS + shall/will + have been + V-ing + O	S + shall/will + not + have been + V-ing + O	Shall/will + S+ have been + V-ing + O?	Wh_Q + S + been + V-ing + O?\r\nDấu hiệu nhận biết\r\nFor + khoảng thời gian + by/before + mốc thời gian trong tương lai. VD: For 2 hours by the time she arrives.\r\nCách sử dụng\r\nDùng để diễn tả một hành động xảy ra trong quá khứ tiếp diễn liên tục đến một thời điểm cho trước trong tương lai.  Ví dụ:\r\n\r\nI will have been studying English for 10 year by the end of next month.\r\nTomorrow, when you come back, I will have been watching that football match on TV for half an hour.\r\nMẹo Ghi Nhớ 12 Thì Trong Tiếng Anh\r\nĐể tiết kiệm thời gian hơn và tránh việc học thuộc lòng một cách máy móc, dưới đây là 3 mẹo ghi nhớ 12 thì trong tiếng Anh siêu nhanh mà bạn cần biết.\r\n\r\nNhớ dạng động từ tương ứng với mỗi thì trong tiếng Anh\r\n12 thì trong tiếng Anh, mỗi thì có một cấu trúc ngữ pháp và cách dùng khác nhau. Bạn cần nắm chắc cách xây dựng cấu trúc của mỗi thì để tránh nhầm lẫn không đáng có.\r\n\r\nDựa trên bảng động từ bất quy tắc trong tiếng Anh (bạn có thể tìm thấy trên internet), động từ tồn tại ở 3 dạng là V1 (nguyên thể), V2 (quá khứ), và V3 (phần từ 2).\r\n\r\nBảng động từ bất quy tắc\r\n'),(184,'cái j z toi',NULL,'ác');
/*!40000 ALTER TABLE `grammarguide` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (19,1,3,'Thu Oct 14 08:49:33 ICT 2021','trantuanphat',53),(20,0,4,'Fri Oct 15 10:22:23 ICT 2021','trantuanphat',59);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
INSERT INTO `vocabulary` VALUES (15,'tesst','competition.jpg',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularydetails`
--

LOCK TABLES `vocabularydetails` WRITE;
/*!40000 ALTER TABLE `vocabularydetails` DISABLE KEYS */;
INSERT INTO `vocabularydetails` VALUES (96,1,'competition  ract ','/,kɔmpi\'tiʃn/','competition.jpg','competition.mp3','competition.ogg','(v): ‹sự/cuộc› cạnh tranh, tranh giành, thi đấu',15),(97,2,'consume ','/kən\'sju:m/','consume.jpg','consume.mp3','consume.ogg','(v): tiêu thụ, tiêu dùng',15),(98,3,'inspiration ','/,inspə\'reiʃn/','inspiration.jpg','inspiration.mp3','inspiration.ogg','(n): ‹sự/người/vật› truyền cảm hứng, gây cảm hứng',15),(99,4,'market ','/\'mɑ:kit/','market.jpg','market.mp3','market.ogg','(v): thị trường, chợ, nơi mua bán sản phẩm…',15),(100,5,'satisfaction ','/,sætis\'fækʃn/','satisfaction.jpg','satisfaction.mp3','satisfaction.ogg','(n): sự làm thỏa mãn, sự hài lòng',15);
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

-- Dump completed on 2021-10-15 11:29:33
