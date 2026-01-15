/*
=================================================================
Create Database and Schemas
=================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze','silver' and 'gold'.

Warning:
  Running this script will drop the entire 'DaraWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/

USE master;
GO
 -- Drop and recreate the 'datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'datawarehouse')
BEGIN
  ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
END;
GO

-- Create the 'datawarehouse' database
CREATE DATABASE datawarehouse;
GO

USE DATABASE datawarehouse;
GO

-- CREATE Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

