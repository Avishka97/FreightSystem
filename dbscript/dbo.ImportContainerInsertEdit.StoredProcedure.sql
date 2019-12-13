USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[ImportContainerInsertEdit]    Script Date: 12/14/2019 4:36:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[ImportContainerInsertEdit]
@ContainerID int,
@BL_ID int,
@JobID int ,
@ContainerNO varchar(MAX),
@ContainerSize int,
@ContainerType varchar(MAX),
@SeallNo varchar(MAX),
@TotalPackages int,
@PackageType varchar(MAX),
@TotalGrossWeight float,
@TotalNetWeight float,
@TotalCBM float,
@COMMODITY varchar(MAX),
@TMP float,
@Remark varchar(MAX)
As
IF @ContainerID = 0
INSERT INTO ContainerImport(BL_ID,JobID,ContainerNO,ContainerSize,ContainerType,SeallNo,TotalPackages,PackageType,TotalGrossWeight,TotalNetWeight,TotalCBM,COMMODITY,TMP,Remark)
VALUES (@BL_ID,@JobID,@ContainerNO,@ContainerSize,@ContainerType,@SeallNo,@TotalPackages,@PackageType,@TotalGrossWeight,@TotalNetWeight,@TotalCBM,@COMMODITY,@TMP,@Remark)
ELSE
UPDATE ContainerImport
SET
ContainerNO=@ContainerNO,
ContainerSize=@ContainerSize ,
ContainerType=@ContainerType ,
SeallNo=@SeallNo ,
TotalPackages=@TotalPackages ,
PackageType=@PackageType,
TotalGrossWeight=@TotalGrossWeight ,
TotalNetWeight=@TotalNetWeight,
TotalCBM=@TotalCBM,
COMMODITY = @COMMODITY,
TMP = @TMP,
Remark = @Remark
Where 
ContainerID=@ContainerID 


GO
