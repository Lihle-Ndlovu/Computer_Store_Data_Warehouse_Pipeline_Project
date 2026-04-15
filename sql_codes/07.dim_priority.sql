---Dim_Priority

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Priority];
SELECT DISTINCT
        [Priority]
INTO [Staging_Computer_Store].[dbo].[Dim_Priority]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Priority]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Priority](
    [PriorityID] INT IDENTITY (1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL
)


INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Priority](
           [Priority])
SELECT DISTINCT 
                [Priority]

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]


---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Priority]