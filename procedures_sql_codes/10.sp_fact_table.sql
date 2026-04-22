USE [Staging_Computer_Store]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sp_fact_table]

SELECT	'Return Value' = @return_value

GO
