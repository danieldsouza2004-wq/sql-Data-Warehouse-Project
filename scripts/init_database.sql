/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

--DROP AND RECREATE DATAWAREHOUSE DATABASE
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DATAWAREHOUSE')
BEGIN
  ALTER DATABASE DATAWAREHOUSE SET SINGLE_USER WITH ROLLBACK IMMEDIATE ;
  DROP DATABASE DATAWAREHOUSE;
END;
GO

--CREATE DATABASE DATAWAREHOUSE

CREATE DATABASE DATAWAREHOUSE
GO

USE DATAWAREHOUSE
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
