USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[ContainerInsertEdit]    Script Date: 11/22/2019 6:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ContainerInsertEdit]
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
INSERT INTO Container(BL_ID,JobID,ContainerNO,ContainerSize,ContainerType,SeallNo,TotalPackages,PackageType,TotalGrossWeight,TotalNetWeight,TotalCBM,COMMODITY,TMP,Remark)
VALUES (@BL_ID,@JobID,@ContainerNO,@ContainerSize,@ContainerType,@SeallNo,@TotalPackages,@PackageType,@TotalGrossWeight,@TotalNetWeight,@TotalCBM,@COMMODITY,@TMP,@Remark)
ELSE
UPDATE Container
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
