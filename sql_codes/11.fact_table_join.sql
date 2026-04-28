----Fact table join sql

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

    CAST(st.Cost_Price AS INT) AS Cost_Price,
    CAST(st.Sale_Price AS INT) AS Sale_Price,
    CAST(st.Discount_Amount AS INT) AS Discount_Amount,
    CAST(st.Finance_Amount AS INT) AS Finance_Amount,
    CAST(st.Credit_Score AS INT) AS Credit_Score,
    CAST(st.Cost_of_Repairs AS INT) AS Cost_of_Repairs,
    CAST(st.Total_Sales_per_Employee AS INT) AS Total_Sales_per_Employee,
    CAST(st.PC_Market_Price AS INT) AS PC_Market_Price

FROM [Staging_Computer_Store].[dbo].[raw_computer_sales] st

-- CUSTOMER
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Customer] c
    ON st.Customer_Name = c.Customer_Name
    AND st.Customer_Surname = c.Customer_Surname
    AND st.Customer_Contact_Number = c.Customer_Contact_Number
    AND st.Customer_Email_Address = c.Customer_Email_Address

-- PRODUCT
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Product] p
    ON st.PC_Make = p.PC_Make
    AND st.PC_Model = p.PC_Model
    AND st.Storage_Type = p.Storage_Type
    AND st.Storage_Capacity = p.Storage_Capacity

-- STORE
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Store] s
    ON st.Shop_Name = s.Shop_Name
    AND st.Shop_Age = s.Shop_Age

-- LOCATION
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Location] l
    ON st.Continent = l.Continent
    AND st.Country_or_State = l.Country_or_State
    AND st.Province_or_City = l.Province_or_City

-- DEPARTMENT
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Department] d
    ON st.Sales_Person_Name = d.Sales_Person_Name
    AND st.Sales_Person_Department = d.Sales_Person_Department

-- PAYMENT
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Payment] py
    ON st.Payment_Method = py.Payment_Method

-- PRIORITY
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Priority] pr
    ON st.Priority = pr.Priority

-- CHANNEL
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Channel] ch
    ON st.Channel = ch.Channel

-- DATE (Role-playing dimension)
LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Date] dp
    ON dp.Full_Date = CAST(st.Purchase_Date AS DATE)

LEFT JOIN [Staging_Computer_Store].[dbo].[Dim_Date] ds
    ON ds.Full_Date = CAST(st.Ship_Date_Clean AS DATE);


---SELECT * FROM [Staging_Computer_Store].[dbo].[Fact_Table]
