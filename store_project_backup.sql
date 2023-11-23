-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: localhost    Database: store_project
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `area_list`
--

DROP TABLE IF EXISTS `area_list`;
/*!50001 DROP VIEW IF EXISTS `area_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `area_list` AS SELECT 
 1 AS `city`,
 1 AS `region`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `brief_order_info`
--

DROP TABLE IF EXISTS `brief_order_info`;
/*!50001 DROP VIEW IF EXISTS `brief_order_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `brief_order_info` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `product_id`,
 1 AS `product_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `city_list`
--

DROP TABLE IF EXISTS `city_list`;
/*!50001 DROP VIEW IF EXISTS `city_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `city_list` AS SELECT 
 1 AS `city`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segment` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('AA-10480','Andrew Allen','Consumer'),('AG-10270','Alejandro Grove','Consumer'),('AR-10405','Allen Rosenblatt','Corporate'),('BH-11710','Brosina Hoffman','Consumer'),('BM-11140','Becky Martin','Consumer'),('BM-11785','Bryan Mills','Consumer'),('BN-11470','Brad Norvell','Corporate'),('CG-12520','Claire Gute','Consumer'),('CK-12205','Chloris Kastensmidt','Consumer'),('DV-13045','Darrin Van Huff','Corporate'),('EB-13870','Emily Burns','Consumer'),('EH-13945','Eric Hoffmann','Consumer'),('EM-13825','Elizabeth Moffitt','Corporate'),('EM-13960','Eric Murdock','Consumer'),('ES-14080','Erin Smith','Corporate'),('GH-14485','Gene Hale','Corporate'),('HG-14965','Henry Goldwyn','Corporate'),('HP-14815','Harold Pawlan','Home Office'),('HR-14830','Harold Ryan','Corporate'),('IM-15070','Irene Maddox','Consumer'),('JE-16165','Justin Ellison','Corporate'),('JH-15910','Jonathan Howell','Consumer'),('JL-15235','Janet Lee','Consumer'),('JS-15595','Jill Stevenson','Corporate'),('KB-16585','Ken Black','Corporate'),('KM-16660','Khloe Miller','Consumer'),('LC-16930','Linda Cazamias','Corporate'),('LH-16900','Lena Hernandez','Consumer'),('LH-16901','Lena Hernandez','Consumer'),('MA-17560','Matt Abelman','Home Office'),('MS-17710','Maurice Satty','Consumer'),('NP-18700','Nora Preis','Consumer'),('ON-18715','Odella Nelson','Corporate'),('PK-19075','Pete Kriz','Consumer'),('PO-18865','Patrick ODonnell','Consumer'),('PS-19045','Penelope Sewall','Home Office'),('RA-19885','Ruben Ausman','Corporate'),('RD-19900','Ruben Dartt','Consumer'),('SF-20065','Sandra Flanagan','Consumer'),('SH-20635','Stefanie Holloman','Corporate'),('SN-20710','Steve Nguyen','Home Office'),('SO-20335','Sean ODonnell','Consumer'),('SS-20140','Saphhira Shifley','Corporate'),('SW-20455','Shaun Weien','Consumer'),('TB-21520','Tracy Blumstein','Consumer'),('TN-21040','Tanja Norvell','Home Office'),('VG-21790','Vivek Gonzalez','Consumer'),('VS-21820','Vivek Sundaresam','Consumer'),('ZD-21925','Zuschuss Donatelli','Consumer');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` date DEFAULT NULL,
  `ship_mode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('CA-2014-105893','2014-11-11','Standard Class','PK-19075','OFF-ST-10004186'),('CA-2014-115812','2014-06-09','Standard Class','BH-11710','TEC-PH-10002033'),('CA-2014-124247','2014-12-16','Standard Class','SH-20635','FUR-CH-10001854'),('CA-2014-126277','2014-09-13','Second Class','LH-16901','OFF-BI-10004022'),('CA-2014-142510','2014-12-22','Standard Class','NP-18700','OFF-PA-10001289'),('CA-2014-143336','2014-08-27','Second Class','ZD-21925','OFF-BI-10002215'),('CA-2014-146703','2014-10-20','Second Class','PO-18865','OFF-ST-10001713'),('CA-2014-167164','2014-05-13','Second Class','AG-10270','OFF-ST-10000107'),('CA-2015-102806','2015-05-21','Standard Class','HG-14965','OFF-BI-10001597'),('CA-2015-104115','2015-06-12','Standard Class','JH-15910','TEC-PH-10002844'),('CA-2015-106320','2015-09-25','Standard Class','EB-13870','FUR-TA-10000577'),('CA-2015-117415','2015-12-27','Standard Class','SN-20710','TEC-PH-10000486'),('CA-2015-134257','2015-03-16','Second Class','MS-17710','OFF-EN-10003845'),('CA-2015-137925','2015-11-30','Standard Class','JL-15235','OFF-PA-10002659'),('CA-2015-140557','2015-09-07','Standard Class','TN-21040','TEC-AC-10002402'),('CA-2016-101343','2016-07-17','Standard Class','RA-19885','OFF-ST-10003479'),('CA-2016-105473','2016-04-16','Second Class','BM-11785','OFF-SU-10003567'),('CA-2016-117590','2016-12-08','First Class','GH-14485','FUR-FU-10003664'),('CA-2016-118255','2016-03-11','First Class','ON-18715','TEC-AC-10000171'),('CA-2016-121755','2016-01-16','Second Class','EH-13945','OFF-BI-10001634'),('CA-2016-137330','2016-12-09','Standard Class','KB-16585','OFF-AP-10001492'),('CA-2016-138688','2016-06-12','Second Class','DV-13045','OFF-LA-10000240'),('CA-2016-140046','2016-07-28','Standard Class','KM-16660','OFF-LA-10000305'),('CA-2016-140249','2016-09-27','Standard Class','SW-20455','TEC-PH-10002584'),('CA-2016-140382','2016-06-23','Second Class','RD-19900','OFF-PA-10001019'),('CA-2016-152156','2016-11-08','Second Class','CG-12520','FUR-BO-10001798'),('CA-2016-161389','2016-12-05','Standard Class','IM-15070','OFF-BI-10003656'),('CA-2016-169194','2016-06-20','Standard Class','LH-16900','TEC-AC-10002167'),('CA-2017-107727','2017-10-19','Second Class','MA-17560','OFF-PA-10000249'),('CA-2017-109211','2017-04-04','Standard Class','PS-19045','OFF-EN-10001532'),('CA-2017-111220','2017-09-02','Standard Class','JS-15595','OFF-ST-10003994'),('CA-2017-114412','2017-04-15','Standard Class','AA-10480','OFF-PA-10002365'),('CA-2017-120999','2017-09-10','Standard Class','LC-16930','TEC-PH-10004093'),('CA-2017-121706','2017-02-26','Standard Class','BM-11140','OFF-AP-10003287'),('CA-2017-122028','2017-08-18','Standard Class','CK-12205','OFF-BI-10004817'),('CA-2017-139619','2017-09-19','Standard Class','ES-14080','OFF-ST-10003282'),('CA-2017-149468','2017-05-20','Same Day','AR-10405','OFF-BI-10002225'),('CA-2017-164756','2017-09-18','Standard Class','SS-20140','FUR-FU-10002963'),('CA-2017-168942','2017-08-01','Second Class','EM-13960','OFF-ST-10004340'),('US-2015-108966','2015-10-11','Standard Class','SO-20335','FUR-TA-10000577'),('US-2015-118983','2015-11-22','Standard Class','HP-14815','OFF-BI-10000756'),('US-2015-150630','2015-09-17','Standard Class','TB-21520','OFF-AR-10001683'),('US-2015-165512','2015-05-24','Second Class','VS-21820','OFF-BI-10001249'),('US-2017-115301','2017-07-29','Standard Class','VG-21790','FUR-BO-10004709'),('US-2017-128398','2017-05-02','Second Class','EM-13825','TEC-AC-10001714'),('US-2017-135013','2017-07-24','Same Day','HR-14830','TEC-CO-10001449'),('US-2017-135503','2017-12-10','Standard Class','JE-16165','FUR-FU-10002364'),('US-2017-149006','2017-12-06','Second Class','BN-11470','OFF-ST-10003221'),('US-2017-156909','2017-07-16','Second Class','SF-20065','FUR-CH-10002774');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `product_category` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_category` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('FUR-BO-10001798','Furniture','Bookcases','Bush Somerset Bookcase'),('FUR-BO-10004709','Furniture','Bookcases','Bush Westfield Bookcases - Cherry Finish'),('FUR-CH-10001854','Furniture','Chairs','Office Star Matrix Back Chair '),('FUR-CH-10002774','Furniture','Chairs','Global Deluxe Stacking Chair - Gray'),('FUR-FU-10002364','Furniture','Furnishings','Eldon Desk Accessories - Oak'),('FUR-FU-10002963','Furniture','Furnishings','Master Caster Door Stop - Gray'),('FUR-FU-10003664','Furniture','Furnishings','Electrix Swing Arm Lamp - Black'),('FUR-TA-10000577','Furniture','Tables','Bretford CR4500 Rectangular Table'),('FUR-TA-10000597','Furniture','Tables','Bretford CR4500 Rectangular Table'),('OFF-AP-10001492','Office Supplies','Appliances','Acco Six-Outlet Power Strip'),('OFF-AP-10003287','Office Supplies','Appliances','Tripp Lite TLP810NET Broadband Surge'),('OFF-AR-10001683','Office Supplies','Art','Lumber Crayons'),('OFF-BI-10000756','Office Supplies','Binders','Storex DuraTech Plastic Binders'),('OFF-BI-10001249','Office Supplies','Binders','Avery Heavy-Duty EZD View Binder '),('OFF-BI-10001597','Office Supplies','Binders','Wilson Jones Ledger-Size - 2\" Blue'),('OFF-BI-10001634','Office Supplies','Binders','Wilson Jones Active Use Binders'),('OFF-BI-10002215','Office Supplies','Binders','Wilson Jones Hanging View Binder'),('OFF-BI-10002225','Office Supplies','Binders','Square Ring Data Binders Covers'),('OFF-BI-10003656','Office Supplies','Binders','Fellowes PB200 Binding Machine'),('OFF-BI-10004022','Office Supplies','Binders','Acco Suede Grain Ring Binder'),('OFF-BI-10004817','Office Supplies','Binders','GBC Personal VeloBind Strips'),('OFF-EN-10001532','Office Supplies','Envelopes','Brown Kraft Recycled Envelopes'),('OFF-EN-10003845','Office Supplies','Envelopes','Colored Envelopes'),('OFF-LA-10000240','Office Supplies','Labels','Address Labels for Typewriters'),('OFF-LA-10000305','Office Supplies','Labels','Avery 495'),('OFF-PA-10000249','Office Supplies','Paper','Easy-Staple Paper'),('OFF-PA-10001019','Office Supplies','Paper','Xerox 1884'),('OFF-PA-10001289','Office Supplies','Paper','White Computer Printout Paper by Universal'),('OFF-PA-10002365','Office Supplies','Paper','Xerox 1967'),('OFF-PA-10002659','Office Supplies','Paper','Avoid Verbal Orders Carbonless Minifold Book'),('OFF-ST-10000107','Office Supplies','Storage','Fellowes Super Stor/Drawer'),('OFF-ST-10001713','Office Supplies','Storage','Gould Plastics 9-Pocket Panel Bin - Black'),('OFF-ST-10003221','Office Supplies','Storage','Staple Magnet'),('OFF-ST-10003282','Office Supplies','Storage','Advantus 10-Drawer Smoke Drawers'),('OFF-ST-10003479','Office Supplies','Storage','Eldon Base for Storage Shelf - Platinum'),('OFF-ST-10003994','Office Supplies','Storage','Belkin Center-Weighted Shelf - Gray'),('OFF-ST-10004186','Office Supplies','Storage','Stur-D-Stor Shelving 5-Shelf'),('OFF-ST-10004340','Office Supplies','Storage','Fellowes Mobile File Cart - Black'),('OFF-SU-10003567','Office Supplies','Supplies','Stiletto Hand Letter Openers'),('TEC-AC-10000171','Technology','Accessories','Verbatim Single Layer Recordable Disc'),('TEC-AC-10001714','Technology','Accessories','Logitech MX Performance Wireless Mouse'),('TEC-AC-10002167','Technology','Accessories','Imation 8GB Micro USB 2.0 Flash Drive'),('TEC-AC-10002402','Technology','Accessories','Razer Kraken PRO Over Ear Headset'),('TEC-CO-10001449','Technology','Copiers','Hewlett Packard LaserJet 3310 Copier'),('TEC-PH-10000486','Technology','Phones','Plantronics HL10 Handset Lifter'),('TEC-PH-10002033','Technology','Phones','Konftel 250 Conference Phone - Charcoal'),('TEC-PH-10002584','Technology','Phones','Samsung Galaxy S4'),('TEC-PH-10002844','Technology','Phones','Speck Products Candyshell Flip Case'),('TEC-PH-10004093','Technology','Phones','Panasonic Kx-TS550');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `region_list`
--

DROP TABLE IF EXISTS `region_list`;
/*!50001 DROP VIEW IF EXISTS `region_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `region_list` AS SELECT 
 1 AS `region`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `order_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales` decimal(10,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `discount` decimal(4,2) DEFAULT NULL,
  `profit` decimal(10,2) DEFAULT NULL,
  `product_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('CA-2014-105893','PK-19075',665.88,6,NULL,13.32,'OFF-ST-10004186'),('CA-2014-115812','BH-11710',911.42,4,0.20,68.36,'TEC-PH-10002033'),('CA-2014-124247','SH-20635',1403.92,5,0.20,70.20,'FUR-CH-10001854'),('CA-2014-126277','LH-16900',2.50,3,0.70,-2.00,'OFF-BI-10004022'),('CA-2014-142510','NP-18700',124.03,4,0.20,44.96,'OFF-PA-10001289'),('CA-2014-143336','ZD-21925',22.72,4,0.20,7.38,'OFF-BI-10002215'),('CA-2014-146703','PO-18865',211.96,4,NULL,8.48,'OFF-ST-10001713'),('CA-2014-167164','AG-10270',55.50,2,NULL,9.99,'OFF-ST-10000107'),('CA-2015-102806','HG-14965',24.59,2,0.70,-18.03,'OFF-BI-10001597'),('CA-2015-104115','JH-15910',55.98,2,0.20,4.20,'TEC-PH-10002844'),('CA-2015-106320','EB-13870',1044.63,3,NULL,240.26,'FUR-TA-10000577'),('CA-2015-117415','SN-20710',371.17,4,0.20,41.76,'TEC-PH-10000486'),('CA-2015-134257','MS-17710',7.38,2,NULL,3.39,'OFF-EN-10003845'),('CA-2015-137925','JL-15235',23.66,7,NULL,10.88,'OFF-PA-10002659'),('CA-2015-140557','TN-21040',559.93,7,NULL,167.98,'TEC-AC-10002402'),('CA-2016-101343','RA-19885',77.88,2,NULL,3.89,'OFF-ST-10003479'),('CA-2016-105473','BM-11785',28.80,3,NULL,0.86,'OFF-SU-10003567'),('CA-2016-117590','GH-14485',190.92,5,0.60,-147.96,'FUR-FU-10003664'),('CA-2016-118255','ON-18715',45.98,2,NULL,19.77,'TEC-AC-10000171'),('CA-2016-121755','EH-13945',11.65,2,0.20,4.22,'OFF-BI-10001634'),('CA-2016-137330','KB-16585',60.34,7,NULL,15.69,'OFF-AP-10001492'),('CA-2016-138688','DV-13045',14.62,2,NULL,6.87,'OFF-LA-10000240'),('CA-2016-140046','KM-16660',18.90,3,NULL,8.69,'OFF-LA-10000305'),('CA-2016-140249','SW-20455',1001.58,2,0.20,125.20,'TEC-PH-10002584'),('CA-2016-152156','CG-12520',261.96,2,NULL,41.91,'FUR-BO-10001798'),('CA-2016-161389','IM-15070',407.98,3,0.20,132.59,'OFF-BI-10003656'),('CA-2016-169194','LH-16900',45.00,3,NULL,4.95,'TEC-AC-10002167'),('CA-2017-107727','MA-17560',29.47,3,0.20,9.95,'OFF-PA-10000249'),('CA-2017-109211','PS-19045',16.98,1,NULL,8.49,'OFF-EN-10001532'),('CA-2017-111220','JS-15595',235.92,5,0.20,-44.24,'OFF-ST-10003994'),('CA-2017-114412','AA-10480',15.55,3,0.20,5.44,'OFF-PA-10002365'),('CA-2017-120999','LC-16930',147.17,4,0.20,16.56,'TEC-PH-10004093'),('CA-2017-121706','BM-11140',356.79,7,NULL,99.90,'OFF-AP-10003287'),('CA-2017-122028','CK-12205',10.78,3,0.70,-7.91,'OFF-BI-10004817'),('CA-2017-139619','ES-14080',95.62,2,0.20,9.56,'OFF-ST-10003282'),('CA-2017-149468','AR-10405',41.28,2,NULL,19.81,'OFF-BI-10002225'),('CA-2017-164756','SS-20140',20.32,4,NULL,6.91,'FUR-FU-10002963'),('CA-2017-168942','EM-13960',186.54,3,NULL,50.37,'OFF-ST-10004340'),('US-2015-108966','SO-20335',957.58,5,0.45,-383.03,'FUR-TA-10000577'),('US-2015-118983','HP-14815',2.54,3,0.80,-3.82,'OFF-BI-10000756'),('US-2015-150630','TB-21520',15.76,2,0.20,3.55,'OFF-AR-10001683'),('US-2015-165512','VS-21820',7.66,6,0.80,-13.02,'OFF-BI-10001249'),('US-2017-115301','VG-21790',115.96,2,NULL,25.51,'FUR-BO-10004709'),('US-2017-128398','EM-13825',159.56,4,NULL,59.04,'TEC-AC-10001714'),('US-2017-135013','HR-14830',2399.96,5,0.20,839.99,'TEC-CO-10001449'),('US-2017-135503','JE-16165',14.76,2,NULL,4.28,'FUR-FU-10002364'),('US-2017-149006','BN-11470',10.68,1,NULL,2.88,'OFF-ST-10003221'),('US-2017-156909','SF-20065',71.37,2,0.30,-1.02,'FUR-CH-10002774');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `order_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_date` date NOT NULL,
  `ship_mode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `order_id` (`order_id`),
  CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES ('CA-2016-152156','2016-11-11','Second Class','United States','Henderson','Kentucky','South'),('CA-2016-138688','2016-06-16','Second Class','United States','Los Angeles','California','West'),('US-2015-108966','2015-10-18','Standard Class','United States','Fort Lauderdale','Florida','South'),('CA-2014-115812','2014-06-14','Standard Class','United States','Los Angeles','California','West'),('CA-2017-114412','2017-04-20','Standard Class','United States','Concord','North Carolina','South'),('CA-2016-161389','2016-12-10','Standard Class','United States','Seattle','Washington','West'),('US-2015-118983','2015-11-26','Standard Class','United States','Fort Worth','Texas','Central'),('CA-2014-105893','2014-11-18','Standard Class','United States','Madison','Wisconsin','Central'),('CA-2014-167164','2014-05-15','Second Class','United States','West Jordan','Utah','West'),('CA-2014-143336','2014-09-01','Second Class','United States','San Francisco','California','West'),('CA-2016-137330','2016-12-13','Standard Class','United States','Fremont','Nebraska','Central'),('US-2017-156909','2017-07-18','Second Class','United States','Philadelphia','Pennsylvania','East'),('CA-2015-106320','2015-09-30','Standard Class','United States','Orem','Utah','West'),('CA-2016-121755','2016-01-20','Second Class','United States','Los Angeles','California','West'),('US-2015-150630','2015-09-21','Standard Class','United States','Philadelphia','Pennsylvania','East'),('CA-2017-107727','2017-10-23','Second Class','United States','Houston','Texas','Central'),('CA-2016-117590','2016-12-10','First Class','United States','Richardson','Texas','Central'),('CA-2015-117415','2015-12-31','Standard Class','United States','Houston','Texas','Central'),('CA-2017-120999','2017-09-15','Standard Class','United States','Naperville','Illinois','Central'),('CA-2016-101343','2016-07-22','Standard Class','United States','Los Angeles','California','West'),('CA-2017-139619','2017-09-23','Standard Class','United States','Melbourne','Florida','South'),('CA-2016-118255','2016-03-13','First Class','United States','Eagan','Minnesota','Central'),('CA-2014-146703','2014-10-25','Second Class','United States','Westland','Michigan','Central'),('CA-2016-169194','2016-06-25','Standard Class','United States','Dover','Delaware','East'),('CA-2017-164756','2017-09-22','Standard Class','United States','Columbus','Georgia','South'),('CA-2017-122028','2017-08-25','Standard Class','United States','Lakewood','Ohio','East'),('US-2015-165512','2015-05-26','Second Class','United States','Naperville','Illinois','Central'),('CA-2015-140557','2015-09-11','Standard Class','United States','New York City','New York','East'),('US-2017-135013','2017-07-24','Same Day','United States','Huntington Beach','California','West'),('CA-2017-111220','2017-09-08','Standard Class','United States','Chicago','Illinois','Central'),('US-2017-149006','2017-12-08','Second Class','United States','Brentwood','California','West'),('CA-2017-149468','2017-05-20','Same Day','United States','Trenton','Michigan','Central'),('CA-2016-140249','2016-10-03','Standard Class','United States','Seattle','Washington','West'),('US-2017-135503','2017-12-15','Standard Class','United States','North Charleston','South Carolina','South'),('CA-2014-126277','2014-09-18','Second Class','United States','Columbus','Ohio','East'),('US-2017-115301','2017-08-02','Standard Class','United States','Seattle','Washington','West'),('CA-2017-168942','2017-08-05','Second Class','United States','San Francisco','California','West'),('US-2017-128398','2017-05-05','Second Class','United States','Los Angeles','California','West'),('CA-2015-104115','2015-06-16','Standard Class','United States','West Palm Beach','Florida','South'),('CA-2014-142510','2014-12-29','Standard Class','United States','Chicago','Illinois','Central'),('CA-2014-124247','2014-12-21','Standard Class','United States','Sacramento','California','West'),('CA-2016-105473','2016-04-18','Second Class','United States','Seattle','Washington','West'),('CA-2015-102806','2015-05-28','Standard Class','United States','Philadelphia','Pennsylvania','East'),('CA-2017-121706','2017-03-02','Standard Class','United States','Santa Barbara','California','West'),('CA-2017-109211','2017-04-10','Standard Class','United States','New York City','New York','East'),('CA-2015-134257','2015-03-19','Second Class','United States','Auburn','Alabama','South'),('CA-2015-137925','2015-12-04','Standard Class','United States','New York City','New York','East'),('CA-2016-140046','2016-08-03','Standard Class','United States','Los Angeles','California','West'),('CA-2016-140382','2016-06-25','Second Class','United States','San Francisco','California','West');
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `area_list`
--

/*!50001 DROP VIEW IF EXISTS `area_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `area_list` AS select distinct `shipments`.`city` AS `city`,`shipments`.`region` AS `region` from `shipments` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `brief_order_info`
--

/*!50001 DROP VIEW IF EXISTS `brief_order_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `brief_order_info` AS select `c`.`customer_id` AS `customer_id`,`c`.`customer_name` AS `customer_name`,`o`.`order_id` AS `order_id`,`o`.`order_date` AS `order_date`,`p`.`product_id` AS `product_id`,`p`.`product_name` AS `product_name` from ((`customers` `c` join `orders` `o` on((`c`.`customer_id` = `o`.`customer_id`))) join `products` `p` on((`o`.`product_id` = `p`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `city_list`
--

/*!50001 DROP VIEW IF EXISTS `city_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `city_list` AS select distinct `shipments`.`city` AS `city` from `shipments` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `region_list`
--

/*!50001 DROP VIEW IF EXISTS `region_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `region_list` AS select distinct `shipments`.`region` AS `region` from `shipments` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 14:49:42
