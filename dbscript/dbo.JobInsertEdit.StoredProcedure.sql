USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[JobInsertEdit]    Script Date: 11/22/2019 6:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[JobInsertEdit]
@JobNo int,
@JobType varchar(MAX),
@CustomerID int ,
@PortOfLoading varchar(MAX),
@PortOfDischarge varchar(MAX),
@Vesel varchar(MAX),
@ETD varchar(MAX),
@ShippingLine varchar(MAX),
@Terminal varchar(MAX),
@LCL_FCL varchar(MAX),
@BLStatus varchar(MAX),
@ReleaseOrderNo varchar(MAX),
@SalesPerson varchar(MAX),
@CustomerServicePerson varchar(MAX),
@FinalDestination varchar(MAX),
@ETAFD varchar(MAX),
@FCLCutOff varchar(MAX)
As
IF @JobNo = 0
INSERT INTO Job(CustomerID,JobType,PortOfLoading,PortOfDischarge,Vesel,ETD,ShippingLine,Terminal,LCL_FCL,BLStatus,ReleaseOrderNo,SalesPerson,CustomerServicePerson,FinalDestination,ETAFD,FCLCutOff)
VALUES (@CustomerID,@JobType,@PortOfLoading,@PortOfDischarge,@Vesel,@ETD,@ShippingLine,@Terminal,@LCL_FCL,@BLStatus,@ReleaseOrderNo,@SalesPerson,@CustomerServicePerson,@FinalDestination,@ETAFD,@FCLCutOff)
ELSE
UPDATE Job
SET
CustomerID=@CustomerID ,
JobType=@JobType,
PortOfLoading=@PortOfLoading ,
PortOfDischarge=@PortOfDischarge,
Vesel=@Vesel ,
ETD=@ETD ,
ShippingLine=@ShippingLine ,
Terminal=@Terminal ,
LCL_FCL=@LCL_FCL,
BLStatus=@BLStatus ,
ReleaseOrderNo=@ReleaseOrderNo ,
SalesPerson=@SalesPerson,
CustomerServicePerson=@CustomerServicePerson,
FinalDestination = @FinalDestination,
ETAFD = @ETAFD,
FCLCutOff = @FCLCutOff
Where JobNo = @JobNo 
GO
