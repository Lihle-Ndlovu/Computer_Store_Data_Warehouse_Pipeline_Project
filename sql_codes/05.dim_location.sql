----Dim_Location

DROP TABLE[Staging_Computer_Store]. [dbo].[Dim_Location]
CREATE TABLE[Staging_Computer_Store]. [dbo].[Dim_Location](
    [LocationID] INT IDENTITY (1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
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

select * FROM [Staging_Computer_Store]. [dbo].[Dim_Location]