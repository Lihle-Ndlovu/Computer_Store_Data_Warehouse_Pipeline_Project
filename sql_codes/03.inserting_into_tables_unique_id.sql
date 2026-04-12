
---Dim_Customer
DROP TABLE [Staging_Computer_Store]. [dbo].[Dim_Customer]
CREATE TABLE[Staging_Computer_Store]. [dbo].[Dim_Customer](
	[ CustomerID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
)

select * FROM [Staging_Computer_Store]. [dbo].[Dim_Customer]

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

----select * FROM [Staging_Computer_Store]. [dbo].[Dim_Customer]

----Dim_Channel
DROP TABLE[Staging_Computer_Store].[dbo].[Dim_Channel]
CREATE TABLE[Staging_Computer_Store].[dbo].[Dim_Channel](
    [ChannelID] INT IDENTITY (1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Channel]
([Channel])
SELECT DISTINCT 
                [Channel]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Channel]

----Dim_Date
DROP TABLE[Staging_Computer_Store].[dbo].[Dim_Date]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Date](
    [DateID] INT IDENTITY (1,1) PRIMARY KEY,
	[Purchase_Date] [date] NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
)

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Date]
([Purchase_Date],
[Ship_Date])

SELECT DISTINCT 
                [Purchase_Date],
                [Ship_Date]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

--select * FROM [Staging_Computer_Store]. [dbo].[Dim_Date]

----Dim_Department
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Department]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Department](
    [DepartmentID] INT IDENTITY (1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Department](
[Sales_Person_Name],
[Sales_Person_Department])

SELECT DISTINCT 
                [Sales_Person_Name],
               [Sales_Person_Department]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Department]

---Dim_Location
DROP TABLE[Staging_Computer_Store]. [dbo].[Dim_Location]
CREATE TABLE[Staging_Computer_Store]. [dbo].[Dim_Location](
    [LocationID] INT IDENTITY (1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
)


INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Location](
            [Continent],
            [Country_or_State],
            [Province_or_City])

SELECT DISTINCT 
                [Continent],
                [Country_or_State],
                [Province_or_City]

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Location]

---Dim_Payment
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Payment]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Payment](
    [PaymentID] INT IDENTITY (1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Payment](
            [Payment_Method])
SELECT DISTINCT 
                [Payment_Method]

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Payment]

---Dim_Priority
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Priority]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Priority](
    [PriorityID] INT IDENTITY (1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL
)


INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Priority](
           [Priority])
SELECT DISTINCT 
                [Priority]

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Priority]

---Dim_Product
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

--Dim_Store
DROP TABLE [Staging_Computer_Store].[dbo].[Dim_Store]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Store](
    [StoreID] INT IDENTITY (1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [tinyint] NOT NULL
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Store](
           [Shop_Name],
           [Shop_Age] )


SELECT DISTINCT 
           [Shop_Name],
           [Shop_Age] 

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Store]

---Fact_Table
DROP TABLE [Staging_Computer_Store]. [dbo].[Fact_Table]
CREATE TABLE [Staging_Computer_Store]. [dbo].[Fact_Table](
    [SalesID] INT IDENTITY (1,1) PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    StoreID INT,
    LocationID INT,
    DepartmentID INT,
    PaymentID INT,
    PriorityID INT,
    ChannelID INT,
    DateID INT,
	[Cost_Price] [smallint] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [smallint] NOT NULL,
	[Finance_Amount] [int] NOT NULL,
	[Credit_Score] [smallint] NOT NULL,
	[Cost_of_Repairs] [smallint] NOT NULL,
	[Total_Sales_per_Employee] [smallint] NOT NULL,
	[PC_Market_Price] [int] NOT NULL
) 


INSERT INTO Fact_Table (
    CustomerID,
    ProductID,
    StoreID,
    LocationID,
    DepartmentID,
    PaymentID,
    PriorityID,
    ChannelID,
    DateID,
    Cost_Price,
    Sale_Price,
    Discount_Amount,
    Finance_Amount,
    Credit_Score,
    Cost_of_Repairs,
    Total_Sales_per_Employee,
    PC_Market_Price
)
SELECT
    c.CustomerID,
    p.ProductID,
    s.StoreID,
    l.LocationID,
    d.DepartmentID,
    pay.PaymentID,
    pr.PriorityID,
    ch.ChannelID,
    dt.DateID,
    st.Cost_Price,
    st.Sale_Price,
    st.Discount_Amount,
    st.Finance_Amount,
    st.Credit_Score,
    st.Cost_of_Repairs,
    st.Total_Sales_per_Employee,
    st.PC_Market_Price
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]
JOIN Dim_Customer c ON st.Customer_Name = c.Customer_Name
JOIN Dim_Product p ON st.PC_Model = p.Product_Name
JOIN Dim_Store s ON st.Shop_Name = s.Store_Name
JOIN Dim_Location l ON st.City = l.City
JOIN Dim_Department d ON st.Sales_Person_Department = d.Department_Name
JOIN Dim_Payment pay ON st.Payment_Method = pay.Payment_Method
JOIN Dim_Priority pr ON st.Priority = pr.Priority_Name
JOIN Dim_Channel ch ON st.Channel = ch.Channel_Name
JOIN Dim_Date dt ON st.Purchase_Date = dt.Date;