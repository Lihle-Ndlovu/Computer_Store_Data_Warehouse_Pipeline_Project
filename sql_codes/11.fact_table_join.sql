
DROP TABLE [Staging_Computer_Store].[dbo].[Fact_Table] 

CREATE TABLE [Staging_Computer_Store].[dbo].[Fact_Table](
    [SalesID] INT IDENTITY(1,1) PRIMARY KEY,

    [CustomerID] INT,
    [ProductID] INT,
    [StoreID] INT,
    [LocationID] INT,
    [DepartmentID] INT,
    [PaymentID] INT,
    [PriorityID] INT,
    [ChannelID] INT,

    [Cost_Price] INT,
    [Sale_Price] INT,
    [Discount_Amount] INT,
    [Finance_Amount] INT,

    [Credit_Score] INT,
    [Cost_of_Repairs] INT,
    [Total_Sales_per_Employee] INT,
    [PC_Market_Price] INT,

    [Load_date] DATETIME DEFAULT GETDATE(),

    [Purchase_Date_ID] INT,
    [Ship_Date_ID] INT
);

INSERT INTO [Staging_Computer_Store].[dbo].[Fact_Table] (
    CustomerID,
    ProductID,
    StoreID,
    LocationID,
    DepartmentID,
    PaymentID,
    PriorityID,
    ChannelID,
    Purchase_Date_ID,
    Ship_Date_ID,
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
    py.PaymentID,
    pr.PriorityID,
    ch.ChannelID,
    dp.DateID AS Purchase_Date_ID,
    ds.DateID AS Ship_Date_ID,
    CAST(st.Cost_Price AS INT),
    CAST(st.Sale_Price AS INT),
    CAST(st.Discount_Amount AS INT),
    CAST(st.Finance_Amount AS INT),
    CAST(st.Credit_Score AS INT),
    CAST(st.Cost_of_Repairs AS INT),
    CAST(st.Total_Sales_per_Employee AS INT),
    CAST(st.PC_Market_Price AS INT)
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales] st
----CUSTOMER
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Customer] AS c
    ON st.Customer_Name = c.Customer_Name
    AND st.Customer_Surname = c.Customer_Surname
    AND st.Customer_Contact_Number = c.Customer_Contact_Number
    AND st.Customer_Email_Address = c.Customer_Email_Address

----PRODUCT
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Product] AS p
    ON st.PC_Make = p.PC_Make
    AND st.PC_Model = p.PC_Model
    AND st.Storage_Type = p.Storage_Type
    AND st.Storage_Capacity = p.Storage_Capacity

----STORE
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Store] AS s
    ON st.Shop_Name = s.Shop_Name
    AND st.Shop_Age = s.Shop_Age

----LOCATION
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Location] AS l
    ON st.Continent = l.Continent
    AND st.Country_or_State = l.Country_or_State
    AND st.Province_or_City = l.Province_or_City

----DEPARTMENT
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Department] AS d
    ON st.Sales_Person_Name = d.Sales_Person_Name
    AND st.Sales_Person_Department = d.Sales_Person_Department

----PAYMENT
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Payment] AS py
    ON st.Payment_Method = py.Payment_Method

----PRIORITY
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Priority] AS pr
    ON st.Priority = pr.Priority

----CHANNEL
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Channel] AS ch
    ON st.Channel = ch.Channel

-----DATE (ROLE-PLAYING DIMENSION)

LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Date] AS dp
    ON dp.Full_Date = TRY_CONVERT(DATE, st.Purchase_Date)

LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Date] AS ds
    ON ds.Full_Date = TRY_CONVERT(DATE, st.Ship_Date_Clean)



-----SELECT * FROM [Staging_Computer_Store].[dbo].[Fact_Table]

     



