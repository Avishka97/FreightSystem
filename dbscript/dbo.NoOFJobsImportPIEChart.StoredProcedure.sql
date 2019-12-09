USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[NoOFJobsImportPIEChart]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NoOFJobsImportPIEChart]
@Year int,
@Month varchar(max)
AS
(select COUNT(JobID)As Count from MasterBLImport where (SELECT DATENAME(month,CreateDate)) = @month and (SELECT Year(CreateDate)) = @Year)
GO
