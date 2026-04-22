USE [Staging_Computer_Store]
GO

DECLARE @RC int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[sp_dim_channel] 
GO


