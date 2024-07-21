-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: capstoneproject
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressID` int NOT NULL,
  `alumniID` int NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  `activeYN` varchar(1) DEFAULT NULL,
  `primaryYN` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`addressID`),
  KEY `alumniID` (`alumniID`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`alumniID`) REFERENCES `alumni` (`alumniID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (100,201,'123 Peachtree St NW','Atlanta','GA','30303','Y','N'),(101,202,'456 Magnolia Ave','Savannah','GA','31401','Y','Y'),(102,203,'789 River Rd','Augusta','GA','30901','Y','Y'),(103,204,'101 Dogwood Dr','Macon','GA','31201','Y','Y'),(104,205,'234 Oak St','Athens','GA','30601','Y','Y'),(105,207,'567 Maple Ave','Columbus','GA','31901','Y','Y'),(106,208,'890 Pine St','Albany','GA','31701','Y','Y'),(107,209,'111 Cedar Ln','Valdosta','GA','31601','Y','Y'),(108,210,'222 Elm St','Gainesville','GA','30501','Y','Y'),(109,211,'333 Walnut Ave','Rome','GA','30161','Y','Y'),(110,212,'444 Cherry St','Dalton','GA','30720','Y','Y'),(111,213,'555 Birch Dr','Warner Robins','GA','31088','Y','Y'),(112,214,'666 Willow Rd','Johns Creek','GA','30005','Y','Y'),(113,215,'777 Spruce St','Sandy Springs','GA','30328','Y','Y'),(114,216,'888 Sycamore Dr','Roswell','GA','30075','Y','Y'),(115,217,'999 Hickory Ave','Alpharetta','GA','30004','Y','Y'),(116,218,'1212 Cedarwood Ln','Marietta','GA','30008','Y','Y'),(117,219,'1313 Birchwood Dr','Smyrna','GA','30080','Y','Y'),(118,220,'1414 Oakwood Ave','Brookhaven','GA','30319','Y','Y'),(119,229,'1515 Elmwood Dr','Dunwoody','GA','30338','Y','Y'),(120,231,'1616 Maplewood St','Peachtree Corners','GA','30092','Y','Y'),(121,233,'1717 Pinecrest Ave','East Point','GA','30344','Y','Y'),(122,234,'1818 Dogwood Rd','Mableton','GA','30126','Y','Y'),(123,235,'1919 Birchwood Dr','Milton','GA','30004','Y','Y'),(124,236,'2020 Sycamore Ln','Lawrenceville','GA','30043','Y','Y'),(125,237,'2121 Cedarwood Ave','Tucker','GA','30084','Y','Y'),(126,238,'2222 Oakwood Dr','Duluth','GA','30096','Y','Y'),(127,239,'2323 Maple St','Kennesaw','GA','30144','Y','Y'),(128,240,'2424 Willow Ave','Decatur','GA','30030','Y','Y'),(129,241,'2525 Hickory St','Woodstock','GA','30188','Y','Y'),(130,242,'2626 Elmwood Ln','Canton','GA','30114','Y','Y'),(131,243,'2727 Birchwood Dr','Acworth','GA','30101','Y','Y'),(132,245,'2828 Pinecrest St','Cartersville','GA','30120','Y','Y'),(133,246,'2929 Dogwood Rd','Union City','GA','30291','Y','Y'),(134,247,'3030 Cedar Ln','Suwanee','GA','30024','Y','Y'),(135,248,'3131 Oakwood Ave','Forest Park','GA','30297','Y','Y'),(136,249,'3232 Sycamore Dr','Lithia Springs','GA','30122','Y','Y'),(137,250,'3333 Maplewood Rd','Buford','GA','30518','Y','Y'),(138,251,'3434 Willow St','Snellville','GA','30039','Y','Y'),(139,252,'3535 Hickory Ave','Stockbridge','GA','30281','Y','Y'),(140,253,'3636 Elmwood Dr','Conyers','GA','30012','Y','Y'),(141,254,'3737 Pinecrest Ave','Fayetteville','GA','30214','Y','Y'),(142,255,'3838 Birchwood Ln','Covington','GA','30014','Y','Y'),(143,256,'3939 Cedarwood Ave','Loganville','GA','30052','Y','Y'),(144,257,'4040 Oakwood Rd','McDonough','GA','30252','Y','Y'),(145,258,'4141 Maple Ave','Sugar Hill','GA','30518','Y','Y'),(146,259,'4242 Willow Dr','Norcross','GA','30071','Y','Y'),(147,260,'4343 Sycamore St','Fairburn','GA','30213','Y','Y'),(148,261,'4444 Cedar Ln','Hampton','GA','30228','Y','Y'),(149,262,'4545 Elmwood Ave','Doraville','GA','30340','Y','Y'),(150,263,'4646 Pinecrest Dr','Braselton','GA','30517','Y','Y'),(151,264,'4747 Birchwood Rd','Villa Rica','GA','30180','Y','Y'),(152,265,'4848 Dogwood Ave','Buford','GA','30518','Y','Y'),(153,266,'4949 Hickory St','Lithonia','GA','30038','Y','Y'),(154,268,'5050 Oakwood Dr','Dacula','GA','30019','Y','Y'),(155,269,'5151 Maplewood Ave','Holly Springs','GA','30115','Y','Y'),(156,270,'5252 Willow Rd','Austell','GA','30106','Y','Y'),(157,274,'5353 Sycamore Ln','Jefferson','GA','30549','Y','Y'),(158,275,'5454 Cedarwood St','Palmetto','GA','30268','Y','Y'),(159,276,'5555 Elmwood Ave','Flowery Branch','GA','30542','Y','Y'),(160,277,'5656 Pinecrest Dr','Dallas','GA','30132','Y','Y'),(161,278,'5757 Birchwood Rd','Loganville','GA','30052','Y','Y'),(162,279,'5858 Dogwood Ave','Grayson','GA','30017','Y','Y'),(163,280,'5959 Hickory St','Braselton','GA','30517','Y','Y'),(164,282,'6060 Oakwood Dr','Buford','GA','30518','Y','Y'),(165,283,'6161 Maplewood Ave','Cumming','GA','30041','Y','Y'),(166,284,'6262 Willow Rd','Gainesville','GA','30506','Y','Y'),(167,285,'6363 Sycamore Ln','Jefferson','GA','30549','Y','Y'),(168,286,'6464 Cedarwood St','Dacula','GA','30019','Y','Y'),(169,288,'6565 Elmwood Ave','Flowery Branch','GA','30542','Y','Y'),(170,289,'6666 Pinecrest Dr','Dallas','GA','30132','Y','Y'),(171,290,'6767 Birchwood Rd','Loganville','GA','30052','Y','Y'),(172,291,'6868 Dogwood Ave','Grayson','GA','30017','Y','Y'),(173,293,'6969 Hickory St','Braselton','GA','30517','Y','Y'),(174,294,'7070 Oakwood Dr','Buford','GA','30518','Y','Y'),(175,295,'7171 Maplewood Ave','Cumming','GA','30041','Y','Y'),(176,296,'7272 Willow Rd','Gainesville','GA','30506','Y','Y'),(177,297,'7373 Sycamore Ln','Jefferson','GA','30549','Y','Y'),(178,299,'7474 Cedarwood St','Dacula','GA','30019','Y','Y'),(179,300,'7575 Elmwood Ave','Flowery Branch','GA','30542','Y','Y'),(180,301,'7676 Pinecrest Dr','Dallas','GA','30132','Y','Y'),(181,303,'7777 Birchwood Rd','Loganville','GA','30052','Y','Y'),(182,304,'7878 Dogwood Ave','Grayson','GA','30017','Y','Y'),(183,305,'7979 Hickory St','Braselton','GA','30517','Y','Y'),(184,306,'8080 Oakwood Dr','Buford','GA','30518','Y','Y'),(185,307,'8181 Maplewood Ave','Cumming','GA','30041','Y','Y'),(186,308,'8282 Willow Rd','Gainesville','GA','30506','Y','Y'),(187,309,'8383 Sycamore Ln','Jefferson','GA','30549','Y','Y'),(188,310,'8484 Cedarwood St','Dacula','GA','30019','Y','Y'),(189,311,'8585 Elmwood Ave','Flowery Branch','GA','30542','Y','Y'),(190,312,'456 Magnolia Ave','Savannah','GA','31401','Y','Y'),(191,313,'789 River Rd','Augusta','GA','30901','Y','Y'),(192,314,'101 Dogwood Dr','Macon','GA','31201','Y','Y'),(193,315,'234 Oak St','Athens','GA','30601','Y','Y'),(194,320,'567 Maple Ave','Columbus','GA','31901','Y','Y'),(195,321,'890 Pine St','Albany','GA','31701','Y','Y'),(196,322,'111 Cedar Ln','Valdosta','GA','31601','Y','Y'),(197,323,'222 Elm St','Gainesville','GA','30501','Y','Y'),(198,324,'333 Walnut Ave','Rome','GA','30161','Y','Y'),(328,328,'100 peachtree road','Atlanta ','GA','30303','Y','Y'),(3281,328,'101 Peachtree Road','Atlanta','GA','30303','Y','N'),(12122,201,'124 Peachtree Road','Atlanta','GA','30101','Y','Y');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumni` (
  `alumniID` int NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `ethnicity` varchar(1) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `linkedIn_link` varchar(100) DEFAULT NULL,
  `twitter_link` varchar(100) DEFAULT NULL,
  `facebook_link` varchar(100) DEFAULT NULL,
  `instagram_link` varchar(100) DEFAULT NULL,
  `guestSpeakerYN` varchar(1) DEFAULT NULL,
  `newsLetterYN` varchar(1) DEFAULT NULL,
  `imageThumb` varchar(200) DEFAULT NULL,
  `imageNormal` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `deceasedYN` varchar(1) DEFAULT NULL,
  `deceasedDT` date DEFAULT NULL,
  `deceasedNotes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alumniID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
