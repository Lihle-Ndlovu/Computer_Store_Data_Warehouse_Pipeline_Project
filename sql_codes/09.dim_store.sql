---Dim_Store

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Store];
SELECT DISTINCT
       [Shop_Name]
      ,[Shop_Age]
INTO [Staging_Computer_Store].[dbo].[Dim_Store]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

--------Inserting into Dim_Store table(adding primary Key)

DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Store]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Store](
    [StoreID] INT IDENTITY (1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [tinyint] NOT NULL
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Store](
           [Shop_Name],
           [Shop_Age] )


SELECT DISTINCT 
           [Shop_Name],
           [Shop_Age] 

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

--select * FROM [Staging_Computer_Store]. [dbo].[Dim_Store]
