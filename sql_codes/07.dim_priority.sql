---Dim_Priority

<<<<<<< HEAD
=======
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Priority];
SELECT DISTINCT
        [Priority]
INTO [Staging_Computer_Store].[dbo].[Dim_Priority]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

--------Inserting into Dim_Priority table(adding primary Key)
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Priority]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Priority](
    [PriorityID] INT IDENTITY (1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
)


INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Priority](
           [Priority])
SELECT DISTINCT 
                [Priority]

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]


---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Priority]
