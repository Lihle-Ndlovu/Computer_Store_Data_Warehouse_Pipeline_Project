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




