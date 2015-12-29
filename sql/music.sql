-- MySQL dump 10.13 Distrib 5.6.24, for Win32 (x86)
--
-- Host: cs4111.c3bcpe6jtc0x.us-west-2.rds.amazonaws.com    Database: cs4111
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT,
  `albumname` varchar(100) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `recordname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`albumid`),
  KEY `recordname` (`recordname`),
  CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`recordname`) REFERENCES `RecordingLabel` (`name`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES (1,'Every Kingdom',2011,'Indie','Republic Records'),(2,'Teenage Dream',2010,'Pop','Capitol Records'),(3,'My Beautiful Dark Twisted Fantasy',2010,'Hip Hop','Roc-A-Fella Records'),(4,'Time Out',1959,'Jazz','Columbia Records'),(5,'All the Right Reasons',2005,'Rock','Roadrunner Records'),(6,'Girl',2014,'Funk','i Am Other'),(7,'El Radio',2009,'Indie','Absolutely Kosher Records'),(8,'Levels',2015,'Pop','Island Records'),(9,'Purpose',2015,'Pop','Def Jam Recordings'),(10,'Racine Carree',2013,'House','Vertigo Records');
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artist` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `bio` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES ('Ben Howard','Benjamin John \"Ben\" Howard (born 24 April 1987) is an English singer-songwriter. He self-released his debut EP Games in the Dark (2008) followed by two more EPs, These Waters (2009) and Old Pine (2010). He is currently signed to Island and Communion.'),('Chad Kroeger','Vocalist for Nickleback'),('Chris Garneau','Chris Garneau (Boston, Massachusetts, November 5, 1982) is an American singer-songwriter and musician. Garneau\'s sound combines elements of folk, Americana, pop, baroque, and carnival music.[original research?] Since releasing his debut album, Music for Tourists, Garneau has toured throughout the United States, Canada, Brazil, Europe, and Asia.'),('Daniel Addair','Drummer for Nickleback'),('Dave Brubeck','David Warren \"Dave\" Brubeck (December 6, 1920 – December 5, 2012) was an American jazz pianist and composer, considered to be one of the foremost exponents of cool jazz. He wrote a number of jazz standards, including \"In Your Own Sweet Way\" and \"The Duke.\" '),('Dave Brubeck Quartet','David Warren \"Dave\" Brubeck (December 6, 1920 – December 5, 2012) was an American jazz pianist and composer, considered to be one of the foremost exponents of cool jazz. He wrote a number of jazz standards, including \"In Your Own Sweet Way\" and \"The Duke.\" '),('Justin Beiber','Justin Drew Bieber (/\'bi?b?r/; born March 1, 1994)[2][3] is a Canadian singer and songwriter. Bieber\'s current manager, Scooter Braun, first discovered him through his YouTube videos in 2007.[4] Braun was impressed with the videos, which resulted in him contacting Bieber\'s mother, Patricia Mallette, about wanting to work with Bieber.'),('Kanye West','Kanye Omari West (/\'k??nje?/; born June 8, 1977) is an American rapper, record producer, and fashion designer.'),('Katy Perry','Katheryn Elizabeth \"Katy\" Hudson (born October 25, 1984), better known by her stage name Katy Perry, is an American singer, songwriter and actress. After singing in church during her childhood, she pursued a career in gospel music as a teenager.'),('Mike Kroeger','Bassist for Nickleback'),('Nick Jonas','Nicholas Jerry \"Nick\" Jonas (born September 16, 1992)[2] is an American singer, songwriter and actor, best known as one of the Jonas Brothers, a pop rock band he formed with his brothers Kevin and Joe. '),('Nicki Minaj','Onika Tanya Maraj (born December 8, 1982),[1][2][3] professionally known by her stage name Nicki Minaj (/m?\'n???/), is a Trinidadian-born American[1][4] rapper, singer and songwriter. Born in Saint James, Trinidad and Tobago and raised in South Jamaica, Queens, New York, Minaj earned public attention after releasing three mixtapes between 2007–09. '),('Nickleback','Nickelback is a Canadian rock band formed in 1995 in Hanna, Alberta. The band is composed of guitarist and lead vocalist Chad Kroeger, guitarist, keyboardist and backing vocalist Ryan Peake, bassist Mike Kroeger, and drummer Daniel Adair. '),('Pharell','Pharrell Lanscilo Williams[1] (born April 5, 1973), also known by his mononym Pharrell (/f?\'r?l/), is an American singer, songwriter, rapper, record producer and fashion designer. Williams and Chad Hugo make up the record production duo the Neptunes, producing soul, hip hop and R&B music.'),('Ryan Peake','Guitarist for Nickleback'),('Stromae','Paul Van Haver (born 12 March 1985), better known by his stage name Stromae [st??maj], is a Belgian singer, rapper and songwriter. He is originally from Laeken, in Brussels.[1] He established himself in both the hip hop and electronic music genres.');
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Band`
--

DROP TABLE IF EXISTS `Band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Band` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `numppl` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  CONSTRAINT `Band_ibfk_1` FOREIGN KEY (`name`) REFERENCES `Artist` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Band`
--

