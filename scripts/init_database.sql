/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DairyGoods' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DairyGoods' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE MASTER;
GO

-- Drop and recreate the 'DairyGoods' database.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DairyGoods')
BEGIN
	ALTER DATABASE DairyGoods SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DairyGoods;
END;
GO

-- Create database 'DairyGoods'.
CREATE DATABASE DairyGoods;
GO

USE DairyGoods;
GO

-- Create schemas.
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