INSERT INTO `alumni` VALUES (201,'Corey','Class','CClass@yahoo.com','6077224969','1976-05-05','F','','kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y','','','','Y',NULL,''),(202,'John','Davis','JDavis@yahoo.com','3145245336','1964-03-24','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(203,'Sybil','Hood','SHood@yahoo.com','7089572772','1976-02-14','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(204,'Benjamin','Jones','BJones@yahoo.com','7175492607','1975-03-09','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(205,'James','Inglis','JInglis@yahoo.com','4192090851','1972-06-01','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(207,'Adam','Hammond','AHammond@yahoo.com','9199650676','1973-10-22','M','W','kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y','','','Adam is a cool guy','Y',NULL,''),(208,'Christopher','Reynolds','CReynolds@yahoo.com','5016248522','1969-03-02','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(209,'Scott','Szukaitis','SSzukaitis@yahoo.com','5175469673','1976-09-22','M','W','kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y','','','','Y',NULL,''),(210,'Jimmy','Taylor','JTaylor@yahoo.com','6622564145','1968-03-19','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(211,'Brandon','Wieme','BWieme@yahoo.com','2187654141','1974-11-28','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(212,'Douglas','Wood','DWood@yahoo.com','9138417208','1970-10-27','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(213,'Chad','Dolan','CDolan@yahoo.com','6087443257','1972-07-14','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(214,'Michael','Eggleton','MEggleton@yahoo.com','6155263824','1964-09-26','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(215,'Orlando','Ferrer-Montano','OFerrer-Montano@yahoo.com','6155251515','1958-05-17','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(216,'David','Simons','DSimons@yahoo.com','7065950806','1970-04-08','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(217,'Michael','Brasher','MBrasher@yahoo.com','6142928475','1973-11-04','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(218,'Kathy','Riggs','KRiggs@yahoo.com','5695757530','1964-10-16','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(219,'Timothy','Smith','TSmith@yahoo.com','5123894826','1967-11-02','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(220,'Bobby','Bond','BBond@yahoo.com','4788256354','1972-12-10','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(229,'Mark','Vrtiska','MVrtiska@yahoo.com','4022281867','1963-12-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(231,'Thomas','White','TWhite@yahoo.com','6158767954','1961-09-25','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(233,'Stephen','Wells','SWells@yahoo.com','2053320466','1949-09-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(234,'William','Wells','WWells@yahoo.com','6626842432','1957-02-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(235,'Ronald','Weitknecht','RWeitknecht@yahoo.com','9082864653','1962-05-04','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(236,'Jeffrey','Webb','JWebb@yahoo.com','9017823545','1961-04-29','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(237,'Keith','Weaver','KWeaver@yahoo.com','2153235030','1957-10-03','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(238,'Robert','Warden','RWarden@yahoo.com','2058813387','1948-09-02','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(239,'Thomas','Waldrop','TWaldrop@yahoo.com','7066135714','1970-06-20','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(240,'Scott','Walock','SWalock@yahoo.com','8104741264','1969-06-13','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(241,'Guy','Wagner','GWagner@yahoo.com','2088435509','1954-03-30','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(242,'Bobby','Wilson','BWilson@yahoo.com','6626523402','1942-10-28','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(243,'Timothy','Wilson','TWilson@yahoo.com','5174312078','1969-11-05','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(245,'Leah','Bray','LBray@yahoo.com','6018365480','1973-12-07','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(246,'John','Wolkonowski','JWolkonowski@yahoo.com','6157545591','1971-12-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(247,'John','Wooding','JWooding@yahoo.com','9192749847','1957-02-14','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(248,'Victoria','Woshner','VWoshner@yahoo.com','2173282159','1961-09-15','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(249,'Richard','Minnis','RMinnis@yahoo.com','6623242728','1966-04-24','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(250,'Sharon','Fuller','SFuller@yahoo.com','8067447709','1980-04-05','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(251,'Daniel','O Keefe','DO Keefe@yahoo.com','9898287300','1977-04-03','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(252,'Philip','Barbour','PBarbour@yahoo.com','6624554166','1950-12-19','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(253,'Brian','Dorr','BDorr@yahoo.com','6623258215','1963-04-25','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(254,'Jennifer','Kross','JKross@yahoo.com','5617322622','1976-01-29','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(255,'Sharyn','Hood','SHood@yahoo.com','4106614062','1976-05-31','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(256,'Ivan','Llerandi-Roman','ILlerandi-Roman@yahoo.com','7875283462','1978-04-04','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(257,'Brad','Holder','BHolder@yahoo.com','6625136336','1977-12-18','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(258,'Theresa','Childers','TChilders@yahoo.com','9707265625','1977-05-11','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(259,'Kevin','Brunke','KBrunke@yahoo.com','5738336489','1982-05-20','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(260,'Sabrina','Chandler','SChandler@yahoo.com','2284758010','1981-06-18','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(261,'Andrea','Cooper','ACooper@yahoo.com','6622725078','1981-04-26','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(262,'James','Havens','JHavens@yahoo.com','6624645458','1980-07-15','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(263,'Robert','Hayes','RHayes@yahoo.com','8505545217','1981-01-22','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(264,'Aaron','Pearse','APearse@yahoo.com','9702069132','1976-05-20','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(265,'Heather','Theel','HTheel@yahoo.com','6307320149','1980-01-03','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(266,'Lisa','Yager','LYager@yahoo.com','6015582931','1967-05-09','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(268,'Forrest','Wynne','FWynne@yahoo.com','2019424064','1960-08-17','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(269,'Jason','Yarbrough','JYarbrough@yahoo.com','3345025317','1973-10-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(270,'Gregory','Yarrow','GYarrow@yahoo.com','8646567370','1955-06-26','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(274,'Marcus','Spencer','MSpencer@yahoo.com','6018431385','1957-06-10','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(275,'Lynn','Stacey','LStacey@yahoo.com','6155739338','1964-08-18','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(276,'Charles','Staten','CStaten@yahoo.com','4095648375','1953-01-10','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(277,'Scott','Stephens','SStephens@yahoo.com','5153362490','1970-08-12','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(278,'Aberdeen','Stewart','AStewart@yahoo.com','6623234286','1956-05-15','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(279,'David','Straus','DStraus@yahoo.com','5138633716','1960-05-03','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(280,'Roy','Stonecypher','RStonecypher@yahoo.com','2067486015','1963-02-27','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(282,'John','Stys','JStys@yahoo.com','4122227674','1966-03-18','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(283,'Abdul Halim','Sulaiman','ASulaiman@yahoo.com','6623236199','1952-09-12','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(284,'Curtis','Summerlin','CSummerlin@yahoo.com','6019565214','1963-07-01','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(285,'Kevin','Sulliven','KSulliven@yahoo.com','2012331940','1965-12-26','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(286,'Perry','Sumner','PSumner@yahoo.com','9193323578','1956-06-09','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(288,'Willie','Tomlinson','WTomlinson@yahoo.com','6013253133','1950-07-11','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(289,'Randy','Tucker','RTucker@yahoo.com','2148722684','1955-05-19','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(290,'William','Uihlein','WUihlein@yahoo.com','6013239745','1962-05-03','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(291,'Jeffrey','Underwood','JUnderwood@yahoo.com','6018683892','1955-03-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(293,'Billy','Teels','BTeels@yahoo.com','6623237296','1947-10-15','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(294,'James','Tidwell','JTidwell@yahoo.com','6623237255','1955-09-02','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(295,'Pakorn','Unprasert','PUnprasert@yahoo.com','6623258875','1955-10-16','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(296,'Robert','Vanderhoof','RVanderhoof@yahoo.com','4147434937','1958-03-20','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(297,'Gomut','Unsrisong','GUnsrisong@yahoo.com','6623255593','1949-02-21','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(299,'Richard','Vanhoosen','RVanhoosen@yahoo.com','3144450609','1963-01-31','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(300,'Mark','Vrtiska','MVrtiska@yahoo.com','4022281867','1963-12-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(301,'Guy','Wagner','GWagner@yahoo.com','2088435509','1954-03-31','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(303,'Keith','Weaver','KWeaver@yahoo.com','2153235030','1957-10-03','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(304,'Bobby','Wilson','BWilson@yahoo.com','6623238392','1942-10-28','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(305,'Timothy','Wilson','TWilson@yahoo.com','5174230898','1969-11-05','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(306,'William','Wingo','WWingo@yahoo.com','6013273262','1953-02-17','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(307,'Leah','Bray','LBray@yahoo.com','6018365480','1973-12-07','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(308,'Brett','Wehrle','BWehrle@yahoo.com','6623243334','1965-01-21','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(309,'Alice','White','AWhite@yahoo.com','6017462835','1956-01-25','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(310,'Thomas','White','TWhite@yahoo.com','6158767954','1961-09-25','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(311,'John','Wooding','JWooding@yahoo.com','9192749847','1957-02-14','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(312,'Victoria','Woshner','VWoshner@yahoo.com','2173282159','1961-09-15','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(313,'Qifeng','Ye','QYe@yahoo.com','6623253830','1969-01-02','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(314,'Zhan','Zhang','ZZhang@yahoo.com','6623258875','1956-01-30','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(315,'Patrick','Zollner','PZollner@yahoo.com','1560116170','1967-06-11','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(320,'Michael','Johnson','MJohnson@yahoo.com','5019676722','1967-10-18','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(321,'Jeanne','Hartley','JHartley@yahoo.com','6017932659','1953-12-04','F',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(322,'Galen','Jons','GJons@yahoo.com','6056542540','1968-05-01','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(323,'Raymond','Kagel Jr','RKagel Jr@yahoo.com','8032771974','1950-01-14','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(324,'Randall','Kelly','RKelly@yahoo.com','3046231868','1963-09-10','M',NULL,'kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y',NULL,NULL,NULL,NULL,NULL,NULL),(325,'Nigel','Kaganzi','nigel@yahoo.com','1234567890','2000-02-02','M','B','kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','N','Y','','','Nigel Is the very best','N',NULL,''),(328,'Andrew','Light','andrew@yahoo.com','9876543210','2000-06-20','M','W','kennesaw.edu','linkedin.com','twitter.com','facebook.com','instagram.com','Y','Y','','','Andrew is great at CSS','',NULL,'');
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree` (
  `degreeID` int NOT NULL AUTO_INCREMENT,
  `alumniID` int NOT NULL,
  `major` varchar(50) NOT NULL,
  `minor` varchar(50) DEFAULT NULL,
  `graduationDT` date DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  PRIMARY KEY (`degreeID`),
  KEY `alumniID` (`alumniID`),
  CONSTRAINT `degree_ibfk_1` FOREIGN KEY (`alumniID`) REFERENCES `alumni` (`alumniID`)
) ENGINE=InnoDB AUTO_INCREMENT=3283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES (100,201,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(101,202,'MIS','Accounting','2023-12-09','Kennesaw State University','Kennesaw','GA'),(102,203,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(103,204,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(104,205,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(105,207,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(106,208,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(107,209,'MIS','Management','2022-05-10','Kennesaw State University','Kennesaw','GA'),(108,210,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(109,211,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(110,212,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(111,213,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(112,214,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(113,215,'MIS','','2021-12-11','Kennesaw State University','Kennesaw','GA'),(114,216,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(115,217,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(116,218,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(117,218,'MBA','','2023-12-09','Georgia State University','Atlanta','GA'),(118,219,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(119,220,'MIS','','2021-12-11','Kennesaw State University','Kennesaw','GA'),(120,229,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(121,231,'MIS','Marketing','2021-12-11','Kennesaw State University','Kennesaw','GA'),(122,233,'MIS','Marketing','2021-12-11','Kennesaw State University','Kennesaw','GA'),(123,234,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(124,235,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(125,236,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(126,237,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(127,238,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(128,239,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(129,240,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(130,241,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(131,242,'MIS','Management','2021-12-11','Kennesaw State University','Kennesaw','GA'),(132,243,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(133,245,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(134,246,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(135,247,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(136,248,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(137,249,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(138,250,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(139,251,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(140,252,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(141,253,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(142,254,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(143,255,'MIS','Marketing','2020-05-12','Kennesaw State University','Kennesaw','GA'),(144,256,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(145,257,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(146,258,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(147,259,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(148,260,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(149,261,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(150,262,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(151,263,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(152,264,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(153,265,'MIS','Marketing','2020-12-12','Kennesaw State University','Kennesaw','GA'),(154,266,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(155,268,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(156,269,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(157,270,'MIS','Accounting','2021-05-11','Kennesaw State University','Kennesaw','GA'),(158,274,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(159,275,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(160,276,'MIS','','2021-12-11','Kennesaw State University','Kennesaw','GA'),(161,277,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(162,278,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(163,279,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(164,280,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(165,282,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(166,283,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(167,284,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(168,285,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(169,286,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(170,288,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(171,289,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(172,290,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(173,291,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(174,293,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(175,294,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(176,295,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(177,296,'MIS','','2022-05-10','Kennesaw State University','Kennesaw','GA'),(178,297,'MIS','Marketing','2023-05-09','Kennesaw State University','Kennesaw','GA'),(179,299,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(180,300,'MIS','','2021-05-11','Kennesaw State University','Kennesaw','GA'),(181,301,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(182,303,'MIS','','2020-12-12','Kennesaw State University','Kennesaw','GA'),(183,304,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(184,305,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(185,306,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(186,307,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(187,308,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(188,309,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(189,310,'MIS','','2021-12-11','Kennesaw State University','Kennesaw','GA'),(190,311,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(191,312,'MIS','Accounting','2020-12-12','Kennesaw State University','Kennesaw','GA'),(192,313,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(193,314,'MIS','','2020-05-12','Kennesaw State University','Kennesaw','GA'),(194,315,'MIS','','2021-12-11','Kennesaw State University','Kennesaw','GA'),(195,320,'MIS','','2024-05-08','Kennesaw State University','Kennesaw','GA'),(196,321,'MIS','','2022-12-10','Kennesaw State University','Kennesaw','GA'),(197,322,'MIS','','2023-12-09','Kennesaw State University','Kennesaw','GA'),(198,323,'MIS','Marketing','2022-05-10','Kennesaw State University','Kennesaw','GA'),(199,324,'MIS','','2023-05-09','Kennesaw State University','Kennesaw','GA'),(3280,328,'Ph D Information Systems','Artificial Intelligence','2024-07-23','Kennesaw State University','Kennesaw','GA'),(3281,328,'Master of Science in Information Systems','Financial Technology','2022-05-11','Georgia State University','Atlanta','GA'),(3282,328,'BBA Information Systems','','2020-12-10','University of Berkeley California','Berkeley','CA');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donationID` int NOT NULL AUTO_INCREMENT,
  `alumniID` int NOT NULL,
  `donationAmt` decimal(11,2) NOT NULL,
  `donationDT` date NOT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`donationID`),
  KEY `alumniID` (`alumniID`),
  CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`alumniID`) REFERENCES `alumni` (`alumniID`)
) ENGINE=InnoDB AUTO_INCREMENT=3283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (100,211,500.00,'2023-01-08','',''),(101,220,250.00,'2023-05-10','',''),(102,260,1000.00,'2022-03-22','',''),(103,279,500.00,'2022-06-24','',''),(104,297,10000.00,'2022-11-03','',''),(105,306,2500.00,'2023-07-06','',''),(106,320,5000.00,'2023-02-05','',''),(107,323,750.00,'2023-10-19','',''),(3280,328,100.00,'2024-07-20','I love KSU','KSU is cool'),(3281,328,10000.50,'2024-07-21','I really love KSU','KSU is cool');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment` (
  `EID` int NOT NULL AUTO_INCREMENT,
  `alumniID` int NOT NULL,
  `company` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `currentYN` char(1) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EID`),
  KEY `alumniID` (`alumniID`),
  CONSTRAINT `employment_ibfk_1` FOREIGN KEY (`alumniID`) REFERENCES `alumni` (`alumniID`)
) ENGINE=InnoDB AUTO_INCREMENT=12133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

LOCK TABLES `employment` WRITE;
/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES (100,201,'Tech Solutions Inc','Atlanta','GA','30303','Software Engineer','2021-06-14','2024-07-15','N',''),(101,202,'Data Dynamics','Savannah','GA','31401','Data Analyst','2016-11-11',NULL,'Y',''),(102,203,'Healthcare Innovations','Augusta','GA','30901','Medical Assistant','2020-07-05',NULL,'Y',''),(103,204,'Consulting Experts LLC','Macon','GA','31201','Management Consultant','2024-05-24',NULL,'Y',''),(104,205,'Innovative Designs Co','Athens','GA','30601','Graphic Designer','2023-06-03',NULL,'Y',''),(105,207,'Logistics Solutions','Columbus','GA','31901','Logistics Coordinator','2018-12-26',NULL,'Y',''),(106,208,'Global Services Corp','Albany','GA','31701','Financial Analyst','2015-05-06',NULL,'Y',''),(107,209,'Education Solutions','Valdosta','GA','31601','Teacher','2019-09-28',NULL,'Y',''),(108,210,'Manufacturing Inc','Gainesville','GA','30501','Production Supervisor','2022-03-28',NULL,'Y',''),(109,211,'Financial Strategies','Rome','GA','30161','Financial Advisor','2023-07-04',NULL,'Y',''),(110,212,'Creative Minds Agency','Dalton','GA','30720','Marketing Manager','2015-11-15',NULL,'Y',''),(111,213,'Technology Partners','Warner Robins','GA','31088','IT Specialist','2016-07-08',NULL,'Y',''),(112,214,'Real Estate Group','Johns Creek','GA','30005','Real Estate Agent','2022-10-16',NULL,'Y',''),(113,215,'Healthcare Solutions','Sandy Springs','GA','30328','Nurse Practitioner','2016-08-15',NULL,'Y',''),(114,216,'Retail Innovations','Roswell','GA','30075','Store Manager','2021-10-04',NULL,'Y',''),(115,217,'Engineering Solutions','Alpharetta','GA','30004','Mechanical Engineer','2018-04-07',NULL,'Y',''),(116,218,'Legal Services Group','Marietta','GA','30008','Attorney','2018-04-10',NULL,'Y',''),(117,219,'Hospitality Solutions','Smyrna','GA','30080','Hotel Manager','2021-03-06',NULL,'Y',''),(118,220,'Construction Co','Brookhaven','GA','30319','Construction Manager','2021-10-01',NULL,'Y',''),(119,229,'Media Productions','Dunwoody','GA','30338','Videographer','2019-06-21',NULL,'Y',''),(120,231,'Unemployed','','','','','2015-09-17',NULL,'Y',''),(121,233,'Tech Solutions Inc','Atlanta','GA','30303','Software Engineer','2022-06-29',NULL,'Y',''),(122,234,'Data Dynamics','Savannah','GA','31401','Data Analyst','2021-03-15',NULL,'Y',''),(123,235,'Healthcare Innovations','Augusta','GA','30901','Medical Assistant','2018-08-01',NULL,'Y',''),(124,236,'Consulting Experts LLC','Macon','GA','31201','Management Consultant','2022-08-09',NULL,'Y',''),(125,237,'Innovative Designs Co','Athens','GA','30601','Graphic Designer','2017-10-06',NULL,'Y',''),(126,238,'Logistics Solutions','Columbus','GA','31901','Logistics Coordinator','2023-10-13',NULL,'Y',''),(127,239,'Global Services Corp','Albany','GA','31701','Financial Analyst','2021-06-11',NULL,'Y',''),(128,240,'Education Solutions','Valdosta','GA','31601','Teacher','2021-01-12',NULL,'Y',''),(129,241,'Manufacturing Inc','Gainesville','GA','30501','Production Supervisor','2023-01-29',NULL,'Y',''),(130,242,'Financial Strategies','Rome','GA','30161','Financial Advisor','2020-06-22',NULL,'Y',''),(131,243,'Creative Minds Agency','Dalton','GA','30720','Marketing Manager','2016-04-01',NULL,'Y',''),(132,245,'Technology Partners','Warner Robins','GA','31088','IT Specialist','2019-01-06',NULL,'Y',''),(133,246,'Real Estate Group','Johns Creek','GA','30005','Real Estate Agent','2020-09-29',NULL,'Y',''),(134,247,'Healthcare Solutions','Sandy Springs','GA','30328','Nurse Practitioner','2019-01-13',NULL,'Y',''),(135,248,'Retail Innovations','Roswell','GA','30075','Store Manager','2020-06-09',NULL,'Y',''),(136,249,'Engineering Solutions','Alpharetta','GA','30004','Mechanical Engineer','2018-08-22',NULL,'Y',''),(137,250,'Legal Services Group','Marietta','GA','30008','Attorney','2022-09-11',NULL,'Y',''),(138,251,'Hospitality Solutions','Smyrna','GA','30080','Hotel Manager','2017-08-30',NULL,'Y',''),(139,252,'Construction Co','Brookhaven','GA','30319','Construction Manager','2020-05-18',NULL,'Y',''),(140,253,'Media Productions','Dunwoody','GA','30338','Videographer','2020-11-07',NULL,'Y',''),(141,254,'Tech Solutions Inc','Atlanta','GA','30303','Software Engineer','2020-08-29',NULL,'Y',''),(142,255,'Data Dynamics','Savannah','GA','31401','Data Analyst','2015-06-04',NULL,'Y',''),(143,256,'Healthcare Innovations','Augusta','GA','30901','Medical Assistant','2015-01-13',NULL,'Y',''),(144,257,'Consulting Experts LLC','Macon','GA','31201','Management Consultant','2020-12-02',NULL,'Y',''),(145,258,'Innovative Designs Co','Athens','GA','30601','Graphic Designer','2015-08-31',NULL,'Y',''),(146,259,'Logistics Solutions','Columbus','GA','31901','Logistics Coordinator','2015-03-13',NULL,'Y',''),(147,260,'Global Services Corp','Albany','GA','31701','Financial Analyst','2019-04-26',NULL,'Y',''),(148,261,'Education Solutions','Valdosta','GA','31601','Teacher','2022-08-04',NULL,'Y',''),(149,262,'Manufacturing Inc','Gainesville','GA','30501','Production Supervisor','2019-04-03',NULL,'Y',''),(150,263,'Financial Strategies','Rome','GA','30161','Financial Advisor','2022-04-22',NULL,'Y',''),(151,264,'Creative Minds Agency','Dalton','GA','30720','Marketing Manager','2018-11-13',NULL,'Y',''),(152,265,'Technology Partners','Warner Robins','GA','31088','IT Specialist','2018-03-11',NULL,'Y',''),(153,266,'Real Estate Group','Johns Creek','GA','30005','Real Estate Agent','2019-11-29',NULL,'Y',''),(154,268,'Healthcare Solutions','Sandy Springs','GA','30328','Nurse Practitioner','2024-07-01',NULL,'Y',''),(155,269,'Retail Innovations','Roswell','GA','30075','Store Manager','2019-05-20',NULL,'Y',''),(156,270,'Engineering Solutions','Alpharetta','GA','30004','Mechanical Engineer','2015-12-28',NULL,'Y',''),(157,274,'Legal Services Group','Marietta','GA','30008','Attorney','2021-04-09',NULL,'Y',''),(158,275,'Hospitality Solutions','Smyrna','GA','30080','Hotel Manager','2018-05-12',NULL,'Y',''),(159,276,'Construction Co','Brookhaven','GA','30319','Construction Manager','2019-07-26',NULL,'Y',''),(160,277,'Media Productions','Dunwoody','GA','30338','Videographer','2016-09-29',NULL,'Y',''),(161,278,'Tech Solutions Inc','Atlanta','GA','30303','Software Engineer','2020-07-01',NULL,'Y',''),(162,279,'Data Dynamics','Savannah','GA','31401','Data Analyst','2020-01-04',NULL,'Y',''),(163,280,'Healthcare Innovations','Augusta','GA','30901','Medical Assistant','2022-02-28',NULL,'Y',''),(164,282,'Consulting Experts LLC','Macon','GA','31201','Management Consultant','2024-06-06',NULL,'Y',''),(165,283,'Innovative Designs Co','Athens','GA','30601','Graphic Designer','2023-11-25',NULL,'Y',''),(166,284,'Logistics Solutions','Columbus','GA','31901','Logistics Coordinator','2023-08-15',NULL,'Y',''),(167,285,'Global Services Corp','Albany','GA','31701','Financial Analyst','2022-06-12',NULL,'Y',''),(168,286,'Education Solutions','Valdosta','GA','31601','Teacher','2017-10-18',NULL,'Y',''),(169,288,'Manufacturing Inc','Gainesville','GA','30501','Production Supervisor','2017-06-27',NULL,'Y',''),(170,289,'Financial Strategies','Rome','GA','30161','Financial Advisor','2022-02-19',NULL,'Y',''),(171,290,'Creative Minds Agency','Dalton','GA','30720','Marketing Manager','2022-10-21',NULL,'Y',''),(172,291,'Technology Partners','Warner Robins','GA','31088','IT Specialist','2017-05-19',NULL,'Y',''),(173,293,'Unemployed','','','','','2023-03-27',NULL,'Y',''),(174,294,'Real Estate Group','Johns Creek','GA','30005','Real Estate Agent','2021-04-04',NULL,'Y',''),(175,295,'Healthcare Solutions','Sandy Springs','GA','30328','Nurse Practitioner','2022-01-01',NULL,'Y',''),(176,296,'Retail Innovations','Roswell','GA','30075','Store Manager','2018-05-11',NULL,'Y',''),(177,297,'Engineering Solutions','Alpharetta','GA','30004','Mechanical Engineer','2020-05-14',NULL,'Y',''),(178,299,'Legal Services Group','Marietta','GA','30008','Attorney','2016-05-05',NULL,'Y',''),(179,300,'Hospitality Solutions','Smyrna','GA','30080','Hotel Manager','2016-12-04',NULL,'Y',''),(180,301,'Construction Co','Brookhaven','GA','30319','Construction Manager','2015-03-27',NULL,'Y',''),(181,303,'Media Productions','Dunwoody','GA','30338','Videographer','2020-12-09',NULL,'Y',''),(182,304,'Tech Innovations Group','Macon','GA','31201','Systems Administrator','2020-06-01',NULL,'Y',''),(183,305,'Digital Solutions Co','Athens','GA','30601','Network Engineer','2016-02-29',NULL,'Y',''),(184,306,'Cybersecurity Experts','Columbus','GA','31901','Cybersecurity Analyst','2020-06-10',NULL,'Y',''),(185,307,'Software Solutions Inc','Albany','GA','31701','Software Developer','2016-09-27',NULL,'Y',''),(186,308,'Cloud Computing Services','Valdosta','GA','31601','Cloud Engineer','2019-04-07',NULL,'Y',''),(187,309,'Network Solutions','Gainesville','GA','30501','Network Administrator','2016-10-17',NULL,'Y',''),(188,310,'IT Consulting Partners','Rome','GA','30161','IT Consultant','2017-01-22',NULL,'Y',''),(189,311,'Web Development Company','Dalton','GA','30720','Web Developer','2021-01-30',NULL,'Y',''),(190,312,'Tech Solutions Inc','Warner Robins','GA','31088','IT Support Specialist','2016-10-20',NULL,'Y',''),(191,313,'Data Analytics Firm','Johns Creek','GA','30005','Data Scientist','2023-01-13',NULL,'Y',''),(192,314,'Artificial Intelligence Solutions','Sandy Springs','GA','30328','AI Engineer','2017-10-06',NULL,'Y',''),(193,315,'Tech Innovations Group','Roswell','GA','30075','Systems Engineer','2020-09-18',NULL,'Y',''),(194,320,'Mobile App Development','Alpharetta','GA','30004','Mobile App Developer','2022-01-11',NULL,'Y',''),(195,321,'Data Security Solutions','Marietta','GA','30008','Information Security Analyst','2019-08-25',NULL,'Y',''),(196,322,'IT Infrastructure Services','Smyrna','GA','30080','IT Infrastructure Manager','2020-01-04',NULL,'Y',''),(197,323,'Cloud Computing Solutions','Brookhaven','GA','30319','Cloud Architect','2018-06-29',NULL,'Y',''),(198,324,'IT Services Company','Dunwoody','GA','30338','IT Manager','2015-09-09',NULL,'Y',''),(3280,328,'Google','Atlanta','GA','30303','Software Engineer','2024-07-20',NULL,'Y',''),(3281,328,'Amazon Web Services','Atlanta','GA','30303','Cloud Practictioner','2020-05-19','2024-07-08','N',''),(12132,201,'Google','Atlanta','GA','30101','Software Engineer','2024-07-17',NULL,'Y','Nice raise');
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `NID` int NOT NULL AUTO_INCREMENT,
  `newsDate` date NOT NULL,
  `headline` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `fileLoc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`NID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sent_to`
--

DROP TABLE IF EXISTS `sent_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sent_to` (
  `alumniID` int NOT NULL,
  `NID` int NOT NULL,
  `sentDate` date DEFAULT NULL,
  PRIMARY KEY (`alumniID`,`NID`),
  KEY `NID` (`NID`),
  CONSTRAINT `sent_to_ibfk_1` FOREIGN KEY (`alumniID`) REFERENCES `alumni` (`alumniID`),
  CONSTRAINT `sent_to_ibfk_2` FOREIGN KEY (`NID`) REFERENCES `newsletter` (`NID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sent_to`
--

LOCK TABLES `sent_to` WRITE;
/*!40000 ALTER TABLE `sent_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `sent_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillset`
--

DROP TABLE IF EXISTS `skillset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillset` (
  `SID` int NOT NULL AUTO_INCREMENT,
  `alumniID` int NOT NULL,
  `skill` varchar(50) NOT NULL,
  `proficiency` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `alumniID` (`alumniID`),
  CONSTRAINT `skillset_ibfk_1` FOREIGN KEY (`alumniID`) REFERENCES `alumni` (`alumniID`)
) ENGINE=InnoDB AUTO_INCREMENT=3283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillset`
--

LOCK TABLES `skillset` WRITE;
/*!40000 ALTER TABLE `skillset` DISABLE KEYS */;
INSERT INTO `skillset` VALUES (1,201,'Python','Beginner','Flask Experience'),(3280,328,'Python','Beginner','Can utilize flask libraries'),(3281,328,'SQL','Intermediate','Can create backend databases');
/*!40000 ALTER TABLE `skillset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UID` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `jobDescription` varchar(50) DEFAULT NULL,
  `viewPriveledgeYN` char(1) DEFAULT NULL,
  `insertPriveledgeYN` char(1) DEFAULT NULL,
  `updatePriveledgeYN` char(1) DEFAULT NULL,
  `deletePriveledgeYN` char(1) DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('0123456789','password123','Nigel','Kaganzi','Database Administrator','Y','Y','Y','Y','admin'),('1123456789','password124','Josh','Meyers','Intern','Y','Y','N','N','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-20 22:44:58
