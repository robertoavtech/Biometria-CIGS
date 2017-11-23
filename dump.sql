-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: Biometria_CIGS
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `Evento`
--

DROP TABLE IF EXISTS `Evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Evento` (
  `id_tipo` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obs` varchar(255) DEFAULT NULL,
  `cod_missao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_tipo` (`id_tipo`),
  KEY `cod_missao` (`cod_missao`),
  CONSTRAINT `Evento_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `Evento_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `Tipo` (`id`),
  CONSTRAINT `Evento_ibfk_3` FOREIGN KEY (`cod_missao`) REFERENCES `missao` (`id_missao`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evento`
--

LOCK TABLES `Evento` WRITE;
/*!40000 ALTER TABLE `Evento` DISABLE KEYS */;
INSERT INTO `Evento` VALUES (1,'2017-11-08 16:17:45',3,1,NULL,NULL),(2,'2017-11-08 16:17:52',3,2,NULL,NULL),(1,'2017-11-08 16:31:22',5,3,NULL,NULL),(2,'2017-11-08 16:31:31',5,4,NULL,NULL),(1,'2017-11-08 16:33:24',6,5,NULL,NULL),(2,'2017-11-08 16:33:32',6,6,NULL,NULL),(1,'2017-11-08 16:33:49',3,7,NULL,NULL),(1,'2017-11-08 17:51:06',7,8,NULL,NULL),(2,'2017-11-08 17:51:10',7,9,NULL,NULL),(1,'2017-11-08 17:52:21',7,10,NULL,NULL),(2,'2017-11-08 17:52:39',7,11,NULL,NULL),(1,'2017-11-08 17:52:52',7,12,NULL,NULL),(2,'2017-11-08 17:53:34',7,13,NULL,NULL),(1,'2017-11-08 17:54:49',7,14,NULL,NULL),(2,'2017-11-08 17:55:04',3,15,NULL,NULL),(2,'2017-11-08 17:55:10',7,16,NULL,NULL),(1,'2017-11-08 17:55:36',7,17,NULL,NULL),(1,'2017-11-08 18:19:39',8,18,NULL,NULL),(2,'2017-11-08 18:19:57',8,19,NULL,NULL),(1,'2017-11-08 18:20:28',8,20,NULL,NULL),(1,'2017-11-09 11:09:43',3,21,NULL,NULL),(2,'2017-11-09 11:12:55',3,22,NULL,NULL),(1,'2017-11-09 11:13:49',3,23,NULL,NULL),(2,'2017-11-09 11:14:12',3,24,NULL,NULL),(1,'2017-11-09 11:14:17',3,25,NULL,NULL),(2,'2017-11-09 11:14:39',3,26,NULL,NULL),(1,'2017-11-09 11:14:43',3,27,NULL,NULL),(2,'2017-11-09 11:15:16',3,28,NULL,NULL),(1,'2017-11-09 11:19:36',3,29,NULL,NULL),(1,'2017-11-09 11:31:01',9,30,NULL,NULL),(2,'2017-11-09 11:31:34',9,31,NULL,NULL),(1,'2017-11-09 11:32:52',9,32,NULL,NULL),(2,'2017-11-09 11:45:45',3,33,NULL,NULL),(1,'2017-11-09 11:49:44',10,34,NULL,NULL),(2,'2017-11-09 11:50:40',10,35,NULL,NULL),(1,'2017-11-09 12:33:32',6,36,NULL,NULL),(1,'2017-11-09 12:54:36',3,37,NULL,NULL),(2,'2017-11-09 13:00:46',3,38,NULL,NULL),(1,'2017-11-09 13:01:20',3,39,NULL,NULL),(2,'2017-11-09 13:01:37',3,40,NULL,NULL),(1,'2017-11-09 13:02:06',3,41,NULL,NULL),(2,'2017-11-09 13:04:54',3,42,NULL,NULL),(1,'2017-11-09 13:05:41',3,43,NULL,NULL),(2,'2017-11-09 13:10:33',3,44,NULL,NULL),(1,'2017-11-09 13:11:17',3,45,NULL,NULL),(2,'2017-11-09 13:12:25',3,46,NULL,NULL),(1,'2017-11-09 13:12:50',3,47,NULL,NULL),(2,'2017-11-09 13:12:58',3,48,NULL,NULL),(1,'2017-11-09 13:13:19',3,49,NULL,NULL),(2,'2017-11-09 13:13:24',3,50,NULL,NULL),(1,'2017-11-09 13:30:10',11,51,NULL,NULL),(1,'2017-11-09 14:59:41',3,52,NULL,NULL),(2,'2017-11-09 15:00:46',3,53,NULL,NULL),(1,'2017-11-09 15:00:53',3,54,NULL,NULL),(2,'2017-11-09 15:02:51',3,55,NULL,NULL),(1,'2017-11-09 15:09:21',3,56,NULL,NULL),(2,'2017-11-09 15:42:00',3,57,NULL,NULL),(1,'2017-11-09 16:25:48',3,65,'bla',3),(2,'2017-11-09 16:26:01',3,66,'bla',6),(1,'2017-11-09 16:26:19',3,67,'',6),(2,'2017-11-09 16:26:47',3,68,'lalala',4),(1,'2017-11-09 16:29:40',3,69,'as',4),(2,'2017-11-09 16:33:30',3,70,'',6),(1,'2017-11-09 16:34:21',3,71,'bla',4),(2,'2017-11-09 16:38:10',3,72,'bla',5),(1,'2017-11-09 16:45:20',3,73,'',6),(2,'2017-11-09 16:45:26',3,74,'asd',4),(1,'2017-11-09 16:45:36',3,75,'asa',5),(2,'2017-11-09 17:24:55',3,76,'',6),(1,'2017-11-09 18:08:59',3,77,'HG',5),(2,'2017-11-09 18:09:11',3,78,'',4),(1,'2017-11-09 18:24:42',3,79,'213',6),(2,'2017-11-09 18:25:05',3,80,'batat',5),(1,'2017-11-10 09:56:43',1,81,'Caiooo',6),(1,'2017-11-10 09:57:44',12,82,'SELVAP',5),(2,'2017-11-10 10:19:16',12,83,'',6),(1,'2017-11-10 10:19:41',12,84,'',6),(2,'2017-11-10 10:22:04',12,85,'',3),(1,'2017-11-10 10:23:06',12,86,'',4),(2,'2017-11-10 10:30:52',12,87,'',5),(1,'2017-11-10 11:07:12',3,88,'Obs',3),(1,'2017-11-10 11:09:15',12,89,'obs',8),(1,'2017-11-10 11:17:44',13,90,'',6),(2,'2017-11-10 11:17:49',3,91,'asdas',6),(1,'2017-11-10 11:18:41',14,92,'Selva',8);
/*!40000 ALTER TABLE `Evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posto_Graduacao`
--

DROP TABLE IF EXISTS `Posto_Graduacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posto_Graduacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PG` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posto_Graduacao`
--

LOCK TABLES `Posto_Graduacao` WRITE;
/*!40000 ALTER TABLE `Posto_Graduacao` DISABLE KEYS */;
INSERT INTO `Posto_Graduacao` VALUES (1,'Outros'),(2,'SD'),(3,'CB'),(4,'SGT'),(5,'ST'),(6,'ASP'),(7,'TEN'),(8,'CAP'),(9,'MAJ'),(10,'TC'),(11,'CEL'),(12,'GEN'),(13,'MAL');
/*!40000 ALTER TABLE `Posto_Graduacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipo`
--

DROP TABLE IF EXISTS `Tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipo`
--

LOCK TABLES `Tipo` WRITE;
/*!40000 ALTER TABLE `Tipo` DISABLE KEYS */;
INSERT INTO `Tipo` VALUES (1,'Entrada'),(2,'Saida');
/*!40000 ALTER TABLE `Tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `Cod_PG` int(11) DEFAULT NULL,
  `OM` varchar(255) DEFAULT NULL,
  `Biometria` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'Caio Marcus',2,'CT',NULL),(2,'Andre Badenas',1,'IME',NULL),(3,'Matissek',2,'IME','ù\0Rwwwwwwwwwwwwwwwwwwwww:86454432110wwwww\0;:85554433300wwww\0\0\0:76566443012ww;86666431000ww\09876643210..ww\097876432110/ww\0:8876422222ww;9:86433222ww;:986543222ww;:876532223ww;:876521112ww\0966531111ww\0:76642111ww		\0;97642100ww\n\n	;8642/0/ww\n\08531000ww\r\n\n;74210//ww\r\n:6310..-ww	950.-,..ww	:4.,+,12www3,-,*/wwwww\Z.*.0)wwwwwww !!$)*-2wwwwwwwwwwwwwwwwwwwwww3z.Ö6MiQ++VÅ=S?ekDz#p&@[_S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!SÉ™´-146VabdoxxÅÑÜì•™¥∂π\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0	\r\r\r\n	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(4,'Sigmund',1,'IME','ù\0Dwwwwwwwwwwwwwwwwwwwwwww\0;854wwwwwwwwww	\0:74210wwwwwww\r\0853210wwwwww	9431100wwwww\r\n95310//0www84210...www\r\08300/---www	72/.-,-..ww\r92/.,+,--ww:1.-+*+,,ww\0/-+**+,,ww\Z\Z\Z/+*)**++ww&+)(())**ww &\'&\'()*)ww  !$%%\'()**ww  !!\"#$&(+,,,www !!!\"\"##%(+-...www\"####$$%\'*.0011www$$$$$$%\'),0355wwwww&&&&%&(+.1477wwwwww)*)))+.13567wwwwww+-,+-/13555wwwwwwww.--.03576wwwwwwwwwwwwwwwwwwwwwwCkBC=?HADs<3q?GPr?[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0:HUV]_hqÑ¨¥F\\dmuÇôµª\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(5,'Pedrola',3,'IME','ù\0T&wwwwwwwwwwwwwwwwwww;:977642223wwww\0:986532222wwww\n;976433221wwww\n	\09754332211www\n	;965332100www	\n	;863210///ww\r	\09631/.///ww\n:52/----.ww\r\n930-,++,,ww\n91.,***+*ww\Z--+)(()))ww \'+)&%%\'\'(ww\"))\'%#$%&\'ww!\" #\'\'%$\"\"\"$%ww !#%%\'(\'$ !#ww \"#%&\')+,, ww\"$&\'()*+.6\Zww$%&&\')**.5ww$&\'\'\')**/5\rww%\'((((*,06\rww\'()+,,/149	ww()/011237;	wwww431115:wwwwwwwwwwwwwwwwwwww;3.4<?nbj^VD,lDeA?J.U#7/H\".Ü)x\n	NU;r4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\"@HTZZadhqÉãééñ§•´ .0CMOVVjv~ì¶¨∞\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n	\0\r	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(6,'Narcelio',3,'IME','ù\0\\ wwwwwwwwwwwwwwwwwww\0:8754332211002www;;;865332211001/ww;\0;964211211//-ww:75311210///ww\0:86431100///ww\0;97542111012ww;97542110122ww\0:8532110122ww:8643100123ww:8742100/13ww;9742111002ww		\0:743100011ww\n:6431///0/ww\r\r\n:63100/../ww\r\n;61/..-,-/ww:40-,,++-.ww:1/,++**+,ww\Z&,,++++++,ww\Z%()***+++,ww \"&((()**+++ww\"$&\'(()*+++,,ww!$&\'()**,../..ww!!\"$&()+,,.02322wwwwwwwwwwwwwwwwwww@s<IiP\r99;:!\n#É:O1F0z9m;2DN)t$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03WZatåèò\n%&*..EKKQSX[jrÑó±∂∫\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\r\r\0\r\r\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(7,'Baden√£o',3,'IME','ù\0Z(wwwwwwwwwwwwwwwwwwww\r\r	\098ww\r	;98ww\r\r	\0:86ww\r\n	\0976ww\n;875ww\r\n	;865ww\r\r\n	\0:864ww\r\r	\0:864ww\r\r\r	\0:875ww\r\r\r	\0:8765ww\n\098754ww\n;87543ww\r:53210ww820.-,ww\r71-+**ww63.++*ww\n\n\n13.))(ww\n\n!!!\"ww\Z\Z\Zww\r\n\Zwwww\rww\rwwwwwwwwwwwwwwwwwwwP;C;I+EGf>@eLSÉd\"c:edzá}mv|vY`\\^XEI44dB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+JcnxÄÉÜâêìîñú†::@LeelnuÜÜãçéíìî†§¶≠¥∫\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\r\n\n\0	\0\n		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(8,'Matos',3,'4 CTA','ù\0I\"wwwwwwwwwwwwwwwwwwwwwww		wwwwwwww\n\n\n	\099wwwww\n\n\0;976www	\n\n\09754www\n;8643ww\r			\n	:8642ww\n	;97541ww\n			\0:97421ww\n	:86310ww\n\0:8630.ww\r\n;97530.ww\r;7642/.ww\r\n;7520-,ww\n\08640-,+ww\n	:630-+))ww930-*)\'\'ww\r\n6.+)(\'&www\'&%%%$$www\Z!\"\"\"www\Z !wwwwwwwwwww\Zwwwwwww\Zwwwwwwwwwwwwwwwwwwwwww9!#x!<*=K;nTVG]O:Q`2F!{O`9}MdpDR\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06@SYt~™ !!.58;DLNS\\]_foqs||ÑÖîñôß\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n	\0\0\0	\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(9,'Kelrison',4,'CIGS','ù\08wwwwwwwwwwwwwwwwwwwwwwwww9873wwwwwwwwww;98633wwwwwwww;975443wwwwwww;9764322wwwww	\09764221wwwww\n;853200.wwww\n831//.-,ww71.,**+*ww3.-*((((ww\Z\Z\Z%.--+)((\'ww\Z \"&+-..,*)(ww!#$&(+-/0.--+ww #$%&(*,.0//...ww!#&\'\'(*+-/0000./www&(()+,-/122231/www**+,--/13455654wwwww.///135787777wwwww01223468::98wwwwwww2545679;;;9wwwwwwwww6689:::;wwwwwwwwwwww9::::;wwwwwwwwwwwww:::;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwS!~krQC+7pEDlxcq8Tm\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0=ERc|õ 025>BTWX\\rãëë†°\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\r\r\n	\n\r\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(10,'Rondinelly',1,'CIGS','ù\0:wwwwwwwwwwwwwwwwwwwwwwwwww77w7wwwwwwwwwwwwwwww7556wwwwwwwwww:85564wwwwwwww:86654wwwwwwww:865543wwwwww:865543wwwww\0975544wwwww\09764323wwww	\0:853334www\n	\0:742221www\r\n\n9631/.-www\r\n	841/-++ww\n730.+)www\050-+)(www92-*)(\'www4.*)(%$www\r-+)(\'&$wwww\r\'(&%%%wwww\r	6+*((\'\'wwww\r\n60-++)wwwww\r\n	;740.-,wwwww\n\n:8421.wwwwwww\n\n\0:8442wwwwwwwwwwwwwwwwwwwwwwww1R@<AMZ<ME9SdWE;\Z(O,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\048yÉááúü®≠*PhssÅÉçñü†§Ø\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(11,'Maria Claudia',2,'IME','ù\0Kwwwwwwwwwwwwwwwwwwwwww\0:96544wwwwwwww	;964331wwwwww	;753110/wwwww\r	\063210//.www\n\07420//..www:6420.----ww\r	96000-,---ww95...---..ww;50.,+,,--ww50.+**+,,ww3/,*)**,,ww\Z3+)\'())++ww\Z0*(\'\'()*+ww\Z#(\'\'\'\'\'(*,ww #%&\'\'\')+,ww  !\"$&\'))*,-ww  !!\"#$&(**,./www\"\"\"\"\"#$&(*+,/11www$$$#$$%(*-.0244www&&&%%%\'),/2456wwww())(&\')+.14777wwwww,,++*,/14689wwww**w....014668:wwwwwwwwwwwwwwwwwwwww[?gJVe>,=>8?Ak46AK=i9R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?@FFKNX^gpuá∞]_dwwú∑æ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(12,'Ronaldo',8,'IME','ù\0@%wwwwwwwwwwwwwwwwwwwwwww;\0;8552//wwwwwwwww;;:8641/./wwwwwww\0\0:9630..//wwwww;84110///wwwww;84111/..wwww\097520/.../www;8531//....www;731/./.---ww;630.-./.-/ww\n	;830-,-//..ww\r\061.,+,----ww\r\r\n50-***+,,,ww\03,)(())*,,ww1*%$%&(+,-ww1*#!!$\'+++www0*\"&))*www!-2 $\'\'&www!\'0\Z!%$wwwww(-5\n$wwwww(049\nwwwwwww047:wwwwwwwww78\0	wwwwwwwwwwww:\nwwwwwwwwwwwwwwwwwwwwwwww)@J1IYI$WF*HT%M.I7;Lw_-?A]nC9d85o&E,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"Njt}áâãåéíò#+79<BKNOTWX]n~Éááãçïöúû\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\n\r\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(13,'Matissek',4,'IME','ù\0C%wwwwwwwwwwwwwwwwwwwwwww\0:865wwwwwwwww;8654wwwwwww\n;96432wwwww\r\r	:9632/.wwww\n98741/.wwww:86320.www\r\r\r	;85310-www\r\r\n95320.,+ww\n8420.,++ww\0830-,+**ww\072.+**))ww\n60+)()(\'ww5-(&&&%$ww	5)%$%%$#ww0\'##$$$#ww\Z\Z(&\"!\"\"##ww\Z\Z%%! !wwww\Z!#! wwww!## wwwww \"&&# wwwwwww   !$\'(\'%wwwwwwww!! !#%((\'\'wwwwwwwwww\"\"$&)(!wwwwwwwwwwwwwwwwwwwwwwwp],[cM9,HVD[G_Bg8<hb7PYF\"-eq?BbEN[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*Sehiru}ÉÖâèîù¢§©$&)8@CHLTgioqvÅÅâ¢©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),(14,'Campana',8,'4 CTA','ù\0U(wwwwwwwwwwwwwwwwwwwwww\0974430135wwwwww\0:86651134wwwwww;:886532333wwww;:9874322221www;\0\0:86442000/ww\0;\0\09865310/00ww\0;97653100/2ww;9763310/.0ww:863320/-/ww;964210//0ww\09642100//ww\n		;864100//-ww\r	;752/--,,+ww;630-,+))*ww;51.,+)(&$ww5/-+)(&$\"ww20-,+)\'%%#ww\Z$)***)\'%&\"ww!\"$&\'()(\'\'$!ww!\"#$%&&\'\'\'(& ww!\"$%&&\'\'\'&(-/\Zww\"#$&\'\'(()))*/:ww#%%&\')))**+,*6wwwwwwwwwwwwwwwwwww+O!h8a,0\';L?\nx$8Wd24XÜBmÇÉ dlQ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n:BGJLchhnáãåéñöû≠%%,-X_nÅäíïüß©Ø∞∑Ω\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\n\0\r\0\r	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('caio','81dc9bdb52d04dc20036dbd8313ed055',1),('matissek','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',0),('porco','mitre',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missao`
--

DROP TABLE IF EXISTS `missao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missao` (
  `id_missao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `duracao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_missao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missao`
--

LOCK TABLES `missao` WRITE;
/*!40000 ALTER TABLE `missao` DISABLE KEYS */;
INSERT INTO `missao` VALUES (3,'Mar√©',20),(4,'real',60),(5,'MEGA',120),(6,'CiOPEsp',120),(7,'Alvorada',130),(8,'SIEsp',200),(9,'deu certo',20);
/*!40000 ALTER TABLE `missao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-22 23:04:28
