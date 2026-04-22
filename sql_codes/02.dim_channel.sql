<<<<<<< HEAD
----Dim_Channel
=======
----Dim Channel
DROP TABLE IF EXISTS [Staging_Computer_Store].[dbo].[Dim_Channel];
SELECT DISTINCT
    [Channel]
INTO [Staging_Computer_Store].[dbo].[Dim_Channel]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales];

----Inserting into Dim_Channel table(adding primary Key)Dim_Channel
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
DROP TABLE[Staging_Computer_Store].[dbo].[Dim_Channel]
CREATE TABLE[Staging_Computer_Store].[dbo].[Dim_Channel](
    [ChannelID] INT IDENTITY (1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
) 

INSERT INTO [Staging_Computer_Store].[dbo].[Dim_Channel]
([Channel])

SELECT DISTINCT 
                [Channel]
FROM [Staging_Computer_Store].[dbo].[raw_computer_sales]

<<<<<<< HEAD
--SELECT * FROM [Staging_Computer_Store]. [dbo].[Dim_Channel]
=======
---select * FROM [Staging_Computer_Store]. [dbo].[Dim_Channel]
>>>>>>> a4b0cc0bb4bb0a4891bd8fc065d380d50b3cdf47
