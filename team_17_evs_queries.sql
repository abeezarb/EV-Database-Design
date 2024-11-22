-- View 1: Clean Vehicles Eligible
CREATE VIEW CleanVehiclesEligible AS
SELECT COUNT(VehicleID) AS TotalCleanVehicles
FROM loading_csv
WHERE CAFV_eligible = 'Clean Alternative Fuel Vehicle Eligible';


-- View 2: Plugin Hybrids Count
CREATE VIEW PluginHybridsCount AS
SELECT COUNT(VehicleID) AS TotalPluginHybrids
FROM loading_csv
WHERE EV_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)';


-- View 3: Average Electric Range by Make
CREATE VIEW AvgElectricRangeByMake AS
SELECT Make, AVG(electric_range) AS AvgElectricRange
FROM loading_csv
GROUP BY Make;


-- View 4: Total Vehicles by Legislative District
CREATE VIEW TotalVehiclesByDistrict AS
SELECT legislative_district, COUNT(VehicleID) AS TotalVehicles
FROM loading_csv
GROUP BY legislative_district;