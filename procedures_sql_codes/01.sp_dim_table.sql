USE [Staging_Computer_Store]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sp_dim_date]

SELECT	'Return Value' = @return_value

GO
