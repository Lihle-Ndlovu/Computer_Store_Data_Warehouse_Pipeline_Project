----Dim_Product

DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Product]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Product](
    [ProductID] INT IDENTITY (1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
)

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Product](
           [PC_Model],
           [PC_Make] ,
           [Storage_Type] ,
           [Storage_Capacity])


SELECT DISTINCT 
           [PC_Model],
           [PC_Make] ,
           [Storage_Type], 
           [Storage_Capacity]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Product]