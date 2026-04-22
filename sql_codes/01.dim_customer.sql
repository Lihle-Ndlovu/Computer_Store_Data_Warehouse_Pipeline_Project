
<<<<<<< HEAD
-----Dim Customer
=======
----Inserting into Dim Customer table(adding primary Key)
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47

DROP TABLE [Staging_Computer_Store]. [dbo].[Dim_Customer]
CREATE TABLE[Staging_Computer_Store]. [dbo].[Dim_Customer](
	[CustomerID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
)


INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Customer]
(
    Customer_Name,
    Customer_Surname,
    Customer_Contact_Number,
    Customer_Email_Address
)
SELECT DISTINCT
    Customer_Name,
    Customer_Surname,
    Customer_Contact_Number,
    Customer_Email_Address
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

<<<<<<< HEAD
--select * FROM [Staging_Computer_Store]. [dbo].[Dim_Customer]
=======
---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Customer]
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
