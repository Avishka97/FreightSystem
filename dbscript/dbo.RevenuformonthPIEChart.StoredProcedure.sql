USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[RevenuformonthPIEChart]    Script Date: 12/14/2019 4:36:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[RevenuformonthPIEChart]
@Year int,
@Month varchar(max)
AS
(select SUM(NetRevenue)As NetRevenue from BillItems where (SELECT DATENAME(month,createddate)) = @month and (SELECT Year(createddate)) = @Year)

GO
