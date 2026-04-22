DROP TABLE dbo.Dim_Date;
CREATE TABLE dbo.Dim_Date (
    DateID INT PRIMARY KEY,        -- e.g. 20240101
    Full_Date DATE NOT NULL,
    Day INT NOT NULL,
    Month INT NOT NULL,
    Year INT NOT NULL,
    Load_Date DATETIME DEFAULT GETDATE()
);

INSERT INTO dbo.Dim_Date (DateID, Full_Date, Day, Month, Year)
SELECT DISTINCT
    CONVERT(INT, FORMAT(FullDate, 'yyyyMMdd')),
    FullDate,
    DAY(FullDate),
    MONTH(FullDate),
    YEAR(FullDate)
FROM (
    SELECT CAST(Purchase_Date AS DATE) AS FullDate
    FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]
    UNION
    SELECT 
        TRY_CONVERT(DATE, Ship_Date) AS FullDate
    FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]
) AS dt
WHERE FullDate IS NOT NULL;


<<<<<<< HEAD
=======
--------Inserting into Dim_Date table(adding primary Key)
DROP TABLE[Staging_Computer_Store].[dbo].[Dim_Date]
CREATE TABLE [Staging_Computer_Store].[dbo].[Dim_Date](
    [DateID] INT IDENTITY (1,1) PRIMARY KEY,
	[Purchase_Date] [date] NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
)
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47


<<<<<<< HEAD
=======
SELECT DISTINCT 
                [Purchase_Date],
                [Ship_Date]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Date]
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
