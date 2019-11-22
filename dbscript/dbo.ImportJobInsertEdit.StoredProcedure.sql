USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[ImportJobInsertEdit]    Script Date: 11/22/2019 6:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ImportJobInsertEdit]
@JobID int,
@ManifestType varchar(MAX),
@JobType varchar(MAX),
@ModeOfTransport varchar(MAX) ,
@MasterBL varchar(MAX),
@Currency varchar(MAX),
@ExRate float,
@Voyage varchar(MAX),
@Vessel varchar(MAX),
@ETA date,
@SubManifest varchar(MAX),
@POL varchar(MAX),
@POD varchar(MAX),
@SOB date,
@NoOfHBL int,
@NoOfPackages int,
@NoOfContainers int,
@TotalGrossWeight float
As
declare
@createddate datetime,
@updateddate datetime

set @createddate= (SELECT getdate());
set @updateddate= (SELECT getdate());
IF @JobID = 0
INSERT INTO MasterBLImport(ManifestType,JobType,ModeOfTransport,MasterBL,Currency,ExRate,Vessel,Voyage,ETA,SubManifest,POL,POD,SOB,NoOfHBL,NoOfPackages,NoOfContainers,TotalGrossWeight,CreateDate,UpdatedDate)
VALUES (@ManifestType,@JobType,@ModeOfTransport,@MasterBL,@Currency,@ExRate,@Voyage,@Vessel,@ETA,@SubManifest,@POL,@POD,@SOB,@NoOfHBL,@NoOfPackages,@NoOfContainers,@TotalGrossWeight,@createddate,@updateddate)
ELSE
UPDATE MasterBLImport
SET
ManifestType=@ManifestType ,
JobType=@JobType,
ModeOfTransport=@ModeOfTransport ,
MasterBL=@MasterBL,
Currency=@Currency ,
ExRate=@ExRate ,
Vessel=@Vessel ,
Voyage=@Voyage ,
ETA=@ETA,
SubManifest=@SubManifest ,
POL=@POL ,
POD=@POD,
SOB=@SOB,
NoOfHBL = @NoOfHBL,
NoOfPackages = @NoOfPackages,
NoOfContainers = @NoOfContainers,
TotalGrossWeight = @TotalGrossWeight,
UpdatedDate = @updateddate
Where JobID = @JobID 

GO
