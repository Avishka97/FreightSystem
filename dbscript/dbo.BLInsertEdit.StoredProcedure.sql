USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[BLInsertEdit]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[BLInsertEdit]
@BLID int,
@JobNo int,
@BLNo varchar(max),
@Shipper varchar(max),
@ShipperAdd varchar(max),
@Consignee varchar(max),
@ConsigneeAdd varchar(max),
@NotifyParty varchar(max),
@NotifyPartyAdd varchar(max),
@DiliveryAgent varchar(max),
@FinalDestination varchar(max),
@Description varchar(max),
@GrossWeight float,
@NetWeight float,
@NoOfPackages int,
@CBM float,
@Freight varchar(max),
@SOBDate date,
@POL varchar(max),
@POD varchar(max),
@POR varchar(max),
@POFD varchar(max),
@Vesel varchar(max),
@Voyage varchar(max),
@MarksandNumbers varchar(max),
@LCL_FCL varchar(max),
@TypeOfMovement varchar(max),
@BLType varchar(max),
@NoOfOriginals varchar(max),
@AttachedSheet varchar(max),
@ATMarksandNumbers varchar(max),
@ATDescription varchar(max),
@ATContainerNO varchar(max)
As
declare
@createddate datetime,
@updateddate datetime,
@container varchar(max)

set @createddate= (SELECT getdate());
set @updateddate= (SELECT getdate());
set @container =(SELECT STUFF((SELECT char(10)+ US.ContainerNO FROM Container US WHERE US.BL_ID = SS.BLID FOR XML PATH('')), 1, 1, '') [SECTORS/USERS] FROM BL SS where BLID=@BLID and JobNo=@JobNo)

IF @BLID = 0
INSERT INTO BL(JobNo,BLNo,Shipper,ShipperAdd,Consignee,ConsigneeAdd,NotifyParty,NotifyPartyAdd,DiliveryAgent,FinalDestination,Description,GrossWeight,NetWeight,NoOfPackages,CBM,Freight,SOBDate,POL,POD,POR,POFD,Vesel,Voyage,MarksandNumbers,LCL_FCL,TypeOfMovement,createddate,updateddate,ContainerNO,BLType,NoOfOriginals,AttachedSheet,ATMarksandNumbers,ATDescription,ATContainerNO)
VALUES (@JobNo,@BLNo,@Shipper,@ShipperAdd,@Consignee,@ConsigneeAdd,@NotifyParty,@NotifyPartyAdd,@DiliveryAgent,@FinalDestination,@Description,@GrossWeight,@NetWeight,@NoOfPackages,@CBM,@Freight,@SOBDate,@POL,@POD,@POR,@POFD,@Vesel,@Voyage,@MarksandNumbers,@LCL_FCL,@TypeOfMovement,@createddate,@updateddate,@container,@BLType,@NoOfOriginals,@AttachedSheet,@ATMarksandNumbers,@ATDescription,@ATContainerNO)
ELSE
UPDATE BL
SET
Shipper=@Shipper ,
ShipperAdd=@ShipperAdd,
Consignee=@Consignee ,
ConsigneeAdd=@ConsigneeAdd ,
NotifyParty=@NotifyParty ,
NotifyPartyAdd=@NotifyPartyAdd ,
DiliveryAgent=@DiliveryAgent,
FinalDestination=@FinalDestination ,
Description=@Description ,
GrossWeight=@GrossWeight,
NetWeight=@NetWeight,
NoOfPackages=@NoOfPackages,
CBM=@CBM,
Freight=@Freight,
SOBDate=@SOBDate,
POL=@POL,
POD=@POD,
POR=@POR,
POFD=@POFD,
Vesel=@Vesel,
Voyage=@Voyage,
MarksandNumbers=@MarksandNumbers,
LCL_FCL=@LCL_FCL,
TypeOfMovement=@TypeOfMovement,
updateddate=@updateddate,
ContainerNO=@container,
BLType = @BLType,
NoOfOriginals = @NoOfOriginals,
AttachedSheet = @AttachedSheet,
ATMarksandNumbers = @ATMarksandNumbers,
ATDescription = @ATDescription,
ATContainerNO = @ATContainerNO

Where BLID = @BLID and BLNo=@BLNo 
GO
