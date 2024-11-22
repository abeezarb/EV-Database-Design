-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: evs
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Temporary view structure for view `avgelectricrangebymake`
--

DROP TABLE IF EXISTS `avgelectricrangebymake`;
/*!50001 DROP VIEW IF EXISTS `avgelectricrangebymake`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avgelectricrangebymake` AS SELECT 
 1 AS `Make`,
 1 AS `AvgElectricRange`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cleanvehicleseligible`
--

DROP TABLE IF EXISTS `cleanvehicleseligible`;
/*!50001 DROP VIEW IF EXISTS `cleanvehicleseligible`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cleanvehicleseligible` AS SELECT 
 1 AS `TotalCleanVehicles`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `county`
--

DROP TABLE IF EXISTS `county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `county` (
  `CountyID` int NOT NULL AUTO_INCREMENT,
  `CountyName` varchar(100) DEFAULT NULL,
  `StateID` int DEFAULT NULL,
  PRIMARY KEY (`CountyID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `county`
--

LOCK TABLES `county` WRITE;
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` VALUES (1,'Snohomish',1),(2,'Skagit',1),(3,'King',1),(4,'Kitsap',1),(5,'Clark',2),(6,'Thurston',1),(7,'Stevens',1),(8,'Yakima',1),(9,'Island',1),(10,'Spokane',1),(11,'St. Clair',3),(12,'Lake',3),(13,'Newport News',4),(14,'Saratoga',5),(15,'Grant',1),(16,'Clallam',1),(17,'Monroe',6),(18,'Jackson',7);
/*!40000 ALTER TABLE `county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographics`
--

DROP TABLE IF EXISTS `demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demographics` (
  `OwnerID` int NOT NULL,
  `Race` varchar(50) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `CityID` int DEFAULT NULL,
  `StateID` int DEFAULT NULL,
  PRIMARY KEY (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics`
--

LOCK TABLES `demographics` WRITE;
/*!40000 ALTER TABLE `demographics` DISABLE KEYS */;
/*!40000 ALTER TABLE `demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electricvehicles`
--

DROP TABLE IF EXISTS `electricvehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electricvehicles` (
  `VehicleID` int NOT NULL AUTO_INCREMENT,
  `ModelYear` int DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `EVType` varchar(50) DEFAULT NULL,
  `CAFVEligibility` varchar(50) DEFAULT NULL,
  `ElectricRange` decimal(6,2) DEFAULT NULL,
  `BaseMSRP` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electricvehicles`
--

LOCK TABLES `electricvehicles` WRITE;
/*!40000 ALTER TABLE `electricvehicles` DISABLE KEYS */;
INSERT INTO `electricvehicles` VALUES (1,2013,'FORD','C-MAX','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',19.00,0.00),(2,2014,'FORD','C-MAX','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',19.00,0.00),(3,2022,'FORD','F-150','Battery Electric Vehicle (BEV)','Eligibility unknown as battery range has not been ',0.00,0.00),(4,2017,'CHEVROLET','BOLT EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',238.00,0.00),(5,2020,'CHEVROLET','BOLT EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',259.00,0.00),(6,2020,'CHEVROLET','BOLT EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',259.00,0.00),(7,2013,'CHEVROLET','VOLT','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',38.00,0.00),(8,2016,'CHEVROLET','VOLT','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',53.00,0.00),(9,2017,'CHEVROLET','VOLT','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',53.00,0.00),(10,2018,'CADILLAC','CT6','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',31.00,0.00),(11,2013,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',75.00,0.00),(12,2013,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',75.00,0.00),(13,2013,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',75.00,0.00),(14,2018,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',151.00,0.00),(15,2021,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Eligibility unknown as battery range has not been ',0.00,0.00),(16,2016,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',84.00,0.00),(17,2017,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',107.00,0.00),(18,2016,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',84.00,0.00),(19,2017,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',107.00,0.00),(20,2019,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',150.00,0.00),(21,2013,'FIAT','500','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',87.00,0.00),(22,2016,'FIAT','500','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',84.00,0.00),(23,2019,'FORD','FUSION','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',26.00,0.00),(24,2016,'BMW','X5','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',14.00,0.00),(25,2021,'BMW','X3','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',17.00,0.00),(26,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215.00,0.00),(27,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220.00,0.00),(28,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215.00,0.00),(29,2020,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',266.00,0.00),(30,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215.00,0.00),(31,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220.00,0.00),(32,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220.00,0.00),(33,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215.00,0.00),(34,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220.00,0.00),(35,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215.00,0.00),(36,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220.00,0.00),(37,2016,'TESLA','MODEL S','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',210.00,0.00),(38,2015,'TESLA','MODEL S','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',208.00,0.00),(39,2018,'TESLA','MODEL S','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',249.00,0.00),(40,2016,'TESLA','MODEL X','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',200.00,0.00),(41,2020,'TESLA','MODEL X','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',293.00,0.00),(42,2017,'TESLA','MODEL X','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',200.00,0.00),(43,2020,'TESLA','MODEL Y','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',291.00,0.00),(44,2018,'HONDA','CLARITY','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',47.00,0.00),(45,2011,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',73.00,0.00),(46,2022,'TOYOTA','RAV4 PRIME','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',42.00,0.00),(47,2016,'KIA','SOUL','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',93.00,31950.00),(48,2018,'KIA','SOUL EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',111.00,33950.00),(49,2020,'AUDI','Q5 E','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',20.00,0.00),(50,2016,'AUDI','A3','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',16.00,0.00),(51,2019,'BMW','530E','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',15.00,55700.00),(52,2016,'BMW','I3','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',72.00,0.00),(53,2020,'PORSCHE','TAYCAN','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',192.00,0.00);
/*!40000 ALTER TABLE `electricvehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evutility`
--

DROP TABLE IF EXISTS `evutility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evutility` (
  `UtilityID` int NOT NULL AUTO_INCREMENT,
  `UtilityName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UtilityID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evutility`
--

LOCK TABLES `evutility` WRITE;
/*!40000 ALTER TABLE `evutility` DISABLE KEYS */;
INSERT INTO `evutility` VALUES (1,'PUGET SOUND ENERGY INC'),(2,'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)'),(3,'PACIFICORP'),(4,'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)'),(5,'MODERN ELECTRIC WATER COMPANY'),(6,'PUD NO 2 OF GRANT COUNTY');
/*!40000 ALTER TABLE `evutility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legislativedistrict`
--

DROP TABLE IF EXISTS `legislativedistrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legislativedistrict` (
  `DistrictID` int NOT NULL AUTO_INCREMENT,
  `DistrictNumber` int DEFAULT NULL,
  `StateID` int DEFAULT NULL,
  PRIMARY KEY (`DistrictID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legislativedistrict`
--

LOCK TABLES `legislativedistrict` WRITE;
/*!40000 ALTER TABLE `legislativedistrict` DISABLE KEYS */;
INSERT INTO `legislativedistrict` VALUES (1,44,1),(2,32,1),(3,21,1),(4,39,1),(5,5,1),(6,23,1),(7,0,2),(8,20,1),(9,7,1),(10,14,1),(11,38,1),(12,46,1),(13,22,1),(14,10,1),(15,3,1),(16,40,1),(17,30,1),(18,2,1),(19,15,1),(20,35,1),(21,1,1),(22,13,1),(23,24,1);
/*!40000 ALTER TABLE `legislativedistrict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loading_csv`
--

DROP TABLE IF EXISTS `loading_csv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loading_csv` (
  `VehicleID` varchar(50) NOT NULL,
  `County` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `PostalCode` int DEFAULT NULL,
  `Model_year` int DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `EV_Type` varchar(50) DEFAULT NULL,
  `CAFV_eligible` varchar(50) DEFAULT NULL,
  `electric_range` int DEFAULT NULL,
  `base_msrp` int DEFAULT NULL,
  `legislative_district` int DEFAULT NULL,
  `dol_vehicleID` int DEFAULT NULL,
  `location_vehicle` varchar(50) DEFAULT NULL,
  `electric_utility` varchar(50) DEFAULT NULL,
  `census_tract` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loading_csv`
--

LOCK TABLES `loading_csv` WRITE;
/*!40000 ALTER TABLE `loading_csv` DISABLE KEYS */;
INSERT INTO `loading_csv` VALUES ('1FADP5CU3D','Snohomish','Snohomish','WA',98296,2013,'FORD','C-MAX','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',19,0,44,225985077,'POINT (-122.1389 47.87115)','PUGET SOUND ENERGY INC','53061052105\r'),('1FADP5CU9E','Snohomish','Edmonds','WA',98026,2014,'FORD','C-MAX','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',19,0,32,476899461,'POINT (-122.31768 47.87166)','PUGET SOUND ENERGY INC','53061050700\r'),('1FTVW1EL4N','Snohomish','Everett','WA',98204,2022,'FORD','F-150','Battery Electric Vehicle (BEV)','Eligibility unknown as battery range has not been ',0,0,21,216940363,'POINT (-122.25527 47.90456)','PUGET SOUND ENERGY INC','53061041812\r'),('1G1FW6S08H','Skagit','Concrete','WA',98237,2017,'CHEVROLET','BOLT EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',238,0,39,186750406,'POINT (-121.7515 48.53892)','PUGET SOUND ENERGY INC','53057951101\r'),('1G1FZ6S00L','King','Maple Valley','WA',98038,2020,'CHEVROLET','BOLT EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',259,0,5,139723181,'POINT (-122.04526 47.39394)','PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)','53033032010\r'),('1G1FZ6S05L','Kitsap','Suquamish','WA',98392,2020,'CHEVROLET','BOLT EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',259,0,23,161332125,'POINT (-122.55242 47.73162)','PUGET SOUND ENERGY INC','53035940100\r'),('1G1RD6E45D','Clark','Laughlin','NV',89029,2013,'CHEVROLET','VOLT','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',38,0,0,5204412,'POINT (-114.57245 35.16815)','','32003005702\r'),('1G1RD6S50G','Thurston','Rochester','WA',98579,2016,'CHEVROLET','VOLT','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',53,0,20,476126752,'POINT (-123.08743 46.82175)','PUGET SOUND ENERGY INC','53067012730\r'),('1G1RD6S55H','Stevens','Nine Mile Falls','WA',99026,2017,'CHEVROLET','VOLT','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',53,0,7,141964049,'POINT (-117.54392 47.77676)','','53065951402\r'),('1G6KA5RX3J','Yakima','Yakima','WA',98902,2018,'CADILLAC','CT6','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',31,0,14,157696066,'POINT (-120.52301 46.60138)','PACIFICORP','53077000600\r'),('1N4AZ0CP0D','Snohomish','Mukilteo','WA',98275,2013,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',75,0,21,176817364,'POINT (-122.29196 47.89908)','PUGET SOUND ENERGY INC','53061042001\r'),('1N4AZ0CP4D','Snohomish','Everett','WA',98203,2013,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',75,0,38,253546023,'POINT (-122.23019 47.94949)','PUGET SOUND ENERGY INC','53061040900\r'),('1N4AZ0CP6D','King','Seattle','WA',98125,2013,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',75,0,46,191349651,'POINT (-122.3026 47.72656)','CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)','53033000201\r'),('1N4AZ1CP0J','King','Seattle','WA',98125,2018,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',151,0,46,230229198,'POINT (-122.3026 47.72656)','CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)','53033000202\r'),('1N4AZ1CV8M','Thurston','Olympia','WA',98502,2021,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Eligibility unknown as battery range has not been ',0,0,22,168414802,'POINT (-122.92333 47.03779)','PUGET SOUND ENERGY INC','53067010600\r'),('1N4BZ0CP4G','Island','Clinton','WA',98236,2016,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',84,0,10,475900379,'POINT (-122.35803 47.9796)','PUGET SOUND ENERGY INC','53029972100\r'),('1N4BZ0CP4H','Snohomish','Marysville','WA',98271,2017,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',107,0,38,262138243,'POINT (-122.19388 48.15353)','PUGET SOUND ENERGY INC','53061052805\r'),('1N4BZ0CP5G','Spokane','Spokane','WA',99205,2016,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',84,0,3,209103016,'POINT (-117.45674 47.69963)','MODERN ELECTRIC WATER COMPANY','53063001900\r'),('1N4BZ0CP9H','Snohomish','Everett','WA',98201,2017,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',107,0,38,347122709,'POINT (-122.20596 47.97659)','PUGET SOUND ENERGY INC','53061040300\r'),('1N4BZ1CP4K','Snohomish','Everett','WA',98201,2019,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',150,0,38,203204347,'POINT (-122.20596 47.97659)','PUGET SOUND ENERGY INC','53061040100\r'),('3C3CFFGE1D','Snohomish','Edmonds','WA',98026,2013,'FIAT','500','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',87,0,21,203403784,'POINT (-122.31768 47.87166)','PUGET SOUND ENERGY INC','53061050101\r'),('3C3CFFGE3G','St. Clair','Mascoutah','IL',62258,2016,'FIAT','500','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',84,0,0,153786167,'POINT (-89.79939 38.49028)','','17163504356\r'),('3FA6P0SU1K','Snohomish','Everett','WA',98201,2019,'FORD','FUSION','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',26,0,38,2006714,'POINT (-122.20596 47.97659)','PUGET SOUND ENERGY INC','53061041500\r'),('5UXKT0C50G','Snohomish','Lynnwood','WA',98037,2016,'BMW','X5','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',14,0,32,320712472,'POINT (-122.27734 47.83785)','PUGET SOUND ENERGY INC','53061051802\r'),('5UXTS1C05M','King','Seattle','WA',98115,2021,'BMW','X3','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',17,0,46,132838877,'POINT (-122.31765 47.70013)','CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)','53033002100\r'),('5YJ3E1EA1J','Skagit','Burlington','WA',98233,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215,0,40,211534823,'POINT (-122.33029 48.46846)','PUGET SOUND ENERGY INC','53057951600\r'),('5YJ3E1EA5K','Snohomish','Everett','WA',98208,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220,0,38,478392596,'POINT (-122.18637 47.89252)','PUGET SOUND ENERGY INC','53061041605\r'),('5YJ3E1EA6J','Snohomish','Edmonds','WA',98026,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215,0,21,139647847,'POINT (-122.31768 47.87166)','PUGET SOUND ENERGY INC','53061050200\r'),('5YJ3E1EA9L','King','Auburn','WA',98001,2020,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',266,0,30,4759478,'POINT (-122.23035 47.3074)','PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)','53033029805\r'),('5YJ3E1EAXJ','Thurston','Olympia','WA',98501,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215,0,22,162260283,'POINT (-122.89166 47.03956)','PUGET SOUND ENERGY INC','53067010400\r'),('5YJ3E1EAXK','Thurston','Olympia','WA',98513,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220,0,2,329238430,'POINT (-122.80277 46.99409)','PUGET SOUND ENERGY INC','53067012320\r'),('5YJ3E1EB2K','Yakima','Yakima','WA',98901,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220,0,15,221375612,'POINT (-120.50721 46.60448)','PACIFICORP','53077001503\r'),('5YJ3E1EB3J','Lake','Highland Park','IL',60035,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215,0,0,128455015,'POINT (-87.7992 42.18569)','','17097865501\r'),('5YJ3E1EB3K','Kitsap','Bremerton','WA',98312,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220,0,35,347395940,'POINT (-122.66122 47.56573)','PUGET SOUND ENERGY INC','53035080900\r'),('5YJ3E1EB5J','Snohomish','Bothell','WA',98021,2018,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',215,0,1,475635324,'POINT (-122.18384 47.8031)','PUGET SOUND ENERGY INC','53061051916\r'),('5YJ3E1EB9K','Thurston','Olympia','WA',98502,2019,'TESLA','MODEL 3','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',220,0,35,112688474,'POINT (-122.92333 47.03779)','','53067011902\r'),('5YJSA1E22G','Newport News','Newport News','VA',23602,2016,'TESLA','MODEL S','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',210,0,0,111593331,'POINT (-76.53585 37.10499)','','51700032131\r'),('5YJSA1E27F','Yakima','Yakima','WA',98908,2015,'TESLA','MODEL S','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',208,0,14,142165607,'POINT (-120.56916 46.58514)','PACIFICORP','53077000401\r'),('5YJSA1E2XJ','Snohomish','Lynnwood','WA',98036,2018,'TESLA','MODEL S','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',249,0,32,151710079,'POINT (-122.29245 47.82557)','PUGET SOUND ENERGY INC','53061051931\r'),('5YJXCAE28G','Saratoga','Greenfield Center','NY',12833,2016,'TESLA','MODEL X','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',200,0,0,218050878,'POINT (-73.84643 43.1284)','','36091060601\r'),('5YJXCBE23L','Grant','Moses Lake','WA',98837,2020,'TESLA','MODEL X','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',293,0,13,3214494,'POINT (-119.2771 47.13196)','PUD NO 2 OF GRANT COUNTY','53025010904\r'),('5YJXCBE24H','Island','Langley','WA',98260,2017,'TESLA','MODEL X','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',200,0,10,305760101,'POINT (-122.40618 48.0399)','PUGET SOUND ENERGY INC','53029971900\r'),('5YJYGDEE2L','Lake','Gurnee','IL',60031,2020,'TESLA','MODEL Y','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',291,0,0,110357341,'POINT (-87.91441 42.36495)','','17097861609\r'),('JHMZC5F30J','Clallam','Sequim','WA',98382,2018,'HONDA','CLARITY','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',47,0,24,254914551,'POINT (-123.10367 48.07965)','','53009001902\r'),('JN1AZ0CP8B','Yakima','Yakima','WA',98901,2011,'NISSAN','LEAF','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',73,0,15,218972519,'POINT (-120.50721 46.60448)','PACIFICORP','53077001602\r'),('JTMEB3FV6N','Monroe','Key West','FL',33040,2022,'TOYOTA','RAV4 PRIME','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',42,0,0,198968248,'POINT (-81.80023 24.5545)','','12087972100\r'),('KNDJP3AE2G','Skagit','Anacortes','WA',98221,2016,'KIA','SOUL','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',93,31950,40,100489049,'POINT (-122.61214 48.51748)','PUGET SOUND ENERGY INC','53057940301\r'),('KNDJX3AE6J','Thurston','Lacey','WA',98503,2018,'KIA','SOUL EV','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',111,33950,22,333554245,'POINT (-122.82324 47.04437)','PUGET SOUND ENERGY INC','53067011200\r'),('WA1F2AFY1L','Thurston','Lacey','WA',98516,2020,'AUDI','Q5 E','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',20,0,22,103317238,'POINT (-122.75379 47.06316)','PUGET SOUND ENERGY INC','53067012221\r'),('WAUSPBFF4G','Snohomish','Bothell','WA',98021,2016,'AUDI','A3','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',16,0,1,222389436,'POINT (-122.18384 47.8031)','PUGET SOUND ENERGY INC','53061051926\r'),('WBAJB1C51K','Snohomish','Lynnwood','WA',98087,2019,'BMW','530E','Plug-in Hybrid Electric Vehicle (PHEV)','Not eligible due to low battery range',15,55700,21,180189544,'POINT (-122.27981 47.85727)','PUGET SOUND ENERGY INC','53061042004\r'),('WBY1Z4C5XG','Jackson','Altus','OK',73521,2016,'BMW','I3','Plug-in Hybrid Electric Vehicle (PHEV)','Clean Alternative Fuel Vehicle Eligible',72,0,0,212273260,'POINT (-99.33374 34.63783)','','40065968500\r'),('WP0AC2Y19L','Thurston','Olympia','WA',98502,2020,'PORSCHE','TAYCAN','Battery Electric Vehicle (BEV)','Clean Alternative Fuel Vehicle Eligible',192,0,35,169466916,'POINT (-122.92333 47.03779)','PUGET SOUND ENERGY INC','53067011902\r');
/*!40000 ALTER TABLE `loading_csv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `CityID` int NOT NULL AUTO_INCREMENT,
  `CityName` varchar(100) DEFAULT NULL,
  `CountyID` int DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Snohomish',1,'98296'),(2,'Edmonds',1,'98026'),(3,'Everett',1,'98204'),(4,'Concrete',2,'98237'),(5,'Maple Valley',3,'98038'),(6,'Suquamish',4,'98392'),(7,'Laughlin',5,'89029'),(8,'Rochester',6,'98579'),(9,'Nine Mile Falls',7,'99026'),(10,'Yakima',8,'98902'),(11,'Mukilteo',1,'98275'),(12,'Everett',1,'98203'),(13,'Seattle',3,'98125'),(14,'Olympia',6,'98502'),(15,'Clinton',9,'98236'),(16,'Marysville',1,'98271'),(17,'Spokane',10,'99205'),(18,'Everett',1,'98201'),(19,'Mascoutah',11,'62258'),(20,'Lynnwood',1,'98037'),(21,'Seattle',3,'98115'),(22,'Burlington',2,'98233'),(23,'Everett',1,'98208'),(24,'Auburn',3,'98001'),(25,'Olympia',6,'98501'),(26,'Olympia',6,'98513'),(27,'Yakima',8,'98901'),(28,'Highland Park',12,'60035'),(29,'Bremerton',4,'98312'),(30,'Bothell',1,'98021'),(31,'Newport News',13,'23602'),(32,'Yakima',8,'98908'),(33,'Lynnwood',1,'98036'),(34,'Greenfield Center',14,'12833'),(35,'Moses Lake',15,'98837'),(36,'Langley',9,'98260'),(37,'Gurnee',12,'60031'),(38,'Sequim',16,'98382'),(39,'Key West',17,'33040'),(40,'Anacortes',2,'98221'),(41,'Lacey',6,'98503'),(42,'Lacey',6,'98516'),(43,'Lynnwood',1,'98087'),(44,'Altus',18,'73521');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pluginhybridscount`
--

DROP TABLE IF EXISTS `pluginhybridscount`;
/*!50001 DROP VIEW IF EXISTS `pluginhybridscount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pluginhybridscount` AS SELECT 
 1 AS `TotalPluginHybrids`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `socioeconomicdata`
--

DROP TABLE IF EXISTS `socioeconomicdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socioeconomicdata` (
  `OwnerID` int NOT NULL,
  `SocioeconomicStatus` varchar(50) DEFAULT NULL,
  `EducationLevel` varchar(50) DEFAULT NULL,
  `Income` decimal(10,2) DEFAULT NULL,
  `EmploymentStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socioeconomicdata`
--

LOCK TABLES `socioeconomicdata` WRITE;
/*!40000 ALTER TABLE `socioeconomicdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `socioeconomicdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `StateID` int NOT NULL AUTO_INCREMENT,
  `StateCode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'WA'),(2,'NV'),(3,'IL'),(4,'VA'),(5,'NY'),(6,'FL'),(7,'OK');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `totalvehiclesbydistrict`
--

DROP TABLE IF EXISTS `totalvehiclesbydistrict`;
/*!50001 DROP VIEW IF EXISTS `totalvehiclesbydistrict`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalvehiclesbydistrict` AS SELECT 
 1 AS `legislative_district`,
 1 AS `TotalVehicles`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'evs'
--

--
-- Final view structure for view `avgelectricrangebymake`
--

/*!50001 DROP VIEW IF EXISTS `avgelectricrangebymake`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avgelectricrangebymake` AS select `loading_csv`.`Make` AS `Make`,avg(`loading_csv`.`electric_range`) AS `AvgElectricRange` from `loading_csv` group by `loading_csv`.`Make` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cleanvehicleseligible`
--

/*!50001 DROP VIEW IF EXISTS `cleanvehicleseligible`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cleanvehicleseligible` AS select count(`loading_csv`.`VehicleID`) AS `TotalCleanVehicles` from `loading_csv` where (`loading_csv`.`CAFV_eligible` = 'Clean Alternative Fuel Vehicle Eligible') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pluginhybridscount`
--

/*!50001 DROP VIEW IF EXISTS `pluginhybridscount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pluginhybridscount` AS select count(`loading_csv`.`VehicleID`) AS `TotalPluginHybrids` from `loading_csv` where (`loading_csv`.`EV_Type` = 'Plug-in Hybrid Electric Vehicle (PHEV)') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalvehiclesbydistrict`
--

/*!50001 DROP VIEW IF EXISTS `totalvehiclesbydistrict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalvehiclesbydistrict` AS select `loading_csv`.`legislative_district` AS `legislative_district`,count(`loading_csv`.`VehicleID`) AS `TotalVehicles` from `loading_csv` group by `loading_csv`.`legislative_district` */;
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

-- Dump completed on 2023-12-14 23:57:26
