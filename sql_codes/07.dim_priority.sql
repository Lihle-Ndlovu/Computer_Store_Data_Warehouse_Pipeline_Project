---Dim_Priority

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