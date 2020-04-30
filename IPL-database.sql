-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: primary-mysql.mysql.database.azure.com    Database: db
-- ------------------------------------------------------
-- Server version	5.6.42.0

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
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `date` varchar(15) NOT NULL DEFAULT '',
  `time` time NOT NULL DEFAULT '00:00:00',
  `home_team` varchar(50) NOT NULL,
  `visitor_team` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `matchno` int(11) NOT NULL,
  `Winner` varchar(100) NOT NULL,
  PRIMARY KEY (`date`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES ('01/04/2019','00:00:08','Kings XI Punjab','Delhi Capitals','Mohali',13,'Kings XI Punjab\r'),('01/05/2019','00:00:08','Chennai Super Kings','Delhi Capitals','Chennai',50,'Chennai Super Kings\r'),('02/04/2019','00:00:08','Royal Challengers Bangalore','Rajasthan Royals','Jaipur',14,'Rajasthan Royals\r'),('02/05/2019','00:00:08','Mumbai Indians','Sunrisers Hyderabad','Mumbai',51,'Mumbai Indians\r'),('03/04/2019','00:00:08','Mumbai Indians','Chennai Super Kings','Mumbai',15,'Mumbai Indians\r'),('03/05/2019','00:00:08','Kings XI Punjab','Kolkata Knight Riders','Mohali',52,'Kolkata Knight Riders\r'),('04/04/2019','00:00:08','Delhi Capitals','Sunrisers Hyderabad','Delhi',16,'Sunrisers Hyderabad\r'),('04/05/2019','00:00:04','Rajasthan Royals','Delhi Capitals','Delhi',53,'Delhi Capitals\r'),('04/05/2019','00:00:08','Sunrisers Hyderabad','Royal Challengers Bangalore','Bengaluru',54,'Royal Challengers Bangalore\r'),('05/04/2019','00:00:08','Royal Challengers Bangalore','Kolkata Knight Riders','Bengaluru',17,'Kolkata Knight Riders\r'),('05/05/2019','00:00:04','Chennai Super Kings','Kings XI Punjab','Mohali',55,'Kings XI Punjab\r'),('05/05/2019','00:00:08','Kolkata Knight Riders','Mumbai Indians','Mumbai',56,'Mumbai Indians\r'),('06/04/2019','00:00:04','Chennai Super Kings','Kings XI Punjab','Chennai',18,'Chennai Super Kings\r'),('06/04/2019','00:00:08','Mumbai Indians','Sunrisers Hyderabad','Hyderabad',19,'Mumbai Indians\r'),('07/04/2019','00:00:04','Royal Challengers Bangalore','Delhi Capitals','Bengaluru',20,'Delhi Capitals\r'),('07/04/2019','00:00:08','Rajasthan Royals','Kolkata Knight Riders','Jaipur',21,'Kolkata Knight Riders\r'),('07/05/2019','00:00:08','Chennai Super Kings','Mumbai Indians','Chennai',57,'Mumbai Indians\r'),('08/04/2019','00:00:08','Sunrisers Hyderabad','Kings XI Punjab','Mohali',22,'Kings XI Punjab\r'),('08/05/2019','00:00:08','Sunrisers Hyderabad','Delhi Capitals','Visakhapatnam',58,'Delhi Capitals\r'),('09/04/2019','00:00:08','Kolkata Knight Riders','Chennai Super Kings','Chennai',23,'Chennai Super Kings\r'),('10/04/2019','00:00:08','Kings XI Punjab','Mumbai Indians','Mumbai',24,'Mumbai Indians\r'),('10/05/2019','00:00:08','Delhi Capitals','Chennai Super Kings','Visakhapatnam',59,'Chennai Super Kings\r'),('11/04/2019','00:00:08','Rajasthan Royals','Chennai Super Kings','Jaipur',25,'Chennai Super Kings\r'),('12/04/2019','00:00:08','Kolkata Knight Riders','Delhi Capitals','Kolkata',26,'Delhi Capitals\r'),('12/05/2019','00:00:08','Mumbai Indians','Chennai Super Kings','Hyderabad',60,'Mumbai Indians\r'),('13/04/2019','00:00:04','Mumbai Indians','Rajasthan Royals','Mumbai',27,'Rajasthan Royals\r'),('13/04/2019','00:00:08','Kings XI Punjab','Royal Challengers Bangalore','Mohali',28,'Royal Challengers Bangalore\r'),('14/04/2019','00:00:04','Kolkata Knight Riders','Chennai Super Kings','Kolkata',29,'Chennai Super Kings\r'),('14/04/2019','00:00:08','Delhi Capitals','Sunrisers Hyderabad','Hyderabad',30,'Delhi Capitals\r'),('15/04/2019','00:00:04','Royal Challengers Bangalore','Mumbai Indians','Mumbai',31,'Mumbai Indians\r'),('16/04/2019','00:00:08','Kings XI Punjab','Rajasthan Royals','Mohali',32,'Kings XI Punjab\r'),('17/04/2019','00:00:08','Chennai Super Kings','Sunrisers Hyderabad','Hyderabad',33,'Sunrisers Hyderabad\r'),('18/04/2019','00:00:08','Mumbai Indians','Delhi Capitals','Delhi',34,'Mumbai Indians\r'),('19/04/2019','00:00:08','Royal Challengers Bangalore','Kolkata Knight Riders','Kolkata',35,'Royal Challengers Bangalore\r'),('20/04/2019','00:00:04','Mumbai Indians','Rajasthan Royals','Jaipur',36,'Rajasthan Royals\r'),('20/04/2019','00:00:08','Kings XI Punjab','Delhi Capitals','Delhi',37,'Delhi Capitals\r'),('21/04/2019','00:00:08','Kolkata Knight Riders','Sunrisers Hyderabad','Hyderabad',38,'Sunrisers Hyderabad\r'),('22/04/2019','00:00:08','Rajasthan Royals','Delhi Capitals','Jaipur',40,'Delhi Capitals\r'),('23-03-2019','00:00:08','Royal Challengers Bangalore','Chennai Super Kings','Chennai',1,'Chennai Super Kings\r'),('23/04/2019','00:00:08','Sunrisers Hyderabad','Chennai Super Kings','Chennai',41,'Chennai Super Kings\r'),('24/03/2019','00:00:04','Sunrisers Hyderabad','Kolkata Knight Riders','Kolkata',2,'Kolkata Knight Riders\r'),('24/03/2019','00:00:08','Delhi Capitals','Mumbai Indians','Mumbai',3,'Delhi Capitals\r'),('24/04/2019','00:00:08','Royal Challengers Bangalore','Kings XI Punjab','Bengaluru',42,'Royal Challengers Bangalore\r'),('25/03/2019','00:00:08','Kings XI Punjab','Rajasthan Royals','Jaipur',4,'Kings XI Punjab\r'),('25/04/2019','00:00:08','Kolkata Knight Riders','Rajasthan Royals','Kolkata',43,'Rajasthan Royals\r'),('26/03/2019','00:00:08','Delhi Capitals','Chennai Super Kings','Delhi',5,'Chennai Super Kings\r'),('26/04/2019','00:00:08','Mumbai Indians','Chennai Super Kings','Chennai',44,'Mumbai Indians\r'),('27/03/2019','00:00:08','Kolkata Knight Riders','Kings XI Punjab','Kolkata',6,'Kolkata Knight Riders\r'),('27/04/2019','00:00:08','Sunrisers Hyderabad','Rajasthan Royals','Jaipur',45,'Rajasthan Royals\r'),('28/03/2019','00:00:08','Mumbai Indians','Royal Challengers Bangalore','Bengaluru',7,'Mumbai Indians\r'),('28/04/2019','00:00:04','Delhi Capitals','Royal Challengers Bangalore','Delhi',46,'Delhi Capitals\r'),('28/04/2019','00:00:08','Kolkata Knight Riders','Mumbai Indians','Kolkata',47,'Kolkata Knight Riders\r'),('29/03/2019','00:00:08','Rajasthan Royals','Sunrisers Hyderabad','Hyderabad',8,'Sunrisers Hyderabad\r'),('29/04/2019','00:00:08','Sunrisers Hyderabad','Kings XI Punjab','Hyderabad',48,'Sunrisers Hyderabad\r'),('30/03/2019','00:00:04','Mumbai Indians','Kings XI Punjab','Mohali',9,'Kings XI Punjab\r'),('30/03/2019','00:00:08','Kolkata Knight Riders','Delhi Capitals','Delhi',10,'Delhi Capitals\r'),('30/04/2019','00:00:08','Royal Challengers Bangalore','Rajasthan Royals','Bengaluru',49,'No result\r'),('31/03/2019','00:00:04','Sunrisers Hyderabad','Royal Challengers Bangalore','Hyderabad',11,'Sunrisers Hyderabad\r'),('31/03/2019','00:00:08','Chennai Super Kings','Rajasthan Royals','Chennai',12,'Chennai Super Kings\r');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL,
  `PersonId` int(11) DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (100,106,''),(104,110,'');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table1` (
  `Roll-Number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Roll-Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 17:26:19
