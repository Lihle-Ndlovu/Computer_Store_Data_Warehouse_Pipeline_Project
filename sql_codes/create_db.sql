----Creating database 

IF DB_ID('Computer_Store') IS NULL
BEGIN CREATE DATABASE Computer_Store;
END
GO

USE Computer_Store;
GO

-----Stagging the database
IF DB_ID('Staging_Computer_Store') IS NULL
BEGIN CREATE DATABASE Staging_Computer_Store;
END
GO

USE Staging_Computer_Store;
GO