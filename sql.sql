CREATE DATABASE  IF NOT EXISTS `toeic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `toeic`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: toeic
-- ------------------------------------------------------
-- Server version	8.0.27

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (33,'trantuanphat','trantuanphat1010@gmail.com','1234567','1'),(34,'a','trantuanphat1010@gmail.com','1234567','1'),(35,'hihi','trantuanphat1010@gmail.com','1234567','1'),(36,'admin','','123','2'),(37,'phattran','tailieucuaphat@gmail.com','1234567','1'),(38,'admin1','tailieucuaphat1010@gmail.com','1234567','1'),(39,'phat','tailieucuaphat1010@gmail.com','phat123','1'),(40,'phat2','tailieucuaphat1010@gmail.com','1234567','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_grammar`
--

LOCK TABLES `comment_grammar` WRITE;
/*!40000 ALTER TABLE `comment_grammar` DISABLE KEYS */;
INSERT INTO `comment_grammar` VALUES (209,'ua ua','a','183','26-9-2021 8:49:48'),(210,'la sao ta','a','183','26-9-2021 8:49:53'),(211,'dác','a','183','26-9-2021 8:49:55'),(212,'la sao ta','a','179','26-9-2021 8:50:15'),(213,'uaua','a','179','26-9-2021 8:50:18'),(214,'áccas','trantuanphat','179','26-9-2021 8:51:22'),(215,'la sao ta','ac','182','26-9-2021 9:4:24'),(216,'ac','ac','182','26-9-2021 9:4:42'),(217,'lsa sao tao','ac','182','26-9-2021 9:6:5'),(218,'dá','trantuanphat','179','8-10-2021 14:48:31'),(219,'alo','trantuanphat','180','25-10-2021 15:34:9'),(220,'tuk cak','trantuanphat','180','25-10-2021 15:34:14'),(221,'alo','trantuanphat','187','25-10-2021 22:35:57'),(222,'ok','trantuanphat','187','25-10-2021 22:36:2'),(223,'ua alo','hihi','180','1-11-2021 23:14:5'),(224,'la sao ta','hihi','180','1-11-2021 23:14:21'),(225,'?? :D','hihi','181','1-11-2021 23:14:38'),(226,'?? :Da','hihi','181','1-11-2021 23:14:41'),(227,'?? :Dacâcs','hihi','181','1-11-2021 23:14:43'),(228,'ac','trantuanphat','180','1-11-2021 23:15:3'),(229,'accâcs','trantuanphat','180','1-11-2021 23:15:9'),(230,'la sao ta','trantuanphat','180','1-11-2021 23:15:15'),(231,'ua ua','trantuanphat','180','1-11-2021 23:15:52'),(232,'a','hihi','180','1-11-2021 23:16:33'),(233,'đá','hihi','181','1-11-2021 23:16:48'),(234,'a','hihi','181','1-11-2021 23:17:37'),(235,'a','hihi','181','1-11-2021 23:18:3'),(236,'ac','hihi','181','1-11-2021 23:18:6'),(237,'uaua','hihi','181','1-11-2021 23:18:11'),(238,'test','hihi','180','1-11-2021 23:18:22'),(239,'test1','hihi','180','1-11-2021 23:18:26'),(240,'utkcas','hihi','183','1-11-2021 23:19:31'),(241,'câcsc','trantuanphat','181','1-11-2021 23:19:46'),(242,'a','admin1','192','19-12-2021 22:31:23'),(243,'aấccas','admin1','192','19-12-2021 22:31:28'),(244,'aấccasâcsc','admin1','192','19-12-2021 22:31:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (82,'baitap3','excercise.jpg',1),(83,'bai tap 2','excercise.jpg',1),(84,'baitap 3','baitap3.xls',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=539 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinationquestion`
--

LOCK TABLES `examinationquestion` WRITE;
/*!40000 ALTER TABLE `examinationquestion` DISABLE KEYS */;
INSERT INTO `examinationquestion` VALUES (499,1,'excercise.jpg','practice.ogg','practice.mp3','2.Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball','knotting carpet threads','mixing gunpowder\n','none of the above','none of the above',82,' '),(500,2,'excercise.jpg','practice.ogg','practice.mp3','2.Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','Water at 100 degree Centigrade.','boil','boils','boiling','is boiling','boils',82,'Dùng HT đơn để diễn tả 1 sự thật hiển nhiên ‘Nước sôi ở 100 độ C’'),(501,3,'excercise.jpg','practice.ogg','practice.mp3',' ','George ___________ to the movies very often','not go','don’t go','doesn’t go','not to','doesn’t go',82,'Dùng HT đơn để diễn tả hành động thường xuyên xảy ra như 1 thói quen.'),(502,4,'excercise.jpg','practice.ogg','practice.mp3',' ','How many languages ____________?','do you speak','are you speak','are you speaking','will you speak','do you speak',82,'Dùng thì HT đơn'),(503,5,'excercise.jpg','practice.ogg','practice.mp3',' ','The swimming pool at 9.00 am and at 6.30 pm','open/ close','opens / closes','opens/ close','open / closes','opens / closes',82,'Dùng HT đơn để diễn tả sự việc diễn ra theo lịch trình'),(504,6,'excercise.jpg','practice.ogg','practice.mp3',' ','Would you like a cigarette? No, thanks, I ____________.','not smoke','doesn’t smoke','don’t smoke','am not smoke','don’t smoke',82,'Dùng thì HT đơn diễn tả thói quen không hút thuốc lá'),(505,7,'excercise.jpg','practice.ogg','practice.mp3',' ','I____________ your telephone number.','not know','don’t know','don’t knew','am not knowing','don’t know',82,'Dùng thì HT đơn'),(506,8,'excercise.jpg','practice.ogg','practice.mp3',' ','Bad students never ____________ hard','works','work','are working','is working','work',82,'Dùng HT đơn diễn tả 1 sự việc là một chân lý “Học sinh hư không bao giờ học chăm chỉ”.'),(507,9,'excercise.jpg','practice.ogg','practice.mp3',' ','Those children ____________for 2 hours every afternoon.','sleep','sleeps','is sleeping','are sleeping','sleep',82,'Dùng HT đơn diễn tả 1 thói quen hoặc 1 hành động lặp lại nhiều lần; hơn nữa “those children” là số nhiều nên dùng “are”'),(508,10,'excercise.jpg','practice.ogg','practice.mp3',' ','Light ____________ faster than sound.','travels','traveled','travel','is travelling','travels',82,'Dùng HT đơn diễn tả 1 chân lý, 1 sự thật hiển nhiên “Ánh sáng đi nhanh hơn âm thanh”'),(509,11,'excercise.jpg','practice.ogg','practice.mp3',' ','They ____________to Ha Long for their last summer vacation.','go','are going','was going','went','went',82,'“last summer vacation”: kì nghỉ hè năm ngoái- dấu hiệu của thì QK đơn.'),(510,12,'excercise.jpg','practice.ogg','practice.mp3',' ','She ____________ to brush her teeth yesterday.','forget','forgot','forgetting','was forgetting','forgot',82,'“yesterday”:ngày hôm qua- dấu hiệu của thì QK đơn'),(511,13,'excercise.jpg','practice.ogg','practice.mp3',' ','. Ba ____________his room yesterday afternoon.','clean and tidy','cleaned and tidied','cleaned and tidy','cleans and tidies.','cleaned and tidied',82,'“yesterday”:ngày hôm qua- dấu hiệu của thì QK đơn'),(512,14,'excercise.jpg','practice.ogg','practice.mp3',' ','Mr. John____________ to Los Angeles in 1992.','had gone','has gone','went','was going','went',82,'“in 1992” là 1 mốc thời gian trong quá khứ nên dùng thì Qk đơn'),(513,1,'excercise.jpg','practice.ogg','practice.mp3','2.Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','Henry _______ into the restaurant when the writer was having dinner.','was going','went','has gone','did go','went',83,'Dùng “when” diễn tả 1 hành động đang xảy ra thì có 1 hành động khác xen vào;'),(514,2,'excercise.jpg','practice.ogg','practice.mp3','2.Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','He will take the dog out for a walk as soon as he ______ dinner','finish','finishes','will finish','finishing','finishes',83,'Câu này loại được đáp án A và D vì sai ngữ pháp; hơn nữa sau “as soon as” là mệnh đề chia ở thì HT đơn hoặc QK đơn ( dựa vào vế trước); ở đây vế trước là TL đơn nên vế sau chia ở thì HT đơn.'),(515,3,'excercise.jpg','practice.ogg','practice.mp3',' ','Why____________ you come yesterday?','can not','can’t','don’t','couldn’t','couldn’t',83,'Yesterday là dấu hiệu của thì QKĐ'),(516,4,'excercise.jpg','practice.ogg','practice.mp3',' ','I…….in the room now.','am being','was being','have been being','am','am',83,'“now” là dấu hiệu của thì HTĐ'),(517,5,'excercise.jpg','practice.ogg','practice.mp3',' ','I will come and see you before I……..for America.','leave','will leave','have left','shall leave','leave',83,'Sau “before” hay “after” là 1 mệnh đề ở thì HTĐ.'),(518,6,'excercise.jpg','practice.ogg','practice.mp3',' ','He will take the dog out for a walk as soon as he …….dinner.','finish','finishes','will finish','shall have finished','finishes',83,'Câu này loại được đáp án A và D vì sai ngữ pháp; hơn nữa sau “as soon as” là mệnh đề chia ở thì HTĐ hoặc QKĐ (dựa vào vế trước); ở đây vế trước là TLĐ nên vế sau chia ở thì HTĐ.'),(519,7,'excercise.jpg','practice.ogg','practice.mp3',' ','Oil ……if you pour it on water','floated','floats','will be floated','float','floats',83,'Dầu sẽ nổi lên nếu đổ nước vào là 1 chân lý, 1 sự thật hiển nhiên nên dùng HTĐ.'),(520,8,'excercise.jpg','practice.ogg','practice.mp3',' ','The dancing club……..north of the city','lays','lies','located','lain','lies',83,'lie: nằm ở đâu ( dạng quá khứ là lay; PPII là lain) Lie: nói dối ( quá khứ và PPII là lied) lay: đẻ trứng, dọn bàn ( để ăn cơm),…( quá khứ và PPII là lain) locate: có vị trí ở đâu Câu này nói về 1 sự thật nên dùng HTĐ.'),(521,9,'excercise.jpg','practice.ogg','practice.mp3',' ','I usually …….away at weekends','have gone','goes','. am going','go','go',83,'Dùng HTĐ diễn tả thói quen, hành động lặp lại nhiều lần.'),(522,10,'excercise.jpg','practice.ogg','practice.mp3',' ','The earth……… round the sun.','go','has gone','went','goes','goes',83,'”Trái đất quay xung quanh mặt trời” là chân lý, là sự thật hiển nhiên nên dùng HTĐ'),(523,11,'excercise.jpg','practice.ogg','practice.mp3',' ','I come from Canada. Where ……..you ……..from?','do/come','did/ come','are coming','have/come','do/come',83,'Câu hỏi bạn đến từ đâu.'),(524,12,'excercise.jpg','practice.ogg','practice.mp3',' ','I……….at 8 o’clock every morning.','was getting up','got up','is getting up','get up','get up',83,'Dùng HTĐ diễn tả thói quen'),(525,13,'excercise.jpg','practice.ogg','practice.mp3',' ','.………..you go to the dentist?','how often are','how often do','how often does','how are','how often do',83,'Câu hỏi chỉ mức độ, tần suất làm việc gì “how often”: bạn có thường xuyên đến nha sĩ không?”.'),(526,14,'excercise.jpg','practice.ogg','practice.mp3',' ','Ann……..tea very often','doesn’t drink','don’t drink','didn’t drink','hasn’t drunken','doesn’t drink',83,'Dùng HTĐ diễn tả thói quen.'),(527,15,'excercise.jpg','practice.ogg','practice.mp3',' ','The sun……….in the East.','is rising','rose','has risen','rises','rises',83,'Mặt trời mọc phía Đông là chân lý, sự thật hiển nhiên nên dùng HTĐ.'),(528,1,'excercise.jpg','practice.ogg','practice.mp3',' ','While I was going to school yesterday, I____________ him.','meet','met','will meet','am meeting','met',84,'Câu với “while” diễn tả 1 hành động đang xảy ra thì có 1 hành động khác xen vào ( giống “when”); và mệnh đề không chứa “while/when” là ở dạng Qk đơn'),(529,2,'excercise.jpg','practice.ogg','practice.mp3',' ','The train ______ half an hour ago','has been leaving','left','has left','had left','left',84,'“ago” là dấu hiệu của thì Qk đơn nên ta chia động từ ở thì Qk đơn'),(530,3,'excercise.jpg','practice.ogg','practice.mp3',' ','I’ll come and see you before I _______ for the States.','leave','will leave','have left','shall leave','leave',84,'Dùng HT đơn diễn tả 1 lịch trình.'),(531,4,'excercise.jpg','practice.ogg','practice.mp3',' ','Her father ______ when she was a small girl.','dies','died','has died','had died','died',84,'Hành động ‘die’ đã xảy ra nên ta chia ơt thì Qk đơn'),(532,5,'excercise.jpg','practice.ogg','practice.mp3',' ','While her husband was in the army, Mary ______ to him twice a week.','was reading','wrote','was written','had written','wrote',84,'Việc cô ấy viết thư cho chồng không thể chia ở thì tiếp diễn được vì cô ấy phải viết xong và gửi thì ta mới biết là cô ấy viết thư cho chồng 2 lần 1 tuần, nên dùng QK đơn.'),(533,6,'excercise.jpg','practice.ogg','practice.mp3',' ','The man got out of the car, ________ round to the back and opened the book.','walking','walked','walks','walk','walked',84,'Ở đây “walk” phải có vai trò tương đương với “got” và “open” nên chia ở thì QK đơn.'),(534,7,'excercise.jpg','practice.ogg','practice.mp3',' ','. It is a nice day. I ……….we go out for a walk.','suggested','suggest','is suggesting','are suggesting','suggest',84,'Dùng HTĐ diễn tả suy nghĩ tại thời điểm nói'),(535,8,'excercise.jpg','practice.ogg','practice.mp3',' ','Bad driving often…….many accidents.','caused','had caused','causes','has cause','causes',84,'Dùng HTĐ diễn tả sự thật.'),(536,9,'excercise.jpg','practice.ogg','practice.mp3',' ','The Olympic Games…….every four years.','take place','takes place','took place','is taking place','takes place',84,'Dùng HTĐ diễn tả sự thật hiển nhiên.'),(537,10,'excercise.jpg','practice.ogg','practice.mp3',' ','What time…..the banks close in Britain?','do','did','does','can','do',84,'Dùng HTĐ diễn tả lịch trình hoặc thời gian biểu; chú ý “banks” là số nhiều nên dùng “do”'),(538,11,'excercise.jpg','practice.ogg','practice.mp3',' ','I don’t understand this sentence. What…………………….?','does mean this word','have this word mean','means this word','does this word mean','does this word mean',84,'”Từ này có nghĩa gì”; nghĩa của 1 từ được coi là 1 điều đúng đắn nên dùng HTĐ.');
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarguide`
--

LOCK TABLES `grammarguide` WRITE;
/*!40000 ALTER TABLE `grammarguide` DISABLE KEYS */;
INSERT INTO `grammarguide` VALUES (234,'hiện tại đơn','htd.jpg','#1. KHÁI NIỆM THÌ HIỆN TẠI ĐƠN\r\nThì hiện tại đơn (Simple Present tense) là thì dùng để diễn đạt một hành động mang tính thường xuyên (regular action), theo thói quen (habitual action) hoặc hành động lặp đi lặp lại có tính quy luật, hoặc diễn tả chân lý và sự thật hiển nhiên.\r\n\r\nVí dụ:\r\n\r\n  ➢ I walk to school every day. ( Tôi đi học hằng ngày)\r\n\r\n  ➢ He often plays soccer. (Anh ấy thường xuyên chơi bóng đá)\r\n\r\n\r\n#2. CÔNG THỨC THÌ HIỆN TẠI ĐƠN\r\nKhẳng định \r\nS + am/is/are + ……\r\nI + am\r\n\r\nHe, She, It  + is\r\n\r\nYou, We, They  + are\r\n\r\nE.g.1:  I am a student. (Tôi là học sinh.)\r\n\r\nE.g.2: They are teachers. (Họ đều là giáo viên.)\r\n\r\nE.g.3: She is my mother. (Bà ấy là mẹ tôi.)\r\n\r\n\r\nS + V(s/es) + ……\r\nI, You, We, They  +  V (nguyên thể)\r\n\r\nHe, She, It  + V (s/es)\r\n\r\nE.g.1:  He always swim in the evening. (Anh ấy luôn đi bơi vào buổi tối.)\r\n\r\nE.g.2: Mei usually goes to bed at 11 p.m.  (Mei thường đi ngủ vào lúc 11 giờ tối).\r\n\r\nE.g.3: Every Sunday we go to see my grandparents. (Chủ nhật hằng tuần chúng tôi thường đi thăm ông bà).\r\n\r\nLưu ý:\r\nKhi chia động từ ở thì này, đối với ngôi thứ nhất (I), thứ hai (you) và thứ 3 số nhiều (they) thì động từ không phải chia, sử dụng động từ nguyên thể không có “to” như ở ví dụ nêu trên. Đối với ngôi thứ 3 số ít (he, she, it), phải chia động từ bằng cách thêm đuôi có \"s/es\" tùy từng trường hợp. Ví dụ: He walks. / She watches TV ...\r\n\r\nCách thêm s/es sau động từ:\r\n\r\n– Thêm s vào đằng sau hầu hết các động từ: want - wants; work - works;…\r\n\r\n– Thêm es vào các động từ kết thúc bằng ch, sh, s, ss, x, z, o: miss - misses; wash - washes; fix - fixes; teach - teaches; go - goes ...\r\n\r\n– Bỏ y và thêm ies vào sau các động từ kết thúc bởi một phụ âm + y:\r\n\r\nstudy - studies; fly - flies; try - tries ...\r\n\r\n \r\n\r\nMỞ RỘNG: Cách phát âm phụ âm cuối \"-s\" (áp dụng cho tất cả các từ, thuộc các từ loại khác nhau)\r\n\r\n* Chú ý: cách phát âm phụ âm cuối này phải dựa vào phiên âm quốc tế (international transcription) chứ không dựa vào cách viết (spelling).\r\n\r\n– /s/: Khi từ có âm cuối là /k/, /p/, /t/, /f/, /θ/ \r\n\r\nVí dụ: likes /laɪks/; cakes /keɪks/; cats /kæts/; types /taɪps/; shops /ʃɒps/; laughs /lɑːfs/; cuffs /kʌfs/; coughs /kɒfs/; paths /pɑːθs/; months /mʌnθs/\r\n\r\n– /iz/: Khi từ có âm cuối là /s/, /ʃ/, /z/, /tʃ/, /dʒ/, /ʒ/\r\n\r\nVí dụ: misses /mɪsɪz/; places /pleɪsɪz/; buzzes /bʌzɪz/; rises /raɪzɪz/; sizes /saɪzɪz/; matches /mætʃɪz/; watches /wɒtʃɪz/; washes /wɒʃɪz/; dishes /dɪʃɪz/; manage /ˈmænɪdʒɪz/; changes /tʃeɪndʒɪz/; garages /ˈɡærɑːʒɪz/; rouge /ruːʒɪz/\r\n\r\n– /z/: Khi từ có âm cuối là các phụ âm còn lại hoặc nguyên âm: /m/, /n/, /ŋ/, /l/, /g/, /b/, /d/, /r/, /v/, /ð/, /eɪ/, /aɪ/ …\r\n\r\nVí dụ: cabs /kæbz/; beds /bedz/; needs /niːdz/; bags /bæɡz/; loves /lʌvs/; gives /ɡɪvs/; bathes /beɪðz/; clothes /kləʊðz/; apples /ˈæpəlz/; swims /swɪmz/; comes /kʌmz/; eyes /aɪz/; plays /pleɪz/\r\n'),(235,'quá khứ đơn','CÃ¡ch-sá»­-dá»¥ng-thÃ¬-quÃ¡-khá»©-Ä‘Æ¡n-768x433.jpg','1. Định nghĩa thì Quá Khứ Đơn\r\nThì quá khứ đơn (Past Simple) dùng diễn tả hành động đã xảy ra trong quá khứ, đã chấm dứt  ở hiện tại và biết rõ thời gian hành động đó diễn ra.\r\n\r\n2. Cấu trúc thì Quá Khứ Đơn trong tiếng Anh\r\nS    +   V(regular/ irregular) + O\r\n\r\nTrong đó:\r\n\r\n– Regular Verbs là những động từ có quy tắc như: to work (làm việc) – worked. to play (chơi) – played\r\n\r\n– Irregular Verbs là những động từ bất quy tắc như: to do – did – done, to speak – spoke – spoken, to teach – taught – taught\r\n\r\nVí dụ:\r\n\r\nWe studied a hard lesson last week. (Chúng tôi đã học một bài rất khó tuần trước.)\r\nJane travelled to England last summer. (Jane đã đi du lịch đến Anh mùa hè năm ngoái.)\r\n\r\nMrs. Susie taught me English 2 days ago. (Cô Susie đã dạy tôi tiếng Anh 2 hôm trước.)\r\nI wore a blue dress yesterday. (Tôi mặc chiếc váy màu xanh hôm qua.)\r\n\r\n2. Câu phủ định\r\nĐối với động từ “to be” và động từ khuyết thiết ta thêm “not” vào sau\r\nS   +    did not    +    V + O\r\n\r\nVí dụ:\r\n\r\nShe wasn’t at home yesterday. (Hôm qua cô ấy đã không ở nhà.)\r\nYou weren’t honest with me. (Cậu đã không thành thật với tớ.)\r\nWe weren’t aware of the news. (Chúng tôi đã không biết gì về tin tức đó.)\r\nĐối với động từ thường, ta đặt trợ động từ “didn’t” trước động từ chính.\r\n\r\nVí dụ:\r\n\r\nYuzu didn’t go out with me last Sunday. (Yuzu đã không đi ra ngoài với tớ chủ nhật tuần trước.)\r\nKai didn’t do as he promised. (Kai không làm như anh ấy đã hứa.)\r\nI didn’t think much about it. (Tôi không nghĩ nhiều về nó lắm.)\r\n3. Câu nghi vấn\r\nĐối với động từ “to be” và động từ khuyết thiếu ta sẽ di chuyển nó lên đầu câu\r\n\r\n(Từ để hỏi)/Did       +    S    +     Verb  ?\r\nVí dụ:\r\n\r\nWere you in John’s house yesterday? (Bạn đã ở nhà John hôm qua phải không?)\r\nCould she buy the limited iphone version yesterday? (Cô ấy có mua được chiếc iphone bản giới hạn hôm qua không?)\r\nDid you do the housework?  (Bạn đã làm bài tập rồi chứ?)\r\nLưu ý: Khi đổi câu sang phủ định và nghi vấn: động từ chính cần đưa về dạng nguyên thể.\r\n\r\n3. Cách sử dụng thì Quá Khứ Đơn \r\n1. Diễn đạt một hành động đã kết thúc trong quá khứ có thời điểm xác định cụ thể\r\nVí dụ:\r\n\r\nI started learning Japanese 5 years ago. (Tôi đã bắt đầu học tiếng Nhật 5 năm trước.)\r\nHe graduated from Hanoi university in 2016. (Anh ấy đã tốt nghiệp đại học Hà Nội năm 2016.)\r\nWe got married in 2019. (Chúng tôi đã cưới nhau năm 2019.)\r\n2. Diễn đạt một hành động đã xảy ra trong 1 thời gian dài trong quá khứ và đã kết thúc: Cụm từ đi cùng: for + (khoảng thời gian), from….to….\r\nVí dụ:\r\n\r\nTonny worked for that company for 2 years. (now he works for another company) (Tonny đã làm việc cho công ty đó 2 năm, giờ anh ấy làm việc cho công ty khác.)\r\nI learned at high school from 2014 to 2017. (Tôi đã học cấp ba từ năm 2014 đến 2017.)\r\nSusie was a teacher for 10 years. (now she is a nurse) (Susie đã làm giáo viên 10 năm, giờ cô ấy là y tá.)\r\n3. Diễn đạt một loạt hành động liên tiếp nhau xảy ra trong quá khứ\r\nVí dụ:\r\n\r\nI came to Jane’s home, we ate dinner together. (Tôi đã đến nhà Jane rồi hai đứa ăn tối với nhau.)\r\nSusie opened the door, turned on the light and took off her clothes. (Susie đã mở cửa, bật đèn lên và cởi đồ.)\r\nThey greeted, then talked and danced. (Họ đã chào hỏi nhau, trò chuyện và nhảy múa.)\r\n4. Diễn đạt một hành động thường xuyên lặp lại trong quá khứ bây giờ không diễn ra nữa\r\nVí dụ:\r\n\r\nWhen I was a little girl, I always read comic. (Khi tôi còn nhỏ, tôi hay đọc truyện tranh lắm.)\r\nHe worked out quiet often before he fell sick. (Anh ấy đã tập thể dục thường xuyên trước khi anh ấy lâm bệnh.)\r\nShe usually came to the library, but now she reads e-books. (Cô ấy đã thường xuyên đến thư viện, nhưng giờ cô ấy đọc sách điện tử.)\r\n5. Diễn đạt hành động chen ngang vào hành động khác diễn ra trong quá khứ \r\nVí dụ:\r\n\r\nThe children were playing football when their mother came back home. (Bọn trẻ đang chơi bóng đá thì mẹ chúng về nhà.)\r\nSusie was crossing the road when she saw Jullie. (Susie đang băng qua đường thì cô ấy nhìn thấy Jullie.)\r\nThe policeman caught the thief while he was escaping. (Cảnh sát đã bắt được tên trộm khi hắn đang chạy trốn.)\r\nTrong 12 thì tiếng Anh, cách sử dụng của thì quá khứ đơn và thì hiện tại hoàn thành sẽ khiến bạn có thể bị nhầm lẫn giữa 2 thì này. Vậy nên cần note thật kỹ để khi sử dụng thì tiếng Anh thật hợp lý tương ứng với từng ngữ cảnh nhé!\r\n'),(236,'quá khứ tiếp diễn','CÃ¡ch-sá»­-dá»¥ng-thÃ¬-quÃ¡-khá»©-Ä‘Æ¡n-768x433.jpg','1. Quá khứ tiếp diễn là gì?\r\nThì quá khứ tiếp diễn (Past continuous tense) dùng để diễn tả một hành động, sự việc đang diễn ra xung quanh một thời điểm trong quá khứ.\r\n\r\n2. Cấu trúc thì quá khứ tiếp diễn\r\n2.1 Thể khẳng định\r\nCấu trúc: S + was/were + V-ing\r\n\r\nTrong đó: S (subject): Chủ ngữ\r\n\r\nV-ing: động từ thêm “-ing”\r\n\r\nLưu ý: S = I/ He/ She/ It + was\r\n\r\n           S = We/ You/ They + were\r\n\r\nVí dụ: – At three o’clock, I was hanging out with my friends. (Vào lúc 3 giờ, tôi đang đi chơi với bạn của tôi.)\r\n\r\nIn 1994 they were working in a small town in Germany. (Vào năm 1994 họ đang làm việc tại một thị trấn nhỏ ở Đức.\r\n\r\n2.2 Thể phủ định\r\nCấu trúc: S + wasn’t/ weren’t + V-ing\r\n\r\nLưu ý: was not = wasn’t\r\n\r\n           were not = weren’t\r\n\r\nVí dụ: – I wasn’t paying attention while I was writing the letter, so I made several mistakes. (Tôi đã không chú ý khi viết lá thư nên đã mắc một vài lỗi.)\r\n\r\n They weren’t working, and we weren’t working either. (Họ đã không làm việc và chúng tôi cũng không làm việc.) \r\n2.3 Thể nghi vấn\r\nCâu hỏi Yes/No question \r\nCấu trúc: Was/ Were + S + V-ing ?\r\n\r\nTrả lời: Yes, S + was/ were.\r\n\r\n           / No, S + wasn’t/ weren’t.\r\n\r\nVí dụ: – Were you thinking about him last night? (Đêm qua cậu có nghĩ về anh ấy không?)\r\n\r\nYes, I was./ No, I wasn’t.\r\n\r\nWere they listening while he was talking? (Họ có nghe khi anh ấy nói không?)\r\nYes, they were./ No, they weren’t.\r\n\r\nCâu hỏi WH- question\r\nCấu trúc: WH-word + was/ were + S + V-ing?\r\n\r\nTrả lời: S + was/ were + V-ing +…\r\n\r\nVí dụ: What was she talking about? (Cô ấy đã nói về cái gì?)\r\n\r\nWhat were you doing in the meeting yesterday? (Bạn đã làm gì trong buổi họp hôm qua?)\r\n\r\n\r\n3. Cách sử dụng thì quá khứ tiếp diễn trong tiếng Anh\r\nThì quá khứ tiếp diễn là một trong những thì khiến người học tiếng Anh “đau đầu” nhất bởi họ luôn bị nhầm lẫn về khi nào thì có thể sử dụng loại thì này. Nếu bạn cũng đang có cùng thắc mắc tương tự thì hãy cùng xem bảng dưới đây để hiểu được chi tiết khi nào thì dùng quá khứ tiếp diễn nhé.\r\n\r\nDiễn tả một hành động đang xảy ra tại một thời điểm trong quá khứ\r\nI was watching TV at 8 o’clock last night.. (Tôi đang xem TV vào lúc 8 giờ tối qua.)\r\nThis time last year they were living in England.(Vào lúc này năm ngoái họ đang sống ở Anh.)\r\n\r\nTrạng từ quá khứ tiếp diễn thường gặp là:\r\n\r\nAt + giờ + thời gian trong quá khứ. (at 5 o’clock yesterday,…)\r\nAt this time + thời gian trong quá khứ. (at this time last year,…)\r\nIn + năm (in 2001, in 1992)\r\nIn the past\r\nVí dụ của thì quá khứ tiếp diễn:\r\n\r\nIn 1998, he was staying with his parents. ( Vào năm 1998, anh ấy đang ở với bố mẹ.)\r\nAt this time last week, we were playing soccer on the beach. (Vào lúc này tuần trước, chúng tôi đang chơi bóng đá ở bãi biển.)\r\n'),(237,'Tương lai đơn','ThÃ¬_tÆ°Æ¡ng_lai_Ä‘Æ¡n.jpg','Thì tương lai đơn trong tiếng anh (Simple future tense) được dùng khi không có kế hoạch hay quyết định làm gì nào trước khi chúng ta nói. Chúng ta ra quyết định tự phát tại thời điểm nói. Thường sử dụng thì tương lai đơn với động từ \"to think \"trước nó.\r\nI. KIẾN THỨC THÌ TƯƠNG LAI ĐƠN CẦN NHỚ\r\n1. Câu khẳng định\r\n\r\n 	\r\nĐộng từ tobe\r\n\r\nĐộng từ thường\r\n\r\nCấu trúc\r\n\r\nS + will +  be + N/Adj\r\n\r\nS + will +  V(nguyên thể)\r\n\r\nLưu ý\r\n\r\nwill = ‘ll\r\n\r\nVí dụ\r\n\r\n- She‘ll be fine. (Cô ấy sẽ ổn thôi.)\r\n\r\n- You will be mine soon (Anh sẽ sớm thuộc về em thôi.)\r\n\r\n- I will always love you. (Em sẽ luôn luôn yêu anh.)\r\n\r\n- No worries, I will take care of the children for you. (Đừng lo, em sẽ chăm sóc bọn trẻ giúp chị.)\r\n\r\n 	 	 \r\n2. Câu phủ định\r\n\r\n 	\r\nĐộng từ tobe\r\n\r\nĐộng từ thường\r\n\r\nCấu trúc\r\n\r\nS + will not + be + N/Adj\r\n\r\nS + will not + V(nguyên thể)\r\n\r\nLưu ý\r\n\r\nwill not = won’t\r\n\r\nVí dụ\r\n\r\n– She won’t be happy if she cannot pass the entrance exam tomorrow. (Cô ấy sẽ không vui nếu cô ấy không vượt qua kỳ thi thi đầu vào ngày mai)\r\n\r\n– We won’t be friends anymore. (Chúng ta sẽ không tiếp tục làm bạn nữa.)\r\n\r\n– I won’t bring champagne to the party tonight. (Tớ sẽ không mang rượu Sâm-panh đến bữa tiệc tối nay đâu.)\r\n\r\n– I won’t tell her the truth. (Tôi sẽ không nói với cô ấy sự thật.)\r\n\r\n3. Câu nghi vấn\r\n\r\n 	\r\nĐộng từ tobe\r\n\r\nĐộng từ thường\r\n\r\nCấu trúc\r\n\r\nQ: Will + S + be + ?\r\n\r\nA: Yes, S + will\r\n\r\n     No, S + won’t\r\n\r\nQ: Will + S + V(nguyên thể)?\r\n\r\nA: Yes, S + will.\r\n\r\n      No, S + won’t.\r\n\r\nVí dụ\r\n\r\n- Q: Will you be home tomorrow morning? (Sáng mai anh có ở nhà không?)\r\n\r\nYes, I     A: No, I won’t (Không, anh sẽ không có ở nhà)\r\n\r\n- Q: Will he be the last person to leave the classroom? (Cậu ấy sẽ là người cuối cùng rời khỏi phòng học đúng không?)\r\n\r\n  A: Yes, he will (Có, cậu ấy sẽ ở lại)\r\n\r\n- Q: Will you come back? (Anh có quay lại không?)\r\n\r\n  A: Yes, I will (Có, anh sẽ quay lại)\r\n\r\n- Q: Will he go to the post office to take the parcel for you? (Cậu ta sẽ đến bưu điện để nhận bưu kiện cho em chứ?)\r\n\r\n  A: No, he won’t (Không, cậu ấy sẽ không)\r\n\r\n> Tổng hợp: Các thì trong tiếng anh\r\n\r\nII. DẤU HIỆU NHẬN BIẾT\r\nTrạng từ chỉ thời gian\r\n\r\n– in + thời gian: trong … nữa (in 2 minutes: trong 2 phút nữa)\r\n\r\n– tomorrow: ngày mai\r\n\r\n– Next day: ngày hôm tới\r\n\r\n– Next week/ next month/ next year: Tuần tới/ tháng tới/ năm tới\r\n\r\nĐộng từ chỉ khả năng sẽ xảy ra\r\n\r\n– think/ believe/ suppose/ …: nghĩ/ tin/ cho là\r\n\r\n– perhaps: có lẽ\r\n\r\n– probably: có lẽ\r\n\r\n– Promise: hứa\r\n\r\nIII. CHỨC NĂNG THÌ TƯƠNG LAI ĐƠN\r\n \r\n\r\nVí dụ\r\n\r\nPhân tích\r\n\r\n \r\n\r\nVí dụ 1:\r\n\r\n– I miss my mom. I (drop)………by her house on the way to work tomorrow. (Tôi nhớ mẹ quá. Tôi sẽ rẽ qua nhà mẹ trên đường đi làm)\r\n\r\nA. drop  B. dropped  C. will drop\r\n\r\nCó từ tín hiệu chỉ thời gian trong tương lai\r\n\r\nLà quyết định được phát ra tại thời điểm nói, không phải 1 dự định từ trước: Nhớ mẹ => nên quyết định sẽ đến thăm mẹ vào ngày mai\r\n\r\nà  Động từ chia ở thì Tương lai đơn\r\n\r\nà Chọn đáp án C\r\n\r\nChức năng 1\r\n\r\nThì tương lai đơn diễn đạt một quyết định tại thời điểm nói\r\n\r\n \r\n\r\nVí dụ 2:\r\n\r\n–………you (open) ………the door for me please? (Bạn có thể vui lòng mở cửa dùm mình được không?)\r\n\r\nA. Do………open\r\n\r\nB. Did………open\r\n\r\nC. Will ………open\r\n\r\nĐề nghị ai đó l àm gì\r\n\r\nà Sử dụng thì Tương lai đơn\r\n\r\nà Chọn đáp án C\r\n\r\nChức năng 2\r\n\r\nThì tương lai đơn dùng để đưa ra lời yêu cầu, đề nghị, lời mời\r\n\r\n \r\n\r\nVí dụ 3:\r\n\r\n– I promise I (take) ……… you to the water park when I’m not occupied. (Mẹ hứa là mẹ sẽ đưa con đến công viên nước chơi nếu mẹ rảnh)\r\n\r\nA. will take\r\n\r\nB. take\r\n\r\nC. not use\r\n\r\nLời hứa là sẽ làm cho ai đó điều gì à  Động từ chia ở thì Tương lai đơn\r\n\r\nà Chọn đáp án A\r\n\r\nChức năng 3\r\n\r\nThì tương lai đơn được dùng cho lời hứa hẹn\r\n\r\n \r\n\r\nCác bạn có thể học thêm:\r\n\r\nCâu trực tiếp - gián tiếp ( Reported Speech )\r\nCâu Bị Động (Passive Voice) – Tất tần tật kiến thức thể bị động\r\n'),(238,'Tương lai tiếp diễn','vi-du-thi-tuong-lai-tiep-dien.jpg','Thì tương lai tiếp diễn (Future Continuous) là một trong những thì quan trọng trong cấu trúc ngữ pháp tiếng anh. Bởi chúng được sử dụng khá nhiều trong công việc và cuộc sống trong môi trường ngoại ngữ. Hiểu được điều đó, mình đã tổng hợp các kiến thức cần thiết để giúp các bạn có thể hiểu rõ và nắm vững các kiến thức của cấu trúc này. Hy vọng bài viết này sẽ giúp ích được cho các bạn trong môi trường làm việc và học tập.\r\n\r\n1. Định nghĩa thì tương lai tiếp diễn\r\nThì tương lai tiếp diễn được dùng để nói về 1 hành động đang diễn ra tại một thời điểm xác định trong tương lai.\r\n\r\n2. Cách dùng thì tương lai tiếp diễn\r\nDùng để diễn tả một hành động hay sự việc đang diễn ra tại một thời điểm xác định trong tương lai.	 \r\nAt 12 o’clock tomorrow, my friends and I will be having lunch at school. (Vào lúc 12h ngày mai, các bạn tôi và tôi sẽ đang ăn trưa tại trường.)\r\n\r\nWe will be climbing the mountain at this time next Saturday. (Chúng tôi sẽ đang leo núi vào thời điểm này thứ 7 tuần tới.)\r\n\r\nDùng để diễn tả một hành động, một sự việc đang xảy ra thì một hành động, sự việc khác xen vào trong tương lai.	When you come tomorrow, they will be playing tennis. ( Khi bạn đến vào ngày mai, thì họ sẽ đi chơi tennis rồi )\r\nShe will be waiting for me when I arrive tomorrow. (Cô ấy sẽ đang đợi tôi khi tôi đến vào ngày mai.)\r\n\r\nHành động sẽ diễn ra và kéo dài liên tục suốt một khoảng thời gian ở tương lai	My parents are going to London, so I’ll be staying with my grandma for the next 2 weeks.(Cha mẹ tôi sẽ đi London, vì vậy tôi sẽ ở với bà trong 2 tuần tới)\r\nHành động sẽ xảy ta như một phần trong kế hoạch hoặc một phần trong thời gian biểu	The party will be starting at ten o’clock. (Bữa tiệc sẽ bắt đầu lúc 10 giờ)\r\n3. Công thức thì tương lai tiếp diễn\r\nCâu khẳng định\r\n\r\nCâu phủ định\r\n\r\nCâu nghi vấn\r\n\r\nS + will + be + V-ing\r\n\r\nVí dụ:\r\n\r\n– I will be staying at the hotel in Nha Trang at 1 p.m tomorrow. (Tôi sẽ đang ở khách sạn ở Nha Trang lúc 1h ngày mai.)\r\n\r\n– She will be working at the factory when you come tomorrow.(Cô ấy sẽ đang làm việc tại nhà máy lúc bạn đến ngày mai.)\r\n\r\nS + will + not + be + V-ing\r\n\r\nCHÚ Ý:\r\n\r\n– will not = won’t\r\n\r\nVí dụ:\r\n\r\n–  We won’t be studying at 8 a.m tomorrow. (Chúng tôi sẽ đang không học lúc 8h sáng ngày mai.)\r\n\r\n– The children won’t be playing with their friends when you come this weekend. (Bọn trẻ sẽ đang không chơi với bạn của chúng khi bạn đến vào cuối tuần này.)\r\n\r\nWill + S + be + V-ing ?\r\n\r\nTrả lời:           Yes, S + will\r\n\r\nNo, S + won’t\r\n\r\nVí dụ:\r\n\r\n– Will you be waiting for the train at 9 a.m next Monday? (Bạn sẽ đang đợi tàu vào lúc 9h sáng thứ Hai tuần tới phải không?)\r\n\r\nYes, I will./ No, I won’t.\r\n\r\n– Will she be doing the housework at 10 p.m tomorrow? (Cô ấy sẽ đang làm công việc nhà lúc 10h tối ngày mai phải không?)\r\n\r\nYes, she will./ No, she won’t.\r\n\r\n4. Dấu hiệu thì tương lai tiếp diễn\r\nTrong câu có các trạng từ chỉ thời gian trong tương lai kèm theo thời điểm xác định:\r\n\r\n– at this time/ at this moment + thời gian trong tương lai: Vào thời điểm này ….\r\n\r\n– At + giờ cụ thể + thời gian trong tương lai: vào lúc …..\r\n\r\nVí dụ:\r\n\r\n– At this time tomorrow I will be going shopping in Singapore. (Vào thời điểm này ngày mai, tôi sẽ đang đi mua sắm ở Singapore.)\r\n\r\n– At 10 a.m tomorrow my mother will be cooking lunch. (Vào 10h sáng ngày mai mẹ tôi sẽ đang nấu bữa trưa.)');
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
INSERT INTO `id` VALUES (2),(185),(181),(192),(193),(195),(192),(192),(205),(212),(230),(230),(230),(230),(230),(230);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (149,3,16,'Sun Dec 19 22:33:51 ICT 2021','admin1',68),(150,0,19,'Sat Jan 15 22:39:19 ICT 2022','phat',68),(151,1,19,'Mon Jan 17 10:29:15 ICT 2022','phat2',74),(152,2,18,'Mon Jan 17 11:10:10 ICT 2022','phat2',75),(153,0,20,'Mon Jan 17 11:13:32 ICT 2022','phat2',74),(154,0,20,'Mon Jan 17 14:51:22 ICT 2022','phat2',75),(155,0,20,'Mon Jan 17 15:10:46 ICT 2022','phat2',76),(156,3,17,'Mon Jan 17 15:12:06 ICT 2022','phat2',76),(157,0,20,'Mon Jan 17 15:19:19 ICT 2022','phat2',77),(158,0,15,'Mon Jan 17 18:12:42 ICT 2022','phat2',83),(159,0,11,'Mon Jan 17 19:30:21 ICT 2022','phat2',84),(160,0,11,'Mon Jan 17 19:32:10 ICT 2022','phat2',84);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
INSERT INTO `vocabulary` VALUES (38,'contracts','anh13.png',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularydetails`
--

LOCK TABLES `vocabularydetails` WRITE;
/*!40000 ALTER TABLE `vocabularydetails` DISABLE KEYS */;
INSERT INTO `vocabularydetails` VALUES (201,1,'hinh1.png','audio1.ogg','audio1.mp3','It\'s only 36 centimeters tall, but to fans throughout the world, it represents the highest achievement in football. Every four years, teams from all over the globe compete to take home the FIFA World Cup Trophy, yet nobody ever does.','. This reading is mainly about……','the World Cup tournament',34),(202,2,'hinh2.png','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',34),(203,3,' ','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',34),(204,4,'hinh1.png',' ',' ','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',34),(205,1,'hinh1.png','audio1.ogg','audio1.mp3','It\'s only 36 centimeters tall, but to fans throughout the world, it represents the highest achievement in football. Every four years, teams from all over the globe compete to take home the FIFA World Cup Trophy, yet nobody ever does.','. This reading is mainly about……','the World Cup tournament',35),(206,2,'hinh2.png','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',35),(207,3,' ','audio2.ogg','audio2.mp3','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',35),(208,4,'hinh1.png',' ',' ','Carefully guiding a needle that\'s longer than his tiny fingers, a young boy in Pakistan stitches together the leather pieces of\na soccer ball','What is an example of dangerous work done by a child?','stitching a soccer ball',35),(214,1,'abide by','/ə\'baid/','abide_by.jpg','abide_by.mp3','abide_by.ogg','(v): tôn trọng, tuân theo, giữ (lời)',38),(215,2,'agreement ','/ə\'gri:mənt/','agreement.jpg','agreement.mp3','agreement.ogg','(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau',38),(216,3,'assurance ','/ə\'ʃuərəns/','assurance.jpg','assurance.mp3','assurance.ogg','(n): sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin',38),(217,4,'cancellation ','/,kænse\'leiʃn/','cancellation.jpg','cancellation.mp3','cancellation.ogg','(n): sự bãi bỏ, hủy bỏ',38),(218,5,'determine ','/di\'tə:min/','determine.jpg','determine.mp3','determine.ogg','(v): quyết định, xác định, định rõ; quyết tâm, kiên quyết',38),(219,6,'engage ','/in\'geidʤ/','engage.jpg','engage.mp3','engage.ogg','(v)Tham gia, cam kết, (n)sự hứa hẹn, hứa hôn',38),(220,7,'establish ','/is\'tæbliʃ/','engage.jpg','engage.mp3','engage.ogg','(v): thiết lập, thành lập; xác minh, chứng minh, củng cố',38);
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

-- Dump completed on 2022-01-17 20:34:35
