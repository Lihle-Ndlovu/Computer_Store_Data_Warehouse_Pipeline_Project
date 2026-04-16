----Dim_Product

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Product];
SELECT DISTINCT
       [PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[RAM]
       [Storage_Capacity]
INTO [Staging_Computer_Store].[dbo].[Dim_Product]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

--------Inserting into Dim_Product table(adding primary Key)

DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Product]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Product](
    [ProductID] INT IDENTITY (1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL
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

--select * FROM [Staging_Computer_Store]. [dbo].[Dim_Product]
