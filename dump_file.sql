-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: h32_blog
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `imageuser`
--

DROP TABLE IF EXISTS `imageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageuser` (
  `imageID` varchar(50) NOT NULL,
  `userID` int NOT NULL,
  `imgURL` text NOT NULL,
  `imgUnBgURL` text NOT NULL,
  PRIMARY KEY (`imageID`),
  KEY `userID` (`userID`),
  CONSTRAINT `imageuser_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageuser`
--

LOCK TABLES `imageuser` WRITE;
/*!40000 ALTER TABLE `imageuser` DISABLE KEYS */;
INSERT INTO `imageuser` VALUES ('Img_1',28,'https://i.imgur.com/eeC5ASD.jpg','https://i.imgur.com/gNxm3B7.webp'),('Img_10',31,'https://i.imgur.com/FF7wLqg.jpg','https://i.imgur.com/AsalDMK.webp'),('Img_11',41,'https://i.imgur.com/N5xnSRn.jpg','https://i.imgur.com/BRc0pdQ.webp'),('Img_12',16,'https://i.imgur.com/TzSSSNV.jpg','https://i.imgur.com/uNQxsR7.webp'),('Img_13',18,'https://i.imgur.com/fM81qar.jpg','https://i.imgur.com/G86drR9.webp'),('Img_14',43,'https://i.imgur.com/hVyNtT9.jpg','https://i.imgur.com/fNrFEyX.webp'),('Img_15',42,'https://i.imgur.com/euyXj84.jpg','https://i.imgur.com/qIjxhtp.webp'),('Img_16',106,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_17',93,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_18',104,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_19',40,'https://i.imgur.com/IR2xwMM.jpg','https://i.imgur.com/bxOqsO9.webp'),('Img_2',92,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_20',4,'https://i.imgur.com/q9fzkuw.jpg','https://i.imgur.com/DWKXZ5E.webp'),('Img_21',1,'https://i.imgur.com/IuAIkGY.jpg','https://i.imgur.com/hM1H6jf.webp'),('Img_22',2,'https://i.imgur.com/QMT70wR.jpg','https://i.imgur.com/7EZYRdB.webp'),('Img_23',7,'https://i.imgur.com/cOXIF5K.jpg','https://i.imgur.com/0UtdEoN.webp'),('Img_24',8,'https://i.imgur.com/v8v65pN.jpg','https://i.imgur.com/FuEm4do.webp'),('Img_25',9,'https://i.imgur.com/Q7jmeYI.jpg','https://i.imgur.com/xUHN74t.webp'),('Img_26',26,'https://i.imgur.com/ky5UC8O.jpg','https://i.imgur.com/mhMs3Np.webp'),('Img_27',87,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_28',20,'https://i.imgur.com/6qbRgCv.jpg','https://i.imgur.com/NmAHxWy.webp'),('Img_29',29,'https://i.imgur.com/VuzajLL.jpg','https://i.imgur.com/UN4lUc0.webp'),('Img_3',90,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_30',5,'https://i.imgur.com/DhZD3Q3.jpg','https://i.imgur.com/kk2gURU.webp'),('Img_31',6,'https://i.imgur.com/mh4HS3M.jpg','https://i.imgur.com/qELu8QS.webp'),('Img_32',3,'https://i.imgur.com/pa0kNVa.jpg','https://i.imgur.com/JFSgB8K.webp'),('Img_33',24,'https://i.imgur.com/LIID4Gy.jpg','https://i.imgur.com/6c7ItGE.webp'),('Img_34',25,'https://i.imgur.com/SLRkeVA.jpg','https://i.imgur.com/zsDtyo3.png'),('Img_35',95,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_36',36,'https://i.imgur.com/NAWLPdy.jpg','https://i.imgur.com/0swTsXw.webp'),('Img_37',21,'https://i.imgur.com/1VxneSh.jpg','https://i.imgur.com/NpW2ZK7.webp'),('Img_38',38,'https://i.imgur.com/uWlii6c.jpg','https://i.imgur.com/ybuKwk0.webp'),('Img_39',39,'https://i.imgur.com/LGha9zr.jpg','https://i.imgur.com/6hqdWCy.webp'),('Img_4',37,'https://i.imgur.com/mBpZt0F.jpg','https://i.imgur.com/Flud34e.webp'),('Img_40',19,'https://i.imgur.com/9Qaquoi.jpg','https://i.imgur.com/l0jIrqe.webp'),('Img_41',11,'https://i.imgur.com/boQkZG2.jpg','https://i.imgur.com/RsXkRLh.webp'),('Img_42',15,'https://i.imgur.com/dt052Dl.jpg','https://i.imgur.com/ypwiRpm.webp'),('Img_43',14,'https://i.imgur.com/mMxMILf.jpg','https://i.imgur.com/kLwNr7t.webp'),('Img_44',13,'https://i.imgur.com/B1M1Jid.jpg','https://i.imgur.com/Wo3JEo7.webp'),('Img_45',45,'https://i.imgur.com/So0GXkx.jpg','https://i.imgur.com/HRnXTFj.webp'),('Img_46',12,'https://i.imgur.com/9ybhFpe.jpg','https://i.imgur.com/llNcedi.webp'),('Img_47',47,'https://i.imgur.com/xW22wsq.jpg','https://i.imgur.com/X8ADJKH.webp'),('Img_48',48,'https://i.imgur.com/owvO5ld.jpg','https://i.imgur.com/JuDPT4R.webp'),('Img_49',49,'https://i.imgur.com/aGfSARr.jpg','https://i.imgur.com/1li4Lll.webp'),('Img_5',23,'https://i.imgur.com/BtckUid.jpg','https://i.imgur.com/4qgMBr8.webp'),('Img_50',50,'https://i.imgur.com/5X2LE2B.jpg','https://i.imgur.com/YhIQjCm.webp'),('Img_51',51,'https://i.imgur.com/JBVrl2t.jpg','https://i.imgur.com/HO5zM3r.webp'),('Img_52',112,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_53',113,'a','https://cdn-icons-png.flaticon.com/512/4404/4404257.png'),('Img_54',54,'https://i.imgur.com/MTZO1iR.jpg','https://i.imgur.com/hbOVAby.webp'),('Img_6',10,'https://i.imgur.com/IoCzwkC.jpg','https://i.imgur.com/WUE9kFI.webp'),('Img_7',22,'https://i.imgur.com/oNf0DaK.jpg','https://i.imgur.com/DjZiz9e.webp'),('Img_8',17,'https://i.imgur.com/68uYStx.jpg','https://i.imgur.com/ta21e6I.webp'),('Img_9',34,'https://i.imgur.com/we7nQhy.jpg','https://i.imgur.com/CV9tX8i.webp');
/*!40000 ALTER TABLE `imageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageusers`
--

DROP TABLE IF EXISTS `imageusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageusers` (
  `imageID` varchar(50) NOT NULL,
  `userID` int NOT NULL,
  `imgURL` text NOT NULL,
  `imgUnBgURL` text NOT NULL,
  PRIMARY KEY (`imageID`),
  KEY `userID` (`userID`),
  CONSTRAINT `imageusers_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageusers`
--

LOCK TABLES `imageusers` WRITE;
/*!40000 ALTER TABLE `imageusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `imageusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labimage`
--

DROP TABLE IF EXISTS `labimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labimage` (
  `labImageID` varchar(50) NOT NULL,
  `userID` int NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'img_lab',
  `year` int DEFAULT '1',
  `imgURL` text NOT NULL,
  PRIMARY KEY (`labImageID`),
  KEY `userID` (`userID`),
  CONSTRAINT `labimage_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labimage`
--

LOCK TABLES `labimage` WRITE;
/*!40000 ALTER TABLE `labimage` DISABLE KEYS */;
INSERT INTO `labimage` VALUES ('labImg_1',1,NULL,NULL,2011,'https://i.imgur.com/Yf9eCXi.jpg'),('labImg_10',1,NULL,NULL,2020,'https://i.imgur.com/gPlYgoT.jpg'),('labImg_11',1,NULL,NULL,2021,'https://i.imgur.com/XLdX84B.jpg'),('labImg_12',1,NULL,NULL,2022,'https://i.imgur.com/EzCSXrW.jpg'),('labImg_2',1,NULL,NULL,2012,'https://i.imgur.com/qG4UoP6.jpg'),('labImg_3',1,NULL,NULL,2013,'https://i.imgur.com/cQeEpmF.jpg'),('labImg_4',1,NULL,NULL,2014,'https://i.imgur.com/iLFB4Ok.jpg'),('labImg_5',1,NULL,NULL,2015,'https://i.imgur.com/EeOQOwl.jpg'),('labImg_6',1,NULL,NULL,2016,'https://i.imgur.com/D1HPJLe.jpg'),('labImg_7',1,NULL,NULL,2017,'https://i.imgur.com/ygHDHua.jpg'),('labImg_8',1,NULL,NULL,2018,'https://i.imgur.com/XTAWax6.jpg'),('labImg_9',1,NULL,NULL,2019,'https://i.imgur.com/zUCNkRQ.jpg');
/*!40000 ALTER TABLE `labimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labimages`
--

DROP TABLE IF EXISTS `labimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labimages` (
  `labImageID` varchar(50) NOT NULL,
  `userID` int NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'img_lab',
  `year` int DEFAULT '1',
  `imgURL` text NOT NULL,
  PRIMARY KEY (`labImageID`),
  KEY `userID` (`userID`),
  CONSTRAINT `labimages_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labimages`
--

LOCK TABLES `labimages` WRITE;
/*!40000 ALTER TABLE `labimages` DISABLE KEYS */;
/*!40000 ALTER TABLE `labimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline`
--

DROP TABLE IF EXISTS `timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline` (
  `timeLineID` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `description` text NOT NULL,
  `year` int DEFAULT '2',
  `title` text NOT NULL,
  PRIMARY KEY (`timeLineID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline`
--

LOCK TABLES `timeline` WRITE;
/*!40000 ALTER TABLE `timeline` DISABLE KEYS */;
INSERT INTO `timeline` VALUES (1,'OLP - ACM/ICPC Asia Cần Thơ 2011 tại CTU',NULL,'Theo ghi nhận của Hội Tin Học Việt Nam, đến ngày 29/02 đã có gần 100 đội tuyển đăng ký thi ACM/ICPC Việt Nam tại Cần Thơ. Năm nay chỉ cho phép 100 đội tuyển đăng ký thi ACM/ICPC Cần Thơ theo phương thức đến trước có chỗ, chỉ dành nhiều nhất 25 chỗ cho các đội không chuyên và cao đẳng. Đây là 1 năm hết sức khó khăn cho các đội tuyển của ĐH Công Nghiệp TP. Hồ Chí Minh khi phải cố gắng lấy được càng nhiều suất thi càng tốt. Với 3 ngày thi đầy khó khăn và thử thách cùng các đối thủ mạnh khác thì Đội tuyển của ĐH Công Nghiệp TP. Hồ Chí Minh đã có những thành tích thật sự đáng nể.',2011,'The ACM/ICPC 2011 Asia Can Tho Regional Contest'),(2,'OLP - ACM/ICPC Asia Hồ Chí Minh 2014 tại IUH',NULL,'Ngày 27/09/2014, Khoa Công nghệ Thông tin – Trường ĐH Công Nghiệp TP.Hồ Chí Minh đã tổ chức thành công vòng Quốc gia Online ACM/ICPC 2014. Trường ĐH Công Nghiệp TP.Hồ Chí Minh có 24 Đội dự thi. Sau 3 ngày tranh tài sôi nổi, tối 31 tháng 10 năm 2014, Lễ bế mạc và trao giải cuộc thi Olympic Tin học sinh viên Việt Nam lần thứ 23 và kỳ thi Lập trình sinh viên quốc tế ACM/ICPC TP.Hồ Chí Minh 2014 đã diễn ra tại Trường ĐH Công nghiệp TP.Hồ Chí Minh. Ở khối thi tập thể ACM/ICPC, kỳ thi quốc tế ACM/ICPC TP.Hồ Chí Minh 2014 có sự tham gia của 107 đội đến từ 66 học viện, ĐH, CĐ. Theo tiến sĩ Nguyễn Quang Huy, Trưởng ban giám khảo kỳ thi ACM/ICPC, đề thi năm nay hay hơn, mang lại rất nhiều kịch tính. Nhiều đội có khả năng cạnh tranh cao với các đội quốc tế. Tuy nhiên, chỉ có một đội làm được nhiều nhất – 8 bài. Kết quả, khối thi tập thể ACM/ICPC, khối chuyên tin: đội Brainfock – University of Engineering and Technology – VNU (ĐH Công Nghệ Hà Nội) đạt giải vô địch. Còn lại, 3 giải nhất, 4 giải nhì, 4 giải 3. Khối không chuyên: đội EnEoDi – People’s Security University đạt giải nhất, còn lại 1 giải nhì, 1 giải 3.',2014,'The ACM/ICPC 2014 Asia Ho Chi Minh City Regional Contest'),(3,'OLP - ACM/ICPC Asia Hà Nội 2015 tại UET',NULL,'Mùa giải OLP - ACM/ICPC 2015 đã kết thúc nhưng dư âm của nó ắt hẵn vẫn còn đâu đó trong mỗi thành viên đội tuyển, cả bây giờ và mãi mãi về sau. Chuyến đi gặt hái nhiều thành tích bởi những bằng khen, giải thưởng và cả những kỳ tích không đo đếm được. Thành công của chuyến đi, ở một khía cạnh khác thể hiện ở việc lấy đi nhiều nước mắt của thầy và trò, niềm vui vỡ òa khi chạm đỉnh thành công và cả những nuối tiếc khi chạm xà ngang cột dọc để rồi bật khỏi khung thành. Nhưnh không sao, \'Nếu tất cả đường đời trơn láng. Chắc gì ta đã nhận ra ta\'. Những gì k8 chưa làm được sẽ là mục tiêu của k9, k10, k11...Nhất định đội tuyển IUH sẽ ghi tên mình vào bản đồ CNTT Việt Nam và thế giới. Một khi các bạn vẫn còn sức chiến đấu, kỳ tích nhất định sẽ xuất hiện. Năm nay chúng ta đã làm rất rất rất tốt rồi, Giải 3 Olympic Tin học khối chuyên tin là 1 cái gì đó đáng để tự hao !!',2015,'The ACM/ICPC 2015 Asia Ha Noi Regional Contest'),(4,'OLP - ACM/ICPC Asia Nha Trang 2016 tại NTU',NULL,'Tham dự kỳ thi Lập trình quốc tế ACM/ICPC khu vực châu Á lần thứ 42-2016 có 116 Nhóm/Đội đến từ 57 trường Việt Nam và châu Á. Trong đó, có 13 đội mạnh đến từ các trường ĐH nổi tiếng như ĐH Quốc gia Seoul, ĐH Giao thông vận tải Trung Quốc, ĐH Quốc gia Đài Loan, ĐH Quốc gia Singapore, ĐH Quốc gia Indonesia...). Ở cuộc thi năm nay ĐH Công Nghiệp TP.Hồ Chí Minh có 10 Đội rải đều ở các bảng Siêu Cúp cho đến bảng Chuyên, bảng Không Chuyên và bảng Cao Đẳng. Và cũng gặt hái được những thành tích đáng nể.',2016,'The ACM/ICPC 2016 Asia Nha Trang Regional Contest'),(5,'OLP - ACM/ICPC Asia Hồ Chí Minh 2017 tại HCMUE',NULL,'OLP - ACM/ICPC Asia Hồ Chí Minh City 2017 tổ chức tại Khu giáo dục thể chất - Trường ĐH Sư phạm TP.Hồ Chí Minh. Do năm 2017 có gần 150 teams đăng ký. Gồm 99 Teams của Việt Nam và 23 Teams Quốc tế. Đây là một trong những kỳ thi ACM/ICPC Asia lớn nhất từ trước đến nay. Trong đó ĐH Công Nghiệp TP.Hồ Chí Minh có 15 Đội tham gia tranh tài trải dài đủ ở các bảng.',2017,'The ACM/ICPC 2017 Asia Ho Chi Minh City Regional Contest'),(6,'OLP - ACM/ICPC Asia Hà Nội 2018 tại PTIT',NULL,'Từ ngày 27-30/11/2018, cùng với Olympic Tin học Sinh viên Việt Nam lần thứ 27 (OLP’18), Kỳ thi lập trình sinh viên quốc tế ICPC khu vực châu Á, điểm thi Hà Nội - ICPC Asia Hanoi 2018 sẽ được tổ chức với 125 đội tham dự, trong đó có 18 đội quốc tế. Olympic Tin học Sinh viên Việt Nam lần thứ 27 (OLP’18) kết nối cùng Kỳ thi lập trình sinh viên quốc tế ICPC Asia Hanoi 2018 sắp diễn ra tại Học viện Công nghệ Bưu chính Viễn thông (PTIT). Là sự kiện do Hội Tin học Việt Nam, Hội Sinh viên Việt Nam và Bộ GD&ĐT tổ chức, OLP’18 và ICPC Asia Hanoi 2018 sẽ là ngày hội của các tài năng trẻ CNTT-TT Việt Nam và châu Á. Trong đó ĐH Công Nghiệp TP.Hồ Chí Minh có 4 Đội tham gia tranh tài, năm nay có những đối thủ nặng ký vì vậy rất nhọc nhằn và khó khăn cho ĐH Công Nghiệp TP.HCM nhưng cũng đã đạt được những thành tích nhất định.',2018,'The ICPC 2018 Asia Ha Noi Regional Contest'),(7,'OLP - ACM/ICPC Asia Đà Nẵng 2019 tại DNUT',NULL,'Ngày 04/12, Trường ĐH Bách Khoa – ĐH Đà Nẵng đã tổ chức khai mạc Olympic Tin học Sinh viên Việt Nam lần thứ 28, Kỳ thi Procon và Kỳ thi Lập trình Sinh viên Quốc tế Khu vực Châu Á – Đà Nẵng năm 2019. Đây là sự kiện biểu dương tài năng, kỹ năng công nghệ thông tin dành cho sinh viên quy mô quốc tế lớn nhất Việt Nam. Kỳ thi lần lượt diễn ra từ ngày 04 – 07/12/2019. Cuộc thi thu hút gần 700 sinh viên, 150 huấn luyện viên từ 71 trường ĐH, CĐ đăng ký các nội dung Olympic, với gần 468 sinh viên chính thức dự thi 5 khối thi, 30 đội tuyển tranh tài Procon. Kỳ thi ICPC có 112 độit uyển tham dự ,trong đó Việt Nam có 95 đội và 17 đội quốc tế đến từ Nhật Bản, Hàn Quốc, Singapore, Trung Quốc, Indonesia, Myanmar,… Các đội tuyển đến từ các trường mạnh và nổi tiếng như Pekin University, ĐH Giao Thông Thượng Hải, ĐH Quốc gia Indonesia, ĐH Quốc gia Kyoto, ĐH Korea, ĐH Quốc gia Singapore. Sau 3 ngày tranh tài sôi nổi, vào lúc 17h00, ngày 06/12/2019, tại Trường ĐH Bách Khoa - ĐH Đà Nẵng đã diễn ra Lễ Tổng kết và Trao giải cuộc thi OLP’19 và ICPC khu vực Châu Á năm 2019. Ở mùa thi năm nay Trường ĐH Công Nghiệp TP.Hồ Chí Minh có 4 đội tham gia, đạt được thành tích Giải Nhất khối Cao đẳng thuộc về Đại học Công nghiệp thành phố Hồ Chí Minh',2019,'The ICPC 2019 Asia Da Nang Regional Contest'),(8,'OLP - ACM/ICPC Asia Cần Thơ 2020 tại CTU',NULL,'Lập trình sinh viên quốc tế ICPC là kỳ thi lập trình đẳng cấp có quy mô toàn cầu, được diễn ra hàng năm ở các quốc gia, châu lục để chọn đội tuyển tham dự vòng thi toàn cầu- World Final. Tuy chỉ mới tham gia các kỳ thi này từ năm 2011, khá trễ so với bề dày lịch sử 17 năm của Việt Nam nhưng IUH đã nhanh chóng vươn lên, lọt tốp 10 trường có thành tích tốt nhất trong 3 năm gần đây và được xếp vào tốp trường mạnh nhất ở sân chơi sinh viên đầy thách thức này. Và năm nay IUH được lựa chọn là 1 trong 16 điểm thi ICPC Quốc gia trong thời gian từ ngày 11 đến 13/11 vừa qua nhằm chọn ra các đội thi xuất sắc nhất đại diện Việt Nam tham dự vòng Asia regional sẽ diễn ra vào tháng 12/2022. Trải qua 5 giờ căng thẳng, đội tuyển các trường đã thi đấu hết mình để giải quyết được càng nhiều bài toán trên máy tính thì cơ hội đi tiếp vào vòng trong càng cao. Mục tiêu của IUH năm nay là dành được 5 suất trong tổng số 100 team tốt nhất Việt Nam để đến với đấu trường Châu Á.',2020,'The ICPC 2020 Asia Can Tho Regional Contest'),(9,'OLP - ACM/ICPC Asia Hà Nội 2021 tại FPTU ',NULL,'Hàng năm vào mùa code, sinh viên yêu thích lập trình trên toàn thế giới tham gia thử thách ở các vòng thi Lập trình sinh viên quốc tế ICPC để cạnh tranh suất vào chung kết World final. Ở mỗi kỳ thi đó, nhiệm vụ của các đội tuyển (team gồm 3 thành viên) phải hái được càng nhiều trái bóng (tương ứng với việc giải quyết thành công các bài toán trên máy tính) thì cơ hội tiến sâu vào chung kết càng cao. Vượt qua khúc cua Covid, sau nhiều lần đổi lịch, kỳ thi ICPC Quốc gia 2021 với sự tham gia của 363 teams đã diễn ra sáng nay ngày 20/2/2022 tại 10 điểm trường trên toàn quốc. Đây là vòng tranh giải, xếp hạng Quốc gia và xét tuyển 100 teams tới Hà Nội tham dự ICPC Asia Hanoi tranh Giải và các suất danh giá đại diện Châu Á tham dự Chung kết toàn cầu ICPC 2022. Đây cũng là vòng thi tranh giải ICPC Quốc gia cuối cùng cho học sinh các trường PTTH chuẩn bị sẵn sàng cho Kỳ thi học sinh giỏi Quốc gia (vào đầu tháng 3/2022), chính vì vậy mức độ minh bạch, chuẩn mực và công bằng rất được Ban tổ chức chú trọng và các đội tuyển nghiêm túc tuân thủ. Tại ĐH Công Nghiệp TP.Hồ Chính Minh, 1 trong 10 điểm thi được Ban tổ chức thành lập để giản cách thí sinh, 12 đội tuyển mạnh nhất của trường tranh đấu ở vòng quốc gia với mục tiêu có 5 teams vào vòng Châu Á. Trung thực trong cuộc thi và tuân thủ 5K là 2 yếu tố chúng tôi luôn cam kết để cùng Ban tổ chức thực hiện thành công kỳ thi trong bối cảnh đặc biệt của mùa dịch Covid 2022 này',2021,'The ICPC 2021 Asia Ha Noi Regional Contest'),(10,'OLP - ACM/ICPC Asia Hồ Chí Minh 2022 tại HCMUTE',NULL,'CHÚC MỪNG ĐỘI TUYỂN ĐẠI HỌC CÔNG NGHIỆP TP.HCM ĐẠT NHIỀU GIẢI THƯỞNG CAO TẠI OLYMPIC TIN HỌC SINH VIÊN VIỆT NAM !!!! Nối tiếp thành tích ICPC, ngày 09/12/2022 đội tuyển OLP đã tạo nên thành công vang dội tại đấu trường Olympic Tin học sinh viên Việt Nam với sự đóng góp của 3 chiến binh đến từ lớp ĐHKHDL17A. Chúc mừng Giải Nhì bảng Chuyên tin của sinh viên Trương Đức Tài (ĐHKHDL17A), Giải Ba chuyên tin của sinh viên Trần Văn Nhân (ĐHKTPM15B) và 3 Giải Nhì bảng Không Đhuyên của sinh viên Lâm Quang Phú (ĐHKHDL17A), sinh viên Nguyễn Văn Nam (ĐHKHDL17A) và sinh viên Trần Lộc (ĐHKTPM15B). Lần đầu tiên sau 12 năm chinh chiến tại cuộc thi lớn này, thì Giải Nhì chuyên Tin đã xuất hiện. Lần đầu tiên bảng Không Chuyên đạt cùng lúc 3 Giải Nhì, chung sân khấu cùng màu áo vàng tạo nên thương hiệu mang tên Trường ĐH Công Nghiệp TP.Hồ Chí Minh. Chúc mừng các bạn vì nỗ lực không ngừng nghỉ để đạt được kết quả xứng đáng !',2022,'The 2022 ICPC Asia Ho Chi Minh City Regional Contest'),(12,'OLP - ACM/ICPC Asia Hà Nội 2012 tại Trường ĐH Công Nghiệp Hà Nội.',NULL,'Đoàn gồm có 15 người: 13 thí sinh và 2 huấn luyện viên. Từ bên phải qua là hai thí sinh nữ hiếm hoi và được ưu ái nhất trong đội. Ngày thi đầu tiên, thi Olympic Tin học. Hình ảnh bạn Nguyễn Thái Hiền (đội mũ trắng), thí sinh đạt Giải Ba cá nhân Olympic Tin học Khối CĐ và Giải Nhì ACM/ICPC Khối Không Chuyên. Từ trái qua là Nguyễn Đình Hà và Nguyễn Trung Hiếu Giải Ba Olympic Tin học Khối Chuyên Tin năm 2011 tại Cần Thơ, dự thi Khối Siêu Cúp năm nay. Các bạn đã hổ trợ rất nhiều về chuyên môn cho các lớp đàn em khóa sau mình trong phong trào Olympic và ACM/ICPC. Lễ tổng kết và trao giải Olympic và ACM/ICPC. Chúc mừng đội IUH.Circle (Nguyễn Minh Phương, Đoàn Phan Quang Minh, Nguyễn Thái Hiền) đã giành được Giải Nhì ACM/ICPC khối Không Chuyên. Chúc mừng Nguyễn Minh Hưng giải ba Olympic Khối Chuyên Tin, Nguyễn Thái Hiền giải ba Khối CĐ, Nguyễn Minh Phương và Đoàn Phan Quang Minh Giải Khuyến Khích Olympic Khối Không Chuyên !',2012,'The OLP - ACM/ICPC 2012 Asia Ha Noi Regional Contest.'),(13,'OLP - ACM/ICPC Asia Đà Nẵng 2013 tại Trường ĐH Duy Tân.',NULL,'Kỳ thi Olympic Tin học sinh viên toàn quốc lần thứ 22 và kỳ thi lập trình sinh viên quốc tế ACM/ICPC 2013 được tổ chức tại Đà Nẵng. Đội tuyển trường ĐH Công Nghiệp TP.HCM có 18 thí sinh tham dự. Hình ảnh Team IUH.Exia, đại diện của K7 tham gia kì thi này. Đây là đội mạnh của IUH. Các thành viên (từ phải qua trái) Phan Thế Nam, Dương Anh Sơn và Trần Văn Vũ là những thành viên đã có rất nhiều đóng góp cho cho phong trào Olympic của IUH.',2013,'The OLP - ACM/ICPC 2013 Asia Da Nang Regional Contest.');
/*!40000 ALTER TABLE `timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timelines`
--

DROP TABLE IF EXISTS `timelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timelines` (
  `timeLineID` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `description` text NOT NULL,
  `year` int DEFAULT '2',
  `title` text NOT NULL,
  PRIMARY KEY (`timeLineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timelines`
--

LOCK TABLES `timelines` WRITE;
/*!40000 ALTER TABLE `timelines` DISABLE KEYS */;
/*!40000 ALTER TABLE `timelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `accountName` varchar(50) NOT NULL,
  `passWord` varchar(50) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `academicYear` int DEFAULT NULL,
  `about` text,
  `major` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `currentJob` text,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `accountName` (`accountName`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'tranvannhan185','passnhucu','Trần Văn Nhân',2019,'-Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 3 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 3 năm ACM/ICPC Asia Regional\n- Leader + Developer Dự án IUHCoder version 2.0\n- Giải nhất Hội nghị Khoa học trẻ YSC 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022','kỹ thuật phần mềm','DevOps Engineer tại FPT SmartCloud'),(2,'thaithihien347','passnhucu','Thái Thị Hiền',2019,'-Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 4 năm OLP - ACM/ICPC Viet Nam National\n- Data Analysis Dự án IUHCoder version 2.0\n- Giải nhất Hội nghị Khoa học trẻ YSC 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022','khoa học dữ liệu','Business Analysis tại Offience Co, Ltd'),(3,'hoangthaomy627','passnhucu','Hoàng Thảo My',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 2 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 2 năm ACM/ICPC Asia Regional\n- Giải nhất Hội nghị Khoa học trẻ YSC 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022\n- Data Analysis + Data Collection Dự án IUHCoder version 2.0','khoa học máy tính',NULL),(4,'phanchitrung84','passnhucu','Phan Chí Trung',2019,'-Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 3 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 3 năm ACM/ICPC Asia Regional\n- Leader + Developer Dự án IUHCoder version 2.0\n- Giải nhất Hội nghị Khoa học trẻ YSC 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022','khoa học dữ liệu',NULL),(5,'nguyenkhanhan221','passnhucu','Nguyễn Khánh An',2020,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 3 năm OLP - ACM/ICPC Viet Nam National\n- The ACM/ICPC Asia Ha Noi Regional Contest 2021 tại FPTU\n- The ACM/ICPC Asia Hoi Chi Minh City Regional Contest 2022 tại HCMUTE','kỹ thuật phần mềm',NULL),(6,'ngodinhbaoyen651','passnhucu','Ngô Đình Bảo Yến',2020,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The ACM/ICPC Asia Ha Noi Regional Contest 2021 tại FPTU','kỹ thuật phần mềm',NULL),(7,'luuthiyennhi34','passnhucu','Lưu Thị Yến Nhi',2019,'-Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2019 tại IUH\n- The ACM/ICPC Asia Da Nang Regional Contest 2019 tại DNUT\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU','khoa học dữ liệu','Data Analysis tại Ninja Van'),(8,'truongthicamly177','passnhucu','Trương Thị Cẩm Ly',2019,'-Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH','khoa học dữ liệu','Data Analysis tại Ninja Van'),(9,'nguyenthithanhhoa429','passnhucu','Nguyễn Thị Thanh Hòa',2019,'-Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2020\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- The ACM/ICPC Asia Ho Chi Minh City Regional Contest 2022 tại HCMUTE','khoa học dữ liệu','Machine Learning Engineer tại Ahamove'),(10,'nguyenthihuyentrang162','passnhucu','Nguyễn Thị Huyền Trang',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2017 tại - HCMUE\n- The ACM/ICPC 2017 Asia - Ho Chi Minh Regional Contest tại HCMUE\n- The ACM/ICPC 2018 As- ia Ha Noi Regional Contest tại PTIT\n- Vòng Chung kết Cuộc thi International Quant Championship tại Hà Nội 2019','khoa học máy tính','Engineering Technician tại TMA Solutions'),(11,'lamquangphu0706','passnhucu','Lâm Quang Phú',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 2 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 2 năm ACM/ICPC Asia Regional\n- Data Analysis Dự án IUHCoder version 2.0\n- Leader + Data Analysis Dự án Landing Page H3.2 Lab','khoa học dữ liệu',NULL),(12,'nguyenhuynhdankhanh3103','passnhucu','Nguyễn Huỳnh Đan Khánh',2022,'- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- Designer + Data Collection Dự án Landing Page H3.2 Lab\n- Báo thủ','khoa học máy tính',NULL),(13,'nguyenhuynhanhthang0108','passnhucu','Nguyễn Huỳnh Anh Thắng',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 2 năm OLP - ACM/ICPC Viet Nam National\n- Back End Developer Dự án Landing Page H3.2 Lab\n- Designer + Developer + Content Writer Dự án IUHCoder version 2.0\n- Giải nhất Hội nghị Khoa học trẻ YSC 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022','kỹ thuật phần mềm',NULL),(14,'nguyenthanhtin1804','passnhucu','Nguyễn Thành Tín',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 2 năm OLP - ACM/ICPC Viet Nam National\n- Front End Developer + Back End Developer Dự án Landing Page H3.2 Lab\n- Designer + Developer + Data Analysis + Data Collection + Content Writer Dự án IUHCoder version 2.0\n- Giải nhất Hội nghị Khoa học trẻ YSC 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022','kỹ thuật phần mềm',NULL),(15,'hotandat2905','passnhucu','Hồ Tấn Đạt',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- Front End Developer Dự án Landing Page H3.2 Lab','khoa học máy tính',NULL),(16,'phamminhkhoa104','passnhucu','Phạm Minh Khoa ',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Front End Developer cho Dự án IUHCoder version 1.0','kỹ thuật phần mềm','Back End Developer tại BRICKMATE Inc'),(17,'nguyenducnam761','passnhucu','Nguyễn Đức Nam',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Back End Developer Dự án IUHCoder version 1.0\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU\n- The ACM/ICPC Asia Ha Noi Regional Contest 2021 tại FPTU\n- Đã tham gia 5 năm OLP - ACM/ICPC','khoa học máy tính','Data Science tại SmartPay'),(18,'phandangluu36','passnhucu','Phan Đăng Lưu',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The ACM/ICPC 2018 As- ia Ha Noi Regional Contest tại PTIT\n- Tham gia 4 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 4 năm ACM/ICPC Asia Regional','công nghệ thông tin','Back End Developer tại Vier Technology'),(19,'tranloc191','passnhucu','Trần Lộc',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The ACM/ICPC Asia Ha Noi Regional Contest 2021 tại FPTU\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- The ACM/ICPC Asia Ho Chi Minh City Regional Contest 2022 tại HCMUTE','kỹ thuật phần mềm',NULL),(20,'tranquoctrong631','passnhucu','Trần Quốc Trọng',2020,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The ACM/ICPC Asia Ha Noi Regional Contest 2021 tại FPTU\n- Developer Dự án IUHCoder version 2.0','kỹ thuật phần mềm',NULL),(21,'tranky175','passnhucu','Trần Kỳ',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','khoa học dữ liệu',NULL),(22,'trandaihiep228','passnhucu','Trần Đại Hiệp',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The ACM/ICPC Asia Ho Chi Minh City Regional Contest 2017 tại - HCMUE\n- The ACM/ICPC 2018 As- ia Ha Noi Regional Contest tại PTIT\n- Designer Dự án IUHCoder version 1.0','kỹ thuật phần mềm','Developer tại BTM Global Vietnam'),(23,'ongthanhdy501','passnhucu','Ong Thanh Dy',2016,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Back End Developer Dự án IUHCoder version 1.0\n- The ACM/ICPC Asia Ha Noi Regional Contest tại PTIT\n- Đã tham gia 5 năm OLP - ACM/ICPC','công nghệ thông tin',NULL),(24,'daoxuanhoangtuan224','passnhucu','Đào Xuân Hoàng Tuấn',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Tham gia 2 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 2 năm ACM/ICPC Asia Regional\n- Eureka 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022','khoa học dữ liệu','Intern Data Engineer tại Real-Time Analyst (RTA)'),(25,'nguyenvannam443','passnhucu','Nguyễn Văn Nam',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- The ACM/ICPC Asia Ho Chi Minh City Regional Contest 2022 tại HCMUTE\n- Eureka 2022','khoa học dữ liệu',NULL),(26,'ngogiaphat0802','passnhucu','Ngô Gia Phát',2019,'-Tester + Designer + Data Analysis + Data Collection + Content Writer Dự án IUHCoder version 2.0\n- Tester + Data Collection Dự án Landing Page H3.2 Lab\n- Giải nhất Hội nghị Khoa học trẻ YSC 2022\n- Giải nhất Cuộc thi Khởi nghiệp Đổi mới sáng tạo InnoGreenLife 2022','công nghệ thông tin','Business Analyst tại TP Success Education Consulting'),(28,'hoquocvung648','passnhucu','Hồ Quốc Vửng',2014,'- The OLP - ACM/ICPC Viet Nam National Contest 2016 tại - IUH\n- The ACM/ICPC 2016 Asia - Nha Trang Regional Contest tại NTU','kỹ thuật phần mềm','Senior Software Engineer tại IMT Solution'),(29,'tranminhlong725','passnhucu','Trần Minh Long',2020,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU\n- Developer Dự án IUHCoder version 2.0','khoa học dữ liệu',NULL),(31,'dinhhoanghaidang604','passnhucu','Đinh Hoàng Hải Đăng',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Back End Developer Dự án IUHCoder version 1.0\n- The ACM/ICPC Asia Ha Noi Regional Contest tại PTIT\n- Tham gia 4 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 4 năm ACM/ICPC Asia Regional','khoa học máy tính','Red Team tại Viettel Cyber Security'),(34,'taminhhieu365','passnhucu','Tạ Minh Hiếu',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Back End Developer Dự án IUHCoder version 1.0\n- Tham gia 4 năm OLP - ACM/ICPC Viet Nam National\n- Tham gia 4 năm ACM/ICPC Asia Regional\n- The ACM/ICPC Asia Ha Noi Regional Contest tại PTIT','kỹ thuật phần mềm','DevOps Engineer tại Viettel Global Investment JSC'),(36,'lethiminhtrang610','passnhucu','Lê Thị Minh Trang',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','khoa học dữ liệu',NULL),(37,'nguyenvukhanhhuy675','passnhucu','Nguyễn Vũ Khánh Huy',2016,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Back End Developer Dự án IUHCoder version 1.0\n- The ACM/ICPC 2016 Asia - Nha Trang Regional Contest tại NTU\n- Đã tham gia 3 năm OLP - ACM/ICPC','kỹ thuật phần mềm',NULL),(38,'nguyenvanhien174','passnhucu','Nguyễn Văn Hiên',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','khoa học dữ liệu',NULL),(39,'hoangtienanh137','passnhucu','Hoàng Tiến Anh',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','khoa học dữ liệu',NULL),(40,'nguyenvananhtuan991','passnhucu','Nguyễn Văn Anh Tuấn',2019,'-Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2019 tại IUH\n- The ACM/ICPC Asia Da Nang Regional Contest 2019 tại DNUT\n- The OLP - ACM/ICPC Viet Nam National Contest 2020\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU','khoa học dữ liệu','Data Science tại Institute for Infocomm Research'),(41,'vodinhnghia256','passnhucu','Võ Đình Nghĩa',2017,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- Back End Developer Dự án IUHCoder version 1.0\n- The OLP - ACM/ICPC Viet Nam National Contest 2017 tại - HCMUE\n- The ACM/ICPC 2017 Asia - Ho Chi Minh City Regional Contest tại HCMUE','khoa học máy tính','Data Scientist tại VIB Bank'),(42,'vominhnguyen279','passnhucu','Võ Minh Nguyên',2018,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2017 tại - HCMUE\n- The ACM/ICPC 2017 Asia - Ho Chi Minh City Regional Contest tại HCMUE','kỹ thuật phần mềm','DevOps Engineer tại Bosch Global'),(43,'nguyentanloi397','passnhucu','Nguyễn Tấn Lợi',2018,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab','khoa học máy tính','Data Engineer tại Krom Co., Ltd'),(45,'phamthemanh452','passnhucu','Phạm Thế Mạnh',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','kỹ thuật phần mềm',NULL),(47,'caohuynhvothanh2901','passnhucu','Cao Huỳnh Võ Thanh',2022,'- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- Designer + Data Collection Dự án Landing Page H3.2 Lab','khoa học máy tính',NULL),(48,'nguyentandat1101','passnhucu','Nguyễn Tấn Đắt',2022,'- Designer + Data Collection + Front End Developer Dự án Landing Page H3.2 Lab','kỹ thuật phần mềm',NULL),(49,'doanvuthienban602','passnhucu','Đoàn Vũ Thiên Ban',2022,'- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- The ACM/ICPC Asia Ho Chi Minh City Regional Contest 2022 tại HCMUTE','khoa học dữ liệu',NULL),(50,'trinhnguyenhoangvu306','passnhucu','Trịnh Nguyễn Hoàng Vũ',2022,'- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- The ACM/ICPC Asia Ho Chi Minh City Regional Contest 2022 tại HCMUTE','khoa học dữ liệu',NULL),(51,'dothanhminhphu241','passnhucu','Đỗ Thành Minh Phú',2022,'- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','khoa học máy tính',NULL),(54,'vophuochau013','passnhucu','Võ Phước Hậu',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','kỹ thuật phần mềm',NULL),(87,'huynhquocbao856','passnhucu','Huỳnh Quốc Bảo',2020,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU\n- Designer + Developer Dự án IUHCoder version 2.0','kỹ thuật phần mềm',NULL),(90,'vominhkhoi821','passnhucu','Võ Minh Khôi',2014,'- The OLP - ACM/ICPC Viet Nam National Contest 2016 tại - IUH\n- The ACM/ICPC 2016 Asia - Nha Trang Regional Contest tại NTU\n- The OLP - ACM/ICPC Viet Nam National Contest 2017 tại - HCMUE\n- The ACM/ICPC 2017 Asia - Ho Chi Minh City Regional Contest tại HCMUE','khoa học máy tính','Software Engineer tại Bosch Global'),(92,'nguyenthanhnga218','passnhucu','Nguyễn Thanh Nga',2014,'- The OLP - ACM/ICPC Viet Nam National Contest 2016 tại - IUH\n- The ACM/ICPC 2016 Asia - Nha Trang Regional Contest tại NTU\n- The OLP - ACM/ICPC Viet Nam National Contest 2017 tại - HCMUE','kỹ thuật phần mềm','Senior Software Engineer tại Zalo'),(93,'nguyenngocha743','passnhucu','Nguyễn Ngọc Hà',2018,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2018 tạ- i IUH\n- The ACM/ICPC 2018 As- ia Ha Noi Regional Contest tại PTIT\n- The OLP - ACM/ICPC Viet Nam National Contest 2019 tại IUH\n- The ACM/ICPC Asia Da Nang Regional Contest 2019 tại DNUT\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU','kỹ thuật phần mềm',NULL),(95,'truongductai456','passnhucu','Trương Đức Tài',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The ACM/ICPC Asia Ha Noi Regional Contest 2021 tại FPTU\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH\n- The ACM/ICPC Asia Ho Chi Minh City Regional Contest 2022 tại HCMUTE','khoa học dữ liệu',NULL),(104,'vominhduoc81','passnhucu','Võ Minh Được',2018,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam Naitonal Contest 2018 tạ- i IUH\n- The ACM/ICPC 2018 As- ia Ha Noi Regional Contest tại PTIT\n- The OLP - ACM/ICPC Viet Nam Naitonal Contest 2019 tại IUH\n- The ACM/ICPC Asia Da Nang Regional Contest 2019 tại DNUT','khoa học máy tính',NULL),(106,'ngophucduy874','passnhucu','Ngô Phúc Duy',2018,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam Naitonal Contest 2018 tạ- i IUH\n- The ACM/ICPC 2018 As- ia Ha Noi Regional Contest tại PTIT\n- The OLP - ACM/ICPC Viet Nam National Contest 2019 tại IUH\n- The ACM/ICPC Asia Da Nang Regional Contest 2019 tại DNUT\n- The OLP - ACM/ICPC Viet Nam National Contest 2020 tại IUH\n- The ACM/ICPC Asia Can Tho Regional Contest 2020 tại CTU','công nghệ thông tin','Back End Developer tại TPS Software Corporation'),(112,'nguyentruongan369','passnhucu','Nguyễn Trường An',2021,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','khoa học dữ liệu',NULL),(113,'nguyenminhluan111','passnhucu','Nguyễn Minh Luận',2020,'- Tham gia training cho Đội tuyển OLP - ACM/ICPC của Lab\n- The OLP - ACM/ICPC Viet Nam National Contest 2021 tại IUH\n- The OLP - ACM/ICPC Viet Nam National Contest 2022 tại IUH','kỹ thuật phần mềm',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrole` (
  `userRoleID` varchar(50) NOT NULL,
  `userRoleNote` varchar(50) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `createByUserID` int DEFAULT NULL,
  PRIMARY KEY (`userRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `userRoleID` varchar(50) NOT NULL,
  `userRoleNote` varchar(50) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `createByUserID` int DEFAULT NULL,
  PRIMARY KEY (`userRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `accountName` varchar(50) NOT NULL,
  `passWord` varchar(50) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `academicYear` int DEFAULT NULL,
  `about` text,
  `major` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `currentJob` text,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `accountName` (`accountName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useruserrole`
--

DROP TABLE IF EXISTS `useruserrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useruserrole` (
  `userID` int NOT NULL,
  `userRoleID` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`,`userRoleID`),
  KEY `userRoleID` (`userRoleID`),
  CONSTRAINT `useruserrole_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `useruserrole_ibfk_2` FOREIGN KEY (`userRoleID`) REFERENCES `userrole` (`userRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useruserrole`
--

LOCK TABLES `useruserrole` WRITE;
/*!40000 ALTER TABLE `useruserrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `useruserrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useruserroles`
--

DROP TABLE IF EXISTS `useruserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useruserroles` (
  `userID` int NOT NULL,
  `userRoleID` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`,`userRoleID`),
  KEY `userRoleID` (`userRoleID`),
  CONSTRAINT `useruserroles_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `useruserroles_ibfk_2` FOREIGN KEY (`userRoleID`) REFERENCES `userrole` (`userRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useruserroles`
--

LOCK TABLES `useruserroles` WRITE;
/*!40000 ALTER TABLE `useruserroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `useruserroles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-07 13:43:28
