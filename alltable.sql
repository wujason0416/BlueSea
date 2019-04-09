-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: 127.0.0.1    Database: emoncms
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_config`
--

DROP TABLE IF EXISTS `app_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_config` (
  `userid` int(11) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_config`
--

LOCK TABLES `app_config` WRITE;
/*!40000 ALTER TABLE `app_config` DISABLE KEYS */;
INSERT INTO `app_config` VALUES (1,'{}');
/*!40000 ALTER TABLE `app_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `content` text,
  `height` int(11) DEFAULT '600',
  `name` varchar(30) DEFAULT 'no name',
  `alias` varchar(20) DEFAULT '',
  `description` varchar(255) DEFAULT 'no description',
  `main` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `showdescription` tinyint(1) DEFAULT '0',
  `backgroundcolor` varchar(6) DEFAULT 'EDF7FC',
  `gridsize` tinyint(1) DEFAULT '20',
  `feedmode` varchar(8) DEFAULT 'feedid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (1,1,'<div id=\"2\" class=\"thermometer\" style=\"position: absolute; margin: 0px; top: 40px; left: 40px; width: 120px; height: 200px;\" titlethermometer=\"室外溫度\" colourlabel=\"000000\" font=\"9\" fstyle=\"2\" fweight=\"0\" feedid=\"1\" min=\"\" max=\"\" scale=\"\" units_dropdown=\"°C\" units=\"°C\" unitend=\"0\" decimals=\"-1\" offset=\"\" graduations=\"0\" gradnumber=\"\" displayminmax=\"0\" minvaluefeed=\"1\" maxvaluefeed=\"1\" colourminmax=\"000000\" timeout=\"\" errormessagedisplayed=\"\"><canvas id=\"can-2\" width=\"120\" height=\"200\"></canvas><div id=\"can-2-tooltip-1\"></div><div id=\"can-2-tooltip-2\"></div></div><div id=\"3\" class=\"thermometer\" style=\"position: absolute; margin: 0px; top: 40px; left: 180px; width: 120px; height: 200px;\" titlethermometer=\"室內溫度\" colourlabel=\"000000\" font=\"9\" fstyle=\"2\" fweight=\"0\" feedid=\"4\" min=\"\" max=\"\" scale=\"\" units_dropdown=\"°C\" units=\"°C\" unitend=\"0\" decimals=\"-1\" offset=\"\" graduations=\"0\" gradnumber=\"\" displayminmax=\"0\" minvaluefeed=\"1\" maxvaluefeed=\"1\" colourminmax=\"000000\" timeout=\"\" errormessagedisplayed=\"\"><canvas id=\"can-3\" width=\"120\" height=\"200\"></canvas><div id=\"can-3-tooltip-1\"></div><div id=\"can-3-tooltip-2\"></div></div><div id=\"4\" class=\"thermometer\" style=\"position: absolute; margin: 0px; top: 40px; left: 340px; width: 100px; height: 200px;\" titlethermometer=\"Walk-In\" colourlabel=\"000000\" font=\"9\" fstyle=\"2\" fweight=\"0\" feedid=\"3\" min=\"\" max=\"\" scale=\"\" units_dropdown=\"°C\" units=\"°C\" unitend=\"0\" decimals=\"-1\" offset=\"\" graduations=\"0\" gradnumber=\"\" displayminmax=\"0\" minvaluefeed=\"1\" maxvaluefeed=\"1\" colourminmax=\"000000\" timeout=\"\" errormessagedisplayed=\"\"><canvas id=\"can-4\" width=\"100\" height=\"200\"></canvas><div id=\"can-4-tooltip-1\"></div><div id=\"can-4-tooltip-2\"></div></div><div id=\"5\" class=\"thermometer\" style=\"position: absolute; margin: 0px; top: 40px; left: 480px; width: 100px; height: 200px;\" titlethermometer=\"開放櫃\" colourlabel=\"000000\" font=\"9\" fstyle=\"2\" fweight=\"0\" feedid=\"5\" min=\"\" max=\"\" scale=\"\" units_dropdown=\"°C\" units=\"°C\" unitend=\"0\" decimals=\"-1\" offset=\"\" graduations=\"0\" gradnumber=\"\" displayminmax=\"0\" minvaluefeed=\"1\" maxvaluefeed=\"1\" colourminmax=\"000000\" timeout=\"\" errormessagedisplayed=\"\"><canvas id=\"can-5\" width=\"100\" height=\"200\"></canvas><div id=\"can-5-tooltip-1\"></div><div id=\"can-5-tooltip-2\"></div></div><div id=\"6\" class=\"thermometer\" style=\"position: absolute; margin: 0px; top: 40px; left: 600px; width: 100px; height: 200px;\" titlethermometer=\"三門冷凍櫃\" colourlabel=\"000000\" font=\"9\" fstyle=\"2\" fweight=\"0\" feedid=\"3\" min=\"\" max=\"\" scale=\"\" units_dropdown=\"°C\" units=\"°C\" unitend=\"0\" decimals=\"-1\" offset=\"\" graduations=\"0\" gradnumber=\"\" displayminmax=\"0\" minvaluefeed=\"1\" maxvaluefeed=\"1\" colourminmax=\"000000\" timeout=\"\" errormessagedisplayed=\"\"><canvas id=\"can-6\" width=\"100\" height=\"200\"></canvas><div id=\"can-6-tooltip-1\"></div><div id=\"can-6-tooltip-2\"></div></div><div id=\"8\" class=\"multigraph\" style=\"position: absolute; margin: 0px; top: 260px; left: 40px; width: 680px; height: 480px;\" mid=\"2\"><iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"/emoncms/vis/multigraph?embed=1&mid=2\" style=\"width: 680px; height: 480px;\"></iframe></div><div id=\"7\" class=\"multigraph\" style=\"position: absolute; margin: 0px; top: 260px; left: 700px; width: 620px; height: 480px;\" mid=\"1\"><iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"/emoncms/vis/multigraph?embed=1&mid=1\" style=\"width: 620px; height: 480px;\"></iframe></div>',740,'萊爾富藍海門市','','no description',0,0,0,0,'ffffff',20,'feedid'),(2,1,'<div id=\"1\" class=\"realtime\" style=\"position: absolute; margin: 0px; top: 40px; left: 40px; width: 460px; height: 300px;\" feedid=\"6\" colour=\"000000\" initzoom=\"5\"><iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"/emoncms/vis/realtime?embed=1&feedid=6&colour=000000&initzoom=5\" style=\"width: 460px; height: 300px;\"></iframe></div>',340,'no name','','no description',0,0,0,0,'EDF7FC',20,'feedid');
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `nodeid` text,
  `name` text,
  `description` text,
  `type` varchar(32) DEFAULT NULL,
  `devicekey` varchar(64) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (7,1,'HiLife_BlueSea_DS18B20','HiLife_BlueSea_DS18B20','','','',NULL),(22,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_175','HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_175','','','',NULL),(21,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_174','HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_174','','','',NULL),(20,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_173','HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_173','','','',NULL),(17,1,'HiLife_BlueSea_TCM3001_ID_393331353432470800470029','HiLife_BlueSea_TCM3001_ID_393331353432470800470029','','','',NULL),(18,1,'HiLife_BlueSea_TCM3001_ID_38303436343247010028003E','HiLife_BlueSea_TCM3001_ID_38303436343247010028003E','','','',NULL),(19,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_172','HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_172','','','',NULL),(16,1,'HiLife_BlueSea_TCM3001_Defog','HiLife_BlueSea_TCM3001_Defog','','','',NULL),(23,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_176','HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_176','','','',NULL);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `userid` int(11) DEFAULT NULL,
  `tag` text,
  `time` int(10) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `datatype` int(11) NOT NULL,
  `public` tinyint(1) DEFAULT '0',
  `size` int(11) DEFAULT NULL,
  `engine` int(11) NOT NULL DEFAULT '0',
  `server` int(11) NOT NULL DEFAULT '0',
  `processList` text,
  `unit` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
INSERT INTO `feeds` VALUES (1,'室外溫度',1,'溫度',NULL,NULL,1,0,48,5,0,NULL,'°C'),(2,'五門Walk-In溫度',1,'溫度',NULL,NULL,1,0,52,5,0,NULL,'°C'),(3,'三門冷凍櫃溫度',1,'溫度',NULL,NULL,1,0,52,5,0,NULL,'°C'),(4,'室內溫度',1,'溫度',NULL,NULL,1,0,52,5,0,NULL,'°C'),(5,'開放櫃溫度',1,'溫度',NULL,NULL,1,0,52,5,0,NULL,'°C'),(6,'三門冷凍櫃門框及電熱玻璃 R相電流',1,'藍海門市',NULL,NULL,1,0,52,5,0,NULL,'A'),(7,'三門冷凍櫃: R相電流',1,'藍海門市',NULL,NULL,1,0,24,5,0,NULL,'A'),(17,'二號冷氣:PhB_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(8,'三門冷凍櫃: S相電流',1,'藍海門市',NULL,NULL,1,0,48,5,0,NULL,'A'),(9,'三門冷凍櫃: T相電流',1,'藍海門市',NULL,NULL,1,0,48,5,0,NULL,'A'),(10,'三門冷凍櫃: 總電流',1,'藍海門市',NULL,NULL,1,0,48,5,0,NULL,'A'),(16,'二號冷氣:PhA_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(11,'台電錶端:PhA_Irms',1,'藍海門市',NULL,NULL,1,0,40,5,0,NULL,'A'),(12,'台電錶端: Total Current',1,'藍海門市',NULL,NULL,1,0,40,5,0,NULL,'A'),(13,'一號冷氣:PhA_Irms',1,'藍海門市',NULL,NULL,1,0,36,5,0,NULL,'A'),(14,'一號冷氣:PhB_Irms',1,'藍海門市',NULL,NULL,1,0,36,5,0,NULL,'A'),(15,'一號冷氣:PhC_Irms',1,'藍海門市',NULL,NULL,1,0,36,5,0,NULL,'A'),(18,'二號冷氣:PhC_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(19,'Walk-In:PhA_Irms',1,'藍海門市',NULL,NULL,1,1,28,5,0,NULL,'A'),(20,'Walk-In:PhB_Irms',1,'藍海門市',NULL,NULL,1,1,28,5,0,NULL,'A'),(21,'Walk-In:PhC_Irms',1,'藍海門市',NULL,NULL,1,1,28,5,0,NULL,'A'),(22,'Open櫃:PhA_Irms',1,'藍海門市',NULL,NULL,1,1,28,5,0,NULL,'A'),(23,'Open櫃:PhB_Irms',1,'藍海門市',NULL,NULL,1,1,28,5,0,NULL,'A'),(24,'Open櫃:PhC_Irms',1,'藍海門市',NULL,NULL,1,1,28,5,0,NULL,'A'),(25,'三號冷氣:PhA_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(26,'三號冷氣:PhB_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(27,'三號冷氣:PhC_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(28,'台電錶端:PhB_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(29,'台電錶端:PhC_Irms',1,'藍海門市',NULL,NULL,1,0,28,5,0,NULL,'A'),(30,'一號冷氣: Total Current',1,'藍海門市',NULL,NULL,1,0,24,5,0,NULL,'A'),(31,'二號冷氣: Total Current',1,'藍海門市',NULL,NULL,1,0,24,5,0,NULL,'VA'),(32,'三號冷氣: Total Current',1,'藍海門市',NULL,NULL,1,0,24,5,0,NULL,'A'),(33,'Open櫃: Total Current',1,'藍海門市',NULL,NULL,1,1,24,5,0,NULL,'A'),(34,'Walk-In: Total Current',1,'藍海門市',NULL,NULL,1,1,24,5,0,NULL,'A'),(35,'三門冷凍櫃門框及電熱玻璃: kWhD',1,'累計',NULL,NULL,2,1,9,2,0,NULL,'kWhd'),(36,'台電錶端: kWhD',1,'累計',NULL,NULL,2,0,9,2,0,NULL,'kWhd'),(37,'一號冷氣: kWhD',1,'累計',NULL,NULL,2,0,9,2,0,NULL,'kWhd'),(38,'二號冷氣: kWhD',1,'累計',NULL,NULL,2,0,9,2,0,NULL,'kWhd'),(39,'三號冷氣: kWhD',1,'累計',NULL,NULL,2,0,9,2,0,NULL,'kWhd'),(40,'Open櫃: kWhD',1,'累計',NULL,NULL,2,1,9,2,0,NULL,'kWhd'),(41,'Walk-In: kWhD',1,'累計',NULL,NULL,2,1,0,2,0,NULL,'kWhd');
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph`
--

DROP TABLE IF EXISTS `graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT '0',
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph`
--

LOCK TABLES `graph` WRITE;
/*!40000 ALTER TABLE `graph` DISABLE KEYS */;
INSERT INTO `graph` VALUES (2,1,0,'{\"name\":\"Temperature Chart\",\"start\":1552800770000,\"end\":1552808700000,\"interval\":10,\"fixinterval\":false,\"floatingtime\":0,\"yaxismin\":\"auto\",\"yaxismax\":\"auto\",\"showmissing\":false,\"showtag\":true,\"showlegend\":true,\"showcsv\":0,\"csvtimeformat\":\"datestr\",\"csvnullvalues\":\"show\",\"csvheaders\":\"showNameTag\",\"feedlist\":[{\"id\":\"1\",\"name\":\"\",\"tag\":\"\",\"yaxis\":1,\"fill\":true,\"scale\":\"1\",\"delta\":false,\"getaverage\":false,\"dp\":1,\"plottype\":\"lines\",\"postprocessed\":true},{\"id\":\"2\",\"name\":\"Walk-In\",\"tag\":\"\",\"yaxis\":1,\"fill\":true,\"scale\":\"1\",\"delta\":false,\"getaverage\":false,\"dp\":1,\"plottype\":\"lines\",\"postprocessed\":true},{\"id\":\"3\",\"name\":\"\",\"tag\":\"\",\"yaxis\":1,\"fill\":0,\"scale\":\"1\",\"delta\":false,\"getaverage\":false,\"dp\":1,\"plottype\":\"lines\",\"postprocessed\":true},{\"id\":\"4\",\"name\":\"\",\"tag\":\"\",\"yaxis\":1,\"fill\":0,\"scale\":\"1\",\"delta\":false,\"getaverage\":false,\"dp\":1,\"plottype\":\"lines\",\"postprocessed\":true},{\"id\":\"5\",\"name\":\"\",\"tag\":\"\",\"yaxis\":1,\"fill\":0,\"scale\":\"1\",\"delta\":false,\"getaverage\":false,\"dp\":1,\"plottype\":\"lines\",\"postprocessed\":true}],\"id\":\"2\"}');
/*!40000 ALTER TABLE `graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `input`
--

DROP TABLE IF EXISTS `input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `nodeid` text,
  `name` text,
  `description` text,
  `processList` text,
  `time` int(10) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=567 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `input`
--

LOCK TABLES `input` WRITE;
/*!40000 ALTER TABLE `input` DISABLE KEYS */;
INSERT INTO `input` VALUES (546,1,'HiLife_BlueSea_TCM3001_ID_393331353432470800470029','PhA_Irms ','','1:11,11:547,11:548,1:12,2:220,5:36',NULL,NULL),(566,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_176','PhC_Irms','','1:21',NULL,NULL),(565,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_176','PhB_Irms','','1:20',NULL,NULL),(563,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_175','PhC_Irms','','1:24',NULL,NULL),(562,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_175','PhB_Irms','','1:23',NULL,NULL),(556,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_173','PhB_Irms','','1:17',NULL,NULL),(557,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_173','PhC_Irms','','1:18',NULL,NULL),(559,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_174','PhB_Irms','','1:26',NULL,NULL),(560,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_174','PhC_Irms','','1:27',NULL,NULL),(194,1,'HiLife_BlueSea_DS18B20','4d139a7','Ourdoor','1:1',NULL,NULL),(195,1,'HiLife_BlueSea_DS18B20','4d0fa41','Lowe Temperature Refrigerator','1:2',NULL,NULL),(196,1,'HiLife_BlueSea_DS18B20','52695a','Combination Refrigerator','1:3',NULL,NULL),(197,1,'HiLife_BlueSea_DS18B20','4d0f14d','Indoor','1:4',NULL,NULL),(198,1,'HiLife_BlueSea_DS18B20','4d1460a','OPEN Cabine','1:5',NULL,NULL),(547,1,'HiLife_BlueSea_TCM3001_ID_393331353432470800470029','PhB_Irms','','1:28',NULL,NULL),(548,1,'HiLife_BlueSea_TCM3001_ID_393331353432470800470029','PhC_Irms','','1:29',NULL,NULL),(554,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_172','PhC_Irms','','1:15',NULL,NULL),(553,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_172','PhB_Irms','','1:14',NULL,NULL),(552,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_172','PhA_Irms ','','1:13,11:553,11:554,1:30,2:220,5:37',NULL,NULL),(555,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_173','PhA_Irms ','','1:16,11:556,11:557,1:31,2:220,5:38',NULL,NULL),(558,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_174','PhA_Irms ','','1:25,11:559,11:560,1:32,2:220,5:39',NULL,NULL),(561,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_175','PhA_Irms ','','1:22,11:562,11:563,1:33,2:220,5:40',NULL,NULL),(564,1,'HiLife_BlueSea_TCM3003_ID_393331353432470800470029_SubID_176','PhA_Irms ','','1:19,11:565,11:566,1:34,2:220,5:41',NULL,NULL),(551,1,'HiLife_BlueSea_TCM3001_ID_38303436343247010028003E','PhC_Irms','','1:9',NULL,NULL),(549,1,'HiLife_BlueSea_TCM3001_ID_38303436343247010028003E','PhA_Irms ','','1:7,11:550,11:551,1:10',NULL,NULL),(550,1,'HiLife_BlueSea_TCM3001_ID_38303436343247010028003E','PhB_Irms','','1:8',NULL,NULL),(503,1,'HiLife_BlueSea_TCM3001_Defog','PhA_Irms','','1:6,2:220,5:35',NULL,NULL);
/*!40000 ALTER TABLE `input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multigraph`
--

DROP TABLE IF EXISTS `multigraph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multigraph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `userid` int(11) DEFAULT NULL,
  `feedlist` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multigraph`
--

LOCK TABLES `multigraph` WRITE;
/*!40000 ALTER TABLE `multigraph` DISABLE KEYS */;
INSERT INTO `multigraph` VALUES (1,'每日功耗計算',1,'[{\"id\":\"36\",\"tag\":\"累計\",\"name\":\"台電錶端: kWhD\",\"datatype\":\"2\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true,\"lineColour\":\"ff8080\",\"timeWindow\":604800000,\"detail\":\"advanced\"},{\"id\":\"35\",\"tag\":\"累計\",\"name\":\"三門冷凍櫃門框及電熱玻璃: kWhD\",\"datatype\":\"2\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true,\"stacked\":true,\"barwidth\":0.9},{\"id\":\"40\",\"tag\":\"累計\",\"name\":\"Open櫃: kWhD\",\"datatype\":\"2\",\"left\":true,\"right\":false,\"fill\":false,\"end\":0,\"skipmissing\":true,\"stacked\":true,\"barwidth\":0.9},{\"id\":\"41\",\"tag\":\"累計\",\"name\":\"Walk-In: kWhD\",\"datatype\":\"2\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true,\"stacked\":true,\"barwidth\":0.9},{\"id\":\"37\",\"tag\":\"累計\",\"name\":\"一號冷氣: kWhD\",\"datatype\":\"2\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true,\"stacked\":true,\"barwidth\":0.9},{\"id\":\"38\",\"tag\":\"累計\",\"name\":\"二號冷氣: kWhD\",\"datatype\":\"2\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true,\"stacked\":true,\"barwidth\":0.9},{\"id\":\"39\",\"tag\":\"累計\",\"name\":\"三號冷氣: kWhD\",\"datatype\":\"2\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true,\"stacked\":true,\"barwidth\":0.9}]'),(2,'溫度曲線圖',1,'[{\"id\":\"1\",\"tag\":\"溫度\",\"name\":\"室外溫度\",\"datatype\":\"1\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true,\"timeWindow\":13105092.091064453},{\"id\":\"4\",\"tag\":\"溫度\",\"name\":\"室內溫度\",\"datatype\":\"1\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true},{\"id\":\"2\",\"tag\":\"溫度\",\"name\":\"五門Walk-In溫度\",\"datatype\":\"1\",\"left\":true,\"right\":false,\"fill\":true,\"end\":0,\"skipmissing\":true},{\"id\":\"3\",\"tag\":\"溫度\",\"name\":\"三門冷凍櫃溫度\",\"datatype\":\"1\",\"left\":true,\"right\":false,\"fill\":false,\"end\":0,\"skipmissing\":true},{\"id\":\"5\",\"tag\":\"溫度\",\"name\":\"開放櫃溫度\",\"datatype\":\"1\",\"left\":true,\"right\":false,\"fill\":false,\"end\":0,\"skipmissing\":true}]');
/*!40000 ALTER TABLE `multigraph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postprocess`
--

DROP TABLE IF EXISTS `postprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postprocess` (
  `userid` int(11) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postprocess`
--

LOCK TABLES `postprocess` WRITE;
/*!40000 ALTER TABLE `postprocess` DISABLE KEYS */;
INSERT INTO `postprocess` VALUES (1,'[]');
/*!40000 ALTER TABLE `postprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rememberme`
--

DROP TABLE IF EXISTS `rememberme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rememberme` (
  `userid` int(11) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `persistentToken` varchar(40) DEFAULT NULL,
  `expire` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rememberme`
--

LOCK TABLES `rememberme` WRITE;
/*!40000 ALTER TABLE `rememberme` DISABLE KEYS */;
/*!40000 ALTER TABLE `rememberme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `expression` text,
  `timezone` varchar(64) DEFAULT 'UTC',
  `public` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup`
--

DROP TABLE IF EXISTS `setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup` (
  `state` varchar(32) DEFAULT 'unconfigured',
  `wifi` varchar(32) DEFAULT 'unconfigured'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup`
--

LOCK TABLES `setup` WRITE;
/*!40000 ALTER TABLE `setup` DISABLE KEYS */;
INSERT INTO `setup` VALUES ('unconfigured','client');
/*!40000 ALTER TABLE `setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync`
--

DROP TABLE IF EXISTS `sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync` (
  `userid` int(11) DEFAULT NULL,
  `host` varchar(64) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `apikey_read` varchar(64) DEFAULT NULL,
  `apikey_write` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync`
--

LOCK TABLES `sync` WRITE;
/*!40000 ALTER TABLE `sync` DISABLE KEYS */;
INSERT INTO `sync` VALUES (1,'emoncms.org','wujason0416','e60e4780146e1b3321a12f269527232f','57cb33a4c7ff4223eba4b020c11d52fa');
/*!40000 ALTER TABLE `sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `apikey_write` varchar(64) DEFAULT NULL,
  `apikey_read` varchar(64) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL,
  `gravatar` varchar(30) DEFAULT '',
  `name` varchar(30) DEFAULT '',
  `location` varchar(30) DEFAULT '',
  `timezone` varchar(64) DEFAULT 'UTC',
  `language` varchar(5) DEFAULT 'en_EN',
  `bio` text,
  `tags` text,
  `startingpage` varchar(64) DEFAULT 'feed/list',
  `email_verified` int(11) DEFAULT '0',
  `verification_key` varchar(64) DEFAULT '',
  `preferences` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'wujason0416','wujason0416@gmail.com','5a51c5db6cdd42025e840010e3ce831d0521a7e40290308c99d92ca0748eaf5c','ef21fd5e7bc08cb34ce715849b10af3a','d6fe53fca4e1d2c46f7c48cb05bf103c','14f6c5b4e78a058d2e5a24dbe422963b',NULL,1,'','','','Asia/Taipei','en_EN','','','input/view',0,'',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-09 22:49:10
