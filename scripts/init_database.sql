/*
Create Database and Schemas
Running this will delete DataWerehouse and create a new one withing the schemas
*/

USE master;

SELECT * FROM sys.databases;

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWerehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;