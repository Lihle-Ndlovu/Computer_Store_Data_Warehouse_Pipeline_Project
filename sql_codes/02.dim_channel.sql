----Dim Channel
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Channel];
SELECT DISTINCT
    [Channel]
INTO [Staging_Computer_Store].[dbo].[Dim_Channel]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

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