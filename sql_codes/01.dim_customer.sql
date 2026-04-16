---Dim Customer( selecting into) creating Dim Customer table.
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Customer];
SELECT DISTINCT
       [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
INTO [Staging_Computer_Store].[dbo].[Dim_Customer]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

----Inserting into Dim Customer table(adding primary Key)

DROP TABLE [Staging_Computer_Store]. [dbo].[Dim_Customer]
CREATE TABLE[Staging_Computer_Store]. [dbo].[Dim_Customer](
	[CustomerID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
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

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Customer]
