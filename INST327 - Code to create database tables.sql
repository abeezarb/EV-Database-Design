USE evs;
-- CREATE TABLE IF NOT EXISTS loading_csv ( 
-- VehicleID VARCHAR(50) PRIMARY KEY,
-- County VARCHAR(50),
-- City VARCHAR(50),
-- State VARCHAR(50),
-- PostalCode INT,
-- Model_year INT,
-- Make VARCHAR(50),
-- Model VARCHAR(50),
-- EV_Type VARCHAR(50),
-- CAFV_eligible VARCHAR(50),
-- electric_range INT,
-- base_msrp INT,
-- legislative_district INT,
-- dol_vehicleID INT,
-- location_vehicle VARCHAR(50),
-- electric_utility VARCHAR(50), 
-- census_tract VARCHAR(50) 
-- );

-- Create tables for demographic information
-- CREATE TABLE IF NOT EXISTS SocioeconomicData (
-- OwnerID INT PRIMARY KEY,
-- SocioeconomicStatus VARCHAR(50),
-- EducationLevel VARCHAR(50),
-- Income DECIMAL(10, 2),
-- EmploymentStatus VARCHAR(50)
-- );

-- CREATE TABLE IF NOT EXISTS Demographics (
-- OwnerID INT PRIMARY KEY,
-- Race VARCHAR(50),
-- Gender VARCHAR(20),
-- CityID INT, -- Foreign key referencing City table
-- StateID INT -- Foreign key referencing State table
-- );
-- Create tables for EV information

CREATE TABLE IF NOT EXISTS Location (
CityID INT PRIMARY KEY,
CityName VARCHAR(100),
CountyID INT, -- Foreign key referencing County table
PostalCode VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS County (
CountyID INT PRIMARY KEY AUTO_INCREMENT,
CountyName VARCHAR(100),
StateID INT -- Foreign key referencing State table
);
CREATE TABLE IF NOT EXISTS State (
StateID INT PRIMARY KEY AUTO_INCREMENT,
StateCode VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS LegislativeDistrict (
DistrictID INT PRIMARY KEY,
DistrictNumber INT,
StateID INT -- Foreign key referencing State table
);

-- Create table for Electric Vehicle Utility
DROP TABLE IF EXISTS EVUtility;
CREATE TABLE IF NOT EXISTS EVUtility (
UtilityID INT PRIMARY KEY AUTO_INCREMENT,
UtilityName VARCHAR(100)
);

-- Create tables for EV information
DROP TABLE IF EXISTS ElectricVehicles;
CREATE TABLE IF NOT EXISTS ElectricVehicles (
VehicleID INT PRIMARY KEY AUTO_INCREMENT,
ModelYear INT,
Make VARCHAR(50),
Model VARCHAR(50),
EVType VARCHAR(50),
CAFVEligibility VARCHAR(50),
ElectricRange DECIMAL(6, 2),
BaseMSRP DECIMAL(10, 2)
);

DROP TABLE IF EXISTS Location;
CREATE TABLE IF NOT EXISTS Location (
CityID INT PRIMARY KEY,
CityName VARCHAR(100),
CountyID INT, -- Foreign key referencing County table
PostalCode VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS County (
CountyID INT PRIMARY KEY,
CountyName VARCHAR(100),
StateID INT -- Foreign key referencing State table
);

DROP TABLE IF EXISTS State;
CREATE TABLE IF NOT EXISTS State (
StateID INT PRIMARY KEY,
StateName VARCHAR(50)
);

-- Create table for Electric Vehicle Utility
CREATE TABLE IF NOT EXISTS EVUtility (
UtilityID INT PRIMARY KEY,
UtilityName VARCHAR(100),
UtilityDescription TEXT
);