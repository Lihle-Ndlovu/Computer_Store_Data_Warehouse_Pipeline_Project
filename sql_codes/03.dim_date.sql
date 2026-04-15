----Dim_Date

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Date];
SELECT DISTINCT
       [Purchase_Date]
      ,[Ship_Date]
INTO [Staging_Computer_Store].[dbo].[Dim_Date]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];


----Dim_Date
DROP TABLE[Staging_Computer_Store].[dbo].[Dim_Date]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Date](
    [DateID] INT IDENTITY (1,1) PRIMARY KEY,
	[Purchase_Date] [date] NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
)

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Date]
([Purchase_Date],
[Ship_Date])

SELECT DISTINCT 
                [Purchase_Date],
                [Ship_Date]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Date]