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
	[PC_Market_Price] [int] NOT NULL,

 CONSTRAINT fk_CustomerID FOREIGN KEY (CustomerID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Customer](CustomerID),

    CONSTRAINT fk_ProductID FOREIGN KEY (ProductID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Product](ProductID),

    CONSTRAINT fk_StoreID FOREIGN KEY (StoreID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Store](StoreID),

    CONSTRAINT fk_LocationID FOREIGN KEY (LocationID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Location](LocationID),

    CONSTRAINT fk_DepartmentID FOREIGN KEY (DepartmentID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Department](DepartmentID),

    CONSTRAINT fk_PaymentID FOREIGN KEY (PaymentID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Payment](PaymentID),

    CONSTRAINT fk_PriorityID FOREIGN KEY (PriorityID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Priority](PriorityID),

    CONSTRAINT fk_ChannelID FOREIGN KEY (ChannelID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Channel](ChannelID),

    CONSTRAINT fk_DateID FOREIGN KEY (DateID)
        REFERENCES [Staging_Computer_Store].[dbo].[Dim_Date](DateID)
);

----insert values into table from raw data
INSERT INTO [Staging_Computer_Store].[dbo].[Fact_Table](
    [Cost_Price],
	[Sale_Price],
	[Discount_Amount],
	[Finance_Amount],
	[Credit_Score],
	[Cost_of_Repairs],
	[Total_Sales_per_Employee],
	[PC_Market_Price]
    )

SELECT DISTINCT 
    [Cost_Price],
	[Sale_Price],
	[Discount_Amount],
	[Finance_Amount],
	[Credit_Score],
	[Cost_of_Repairs],
	[Total_Sales_per_Employee],
	[PC_Market_Price]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---Show all

SELECT *
FROM [Staging_Computer_Store].[dbo].[Fact_Table]
