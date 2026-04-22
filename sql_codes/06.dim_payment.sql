---Dim_Payment

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