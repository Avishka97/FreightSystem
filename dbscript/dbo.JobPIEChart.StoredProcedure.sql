USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[JobPIEChart]    Script Date: 12/14/2019 4:36:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[JobPIEChart]    
AS
DECLARE 
@SeaImport int,
@SeaExport int,
@AirImport int,
@AirExport int

SET @SeaImport = (select COUNT(JobID) from MasterBLImport  where JobType ='SEA / IMPORT')
SET @SeaExport = (select COUNT(JobNo) from Job  where JobType ='SEA / EXPORT')
SET @AirImport = (select COUNT(JobID) from MasterBLImport  where JobType ='AIR / IMPORT')
SET @AirExport = (select COUNT(JobNo) from Job  where JobType ='AIR / EXPORT')

select 
@SeaImport As JOBS , 'SEA / IMPORT' as Type from Job
UNION
select 
@SeaExport As JOBS, 'SEA / EXPORT' as Type from Job  
UNION 
select 
@AirImport As JOBS , 'AIR / IMPORT' as Type from Job  
UNION
select 
@AirExport As JOBS , 'AIR / EXPORT' as Type from Job   

GO
