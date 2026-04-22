---Dim_Store

<<<<<<< HEAD
=======
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Store];
SELECT DISTINCT
       [Shop_Name]
      ,[Shop_Age]
INTO [Staging_Computer_Store].[dbo].[Dim_Store]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

--------Inserting into Dim_Store table(adding primary Key)

>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Store]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Store](
    [StoreID] INT IDENTITY (1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [tinyint] NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Store](
           [Shop_Name],
           [Shop_Age] )


SELECT DISTINCT 
           [Shop_Name],
           [Shop_Age] 

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

<<<<<<< HEAD
---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Store]
=======
--select * FROM [Staging_Computer_Store]. [dbo].[Dim_Store]
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
