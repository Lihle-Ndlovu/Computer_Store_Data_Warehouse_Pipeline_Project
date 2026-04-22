
---Dim_Department

<<<<<<< HEAD
=======
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Department];
SELECT DISTINCT
       [Sales_Person_Name]
      ,[Sales_Person_Department]
INTO [Staging_Computer_Store].[dbo].[Dim_Department]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

--------Inserting into Dim_Department table(adding primary Key)

>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Department]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Department](
    [DepartmentID] INT IDENTITY (1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Department](
[Sales_Person_Name],
[Sales_Person_Department])

SELECT DISTINCT 
                [Sales_Person_Name],
               [Sales_Person_Department]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Department]