LOCK TABLES `Band` WRITE;
/*!40000 ALTER TABLE `Band` DISABLE KEYS */;
INSERT INTO `Band` VALUES ('Dave Brubeck Quartet',4),('Nickleback',4);
/*!40000 ALTER TABLE `Band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Jackie Li','1995-07-14'),(2,'Vikas Arun','1994-09-23'),(3,'Risa Paredes-Juarez','1994-11-30'),(4,'Samir Canning','1995-08-30'),(5,'Allison Peng','1995-05-14'),(6,'Michael Pinkham','1994-01-07'),(7,'Gregory Momjian','1995-06-12'),(8,'Jackie Olwell','1994-04-07'),(9,'Chris Ahn','1994-09-12'),(10,'Sebastian Ortega','1995-03-25');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HasSigned`
--

DROP TABLE IF EXISTS `HasSigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HasSigned` (
  `recordname` varchar(100) DEFAULT NULL,
  `artistname` varchar(100) NOT NULL DEFAULT '',
  `since` date DEFAULT NULL,
  PRIMARY KEY (`artistname`),
  KEY `recordname` (`recordname`),
  CONSTRAINT `HasSigned_ibfk_1` FOREIGN KEY (`artistname`) REFERENCES `Artist` (`name`) ON DELETE CASCADE,
  CONSTRAINT `HasSigned_ibfk_2` FOREIGN KEY (`recordname`) REFERENCES `RecordingLabel` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HasSigned`
--

LOCK TABLES `HasSigned` WRITE;
/*!40000 ALTER TABLE `HasSigned` DISABLE KEYS */;
INSERT INTO `HasSigned` VALUES ('Columbia Records','Dave Brubeck','1959-03-15'),('Columbia Records','Dave Brubeck Quartet','1957-01-01'),('Def Jam Recordings','Justin Beiber','2011-01-01'),('Roc-A-Fella Records','Kanye West','2012-06-02'),('Roadrunner Records','Nickleback','2003-02-13'),('i Am Other','Pharell','0000-00-00'),('Vertigo Records','Stromae','2012-05-25');
/*!40000 ALTER TABLE `HasSigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IsOn`
--

DROP TABLE IF EXISTS `IsOn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IsOn` (
  `songid` int(11) NOT NULL,
  `albumid` int(11) NOT NULL,
  PRIMARY KEY (`songid`,`albumid`),
  KEY `albumid` (`albumid`),
  CONSTRAINT `IsOn_ibfk_1` FOREIGN KEY (`songid`) REFERENCES `Song` (`songid`) ON DELETE CASCADE,
  CONSTRAINT `IsOn_ibfk_2` FOREIGN KEY (`albumid`) REFERENCES `Album` (`albumid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IsOn`
--

LOCK TABLES `IsOn` WRITE;
/*!40000 ALTER TABLE `IsOn` DISABLE KEYS */;
INSERT INTO `IsOn` VALUES (1,1),(3,2),(2,3),(5,4),(11,4),(4,5),(12,5),(7,6),(8,7),(6,8),(9,9),(10,10);
/*!40000 ALTER TABLE `IsOn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IsPartOf`
--

DROP TABLE IF EXISTS `IsPartOf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IsPartOf` (
  `musicianname` varchar(100) DEFAULT NULL,
  `bandname` varchar(100) DEFAULT NULL,
  KEY `musicianname` (`musicianname`),
  KEY `bandname` (`bandname`),
  CONSTRAINT `IsPartOf_ibfk_1` FOREIGN KEY (`musicianname`) REFERENCES `Musician` (`name`) ON DELETE CASCADE,
  CONSTRAINT `IsPartOf_ibfk_2` FOREIGN KEY (`bandname`) REFERENCES `Band` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IsPartOf`
--

LOCK TABLES `IsPartOf` WRITE;
/*!40000 ALTER TABLE `IsPartOf` DISABLE KEYS */;
INSERT INTO `IsPartOf` VALUES ('Dave Brubeck','Dave Brubeck Quartet'),('Mike Kroeger','Nickleback'),('Chad Kroeger','Nickleback'),('Ryan Peake','Nickleback'),('Daniel Addair','Nickleback');
/*!40000 ALTER TABLE `IsPartOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MusicVideo`
--

DROP TABLE IF EXISTS `MusicVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MusicVideo` (
  `url` varchar(200) NOT NULL DEFAULT '',
  `minutes` int(11) DEFAULT NULL,
  `seconds` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `songid` int(11) NOT NULL,
  PRIMARY KEY (`url`),
  UNIQUE KEY `songid` (`songid`),
  CONSTRAINT `MusicVideo_ibfk_1` FOREIGN KEY (`songid`) REFERENCES `Song` (`songid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MusicVideo`
--

LOCK TABLES `MusicVideo` WRITE;
/*!40000 ALTER TABLE `MusicVideo` DISABLE KEYS */;
INSERT INTO `MusicVideo` VALUES ('https://www.youtube.com/watch?v=98WtmW-lfeE',3,49,163145368,3),('https://www.youtube.com/watch?v=DK_0jXPuIr0',4,57,155851014,9),('https://www.youtube.com/watch?v=i9mYgkBBs_s',4,45,1422169,1),('https://www.youtube.com/watch?v=oiKj0Z_Xnjc',3,52,292325096,10),('https://www.youtube.com/watch?v=Ona42jz8w0k',6,22,83277722,2),('https://www.youtube.com/watch?v=PHdU5sHigYQ',5,14,2216357,5),('https://www.youtube.com/watch?v=QJWrrm6H09A',4,9,11619,8),('https://www.youtube.com/watch?v=T3rXdeOvhNE',4,21,18842868,4),('https://www.youtube.com/watch?v=taViGR5VT1U',2,59,9307827,6),('https://www.youtube.com/watch?v=UfGMj10wOzg',3,28,57042424,7);
/*!40000 ALTER TABLE `MusicVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Musician`
--

DROP TABLE IF EXISTS `Musician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Musician` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `instrument` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`),
  CONSTRAINT `Musician_ibfk_1` FOREIGN KEY (`name`) REFERENCES `Artist` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Musician`
--

LOCK TABLES `Musician` WRITE;
/*!40000 ALTER TABLE `Musician` DISABLE KEYS */;
INSERT INTO `Musician` VALUES ('Ben Howard','Guitar'),('Chad Kroeger',NULL),('Chris Garneau','Piano'),('Daniel Addair','Drums'),('Dave Brubeck','Drums'),('Justin Beiber',NULL),('Kanye West',NULL),('Katy Perry',NULL),('Mike Kroeger','Bass'),('Nick Jonas',NULL),('Nicki Minaj',NULL),('Pharell',NULL),('Ryan Peake','Guitar'),('Stromae',NULL);
/*!40000 ALTER TABLE `Musician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rates`
--

DROP TABLE IF EXISTS `Rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rates` (
  `customerid` int(11) NOT NULL DEFAULT '0',
  `songid` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerid`,`songid`),
  KEY `songid` (`songid`),
  CONSTRAINT `Rates_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `Customer` (`customerid`) ON DELETE CASCADE,
  CONSTRAINT `Rates_ibfk_2` FOREIGN KEY (`songid`) REFERENCES `Song` (`songid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rates`
--

LOCK TABLES `Rates` WRITE;
/*!40000 ALTER TABLE `Rates` DISABLE KEYS */;
INSERT INTO `Rates` VALUES (1,7,1),(1,10,2),(2,5,4),(2,7,3),(3,4,5),(3,5,2),(4,6,4),(4,9,1),(5,2,4),(6,3,4),(7,1,2),(7,2,3),(7,5,4),(7,10,5),(8,6,3),(9,2,2),(9,6,5),(9,7,3),(9,9,5),(10,8,3);
/*!40000 ALTER TABLE `Rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecordingLabel`
--

DROP TABLE IF EXISTS `RecordingLabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RecordingLabel` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(300) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecordingLabel`
--

LOCK TABLES `RecordingLabel` WRITE;
/*!40000 ALTER TABLE `RecordingLabel` DISABLE KEYS */;
INSERT INTO `RecordingLabel` VALUES ('Absolutely Kosher Records','496 Hollywood Blvd Los Angeles, CA','www.absolutelykosher.com'),('Capitol Records','304 Park Ave S New York, NY','www.capitolrecords.com'),('Columbia Records','51 W 52nd St New York, NY','www.columbiarecords.com'),('Def Jam Recordings','329 W 46th St New York, NY','www.defjam.com'),('i Am Other','996 Columbus Ave New York, NY','www.iamother.com'),('Island Records','1792 Brighton Dr London, UK','www.islandrecords.com'),('Republic Records','729 Broadway New York, NY','www.republicrecords.com'),('Roadrunner Records','1209 Avenue of the Americas New York, NY','www.roadrunnerrecords.com'),('Roc-A-Fella Records','212 Amsterdam Ave New York, NY','www.RocAFella.com'),('Vertigo Records','942 Danbury Ln London, UK','vertigorecords.co.uk');
/*!40000 ALTER TABLE `RecordingLabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Song`
--

DROP TABLE IF EXISTS `Song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Song` (
  `songid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `seconds` int(11) DEFAULT NULL,
  `trackno` int(11) DEFAULT NULL,
  PRIMARY KEY (`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Song`
--

LOCK TABLES `Song` WRITE;
/*!40000 ALTER TABLE `Song` DISABLE KEYS */;
INSERT INTO `Song` VALUES (1,'Everything',4,46,4),(2,'Monster',6,18,6),(3,'Teenage Dream',3,47,1),(4,'Photograph',4,21,1),(5,'Take 5',5,28,3),(6,'Levels',2,47,1),(7,'Come Get it Bae',3,21,1),(8,'Leaving Song',3,23,6),(9,'What Do You Mean',4,16,2),(10,'Papaoutai',3,53,1),(11,'Twelve Things',4,72,2),(12,'Goodbye',3,59,2);
/*!40000 ALTER TABLE `Song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SungBy`
--

DROP TABLE IF EXISTS `SungBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SungBy` (
  `songid` int(11) NOT NULL,
  `artistname` varchar(100) NOT NULL,
  PRIMARY KEY (`songid`,`artistname`),
  KEY `artistname` (`artistname`),
  CONSTRAINT `SungBy_ibfk_1` FOREIGN KEY (`songid`) REFERENCES `Song` (`songid`) ON DELETE CASCADE,
  CONSTRAINT `SungBy_ibfk_2` FOREIGN KEY (`artistname`) REFERENCES `Artist` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SungBy`
--

LOCK TABLES `SungBy` WRITE;
/*!40000 ALTER TABLE `SungBy` DISABLE KEYS */;
INSERT INTO `SungBy` VALUES (1,'Ben Howard'),(12,'Chad Kroeger'),(8,'Chris Garneau'),(12,'Daniel Addair'),(11,'Dave Brubeck'),(5,'Dave Brubeck Quartet'),(9,'Justin Beiber'),(2,'Kanye West'),(3,'Katy Perry'),(12,'Mike Kroeger'),(6,'Nick Jonas'),(2,'Nicki Minaj'),(4,'Nickleback'),(7,'Pharell'),(12,'Ryan Peake'),(10,'Stromae');
/*!40000 ALTER TABLE `SungBy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-14 20:58:33

