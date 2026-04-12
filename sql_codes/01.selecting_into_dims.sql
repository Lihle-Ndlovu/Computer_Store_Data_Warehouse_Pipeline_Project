----Dim Channel
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Channel];
SELECT DISTINCT
    [Channel]
INTO [Staging_Computer_Store].[dbo].[Dim_Channel]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

---Dim Customer
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Customer];
SELECT DISTINCT
       [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
INTO [Staging_Computer_Store].[dbo].[Dim_Customer]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

----Dim_Date

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Date];
SELECT DISTINCT
       [Purchase_Date]
      ,[Ship_Date]
INTO [Staging_Computer_Store].[dbo].[Dim_Date]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

---Dim_Department



----Dim_Location

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Location];
SELECT DISTINCT
        [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
INTO [Staging_Computer_Store].[dbo].[Dim_Location]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

---Dim_Payment

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Payment];
SELECT DISTINCT
        [Payment_Method]
INTO [Staging_Computer_Store].[dbo].[Dim_Payment]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];


---Dim_Priority

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Priority];
SELECT DISTINCT
        [Priority]
INTO [Staging_Computer_Store].[dbo].[Dim_Priority]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

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


---Dim_Store

DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Store];
SELECT DISTINCT
       [Shop_Name]
      ,[Shop_Age]
INTO [Staging_Computer_Store].[dbo].[Dim_Store]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];


----Fact table
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Fact_Table];
SELECT DISTINCT
      [Cost_Price],
      [Sale_Price],
      [Discount_Amount],
      [Finance_Amount],
      [Credit_Score],
      [Cost_of_Repairs],
      [Total_Sales_per_Employee],
      [PC_Market_Price]
INTO [Staging_Computer_Store].[dbo].[Fact_Table]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];


