---Dim_Payment

<<<<<<< HEAD
=======
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Payment];
SELECT DISTINCT
        [Payment_Method]
INTO [Staging_Computer_Store].[dbo].[Dim_Payment]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

--------Inserting into Dim_Payment table(adding primary Key)
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Payment]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Payment](
    [PaymentID] INT IDENTITY (1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Payment](
            [Payment_Method])
SELECT DISTINCT 
                [Payment_Method]

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Payment]
