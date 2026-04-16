----Dim_Location

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Location];
SELECT DISTINCT
        [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
INTO [Staging_Computer_Store].[dbo].[Dim_Location]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

--------Inserting into Dim_Locationt table(adding primary Key)
DROP TABLE[Staging_Computer_Store]. [dbo].[Dim_Location]
CREATE TABLE[Staging_Computer_Store]. [dbo].[Dim_Location](
    [LocationID] INT IDENTITY (1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
)


INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Location](
            [Continent],
            [Country_or_State],
            [Province_or_City])

SELECT DISTINCT 
                [Continent],
                [Country_or_State],
                [Province_or_City]

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Location]
