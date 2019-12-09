USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[ImporBLInsertEdit]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[ImporBLInsertEdit]
@BLID int,
@JobNo int,
@BLNo varchar(max),
@Shipper varchar(max),
@ShipperAdd varchar(max),
@Consignee varchar(max),
@ConsigneeAdd varchar(max),
@NotifyParty varchar(max),
@NotifyPartyAdd varchar(max),
@MarksandNumbers varchar(max),
@Description varchar(max),
@GrossWeight float,
@NetWeight float,
@NoOfPackages int,
@ETA date,
@SOBDate date,
@POL varchar(max),
@POD varchar(max),
@Vesel varchar(max),
@Voyage varchar(max)
As
declare
@createddate datetime,
@updateddate datetime,
@container varchar(max)

set @createddate= (SELECT getdate());
set @updateddate= (SELECT getdate());
set @container =(SELECT STUFF((SELECT char(10)+ US.ContainerNO FROM ContainerImport US WHERE US.BL_ID = SS.BLID FOR XML PATH('')), 1, 1, '') [SECTORS/USERS] FROM ImportBL SS where BLID=@BLID and JobNo=@JobNo)

IF @BLID = 0
INSERT INTO ImportBL(JobNo,BLNo,Shipper,ShipperAdd,Consignee,ConsigneeAdd,NotifyParty,NotifyPartyAdd,MarksandNumbers,Description,GrossWeight,NetWeight,NoOfPackages,ETA,SOBDate,POL,POD,Vesel,Voyage,createddate,updateddate,ContainerNO)
VALUES (@JobNo,@BLNo,@Shipper,@ShipperAdd,@Consignee,@ConsigneeAdd,@NotifyParty,@NotifyPartyAdd,@MarksandNumbers,@Description,@GrossWeight,@NetWeight,@NoOfPackages,@ETA,@SOBDate,@POL,@POD,@Vesel,@Voyage,@createddate,@updateddate,@container)
ELSE
UPDATE ImportBL
SET
Shipper=@Shipper ,
ShipperAdd=@ShipperAdd,
Consignee=@Consignee ,
ConsigneeAdd=@ConsigneeAdd ,
NotifyParty=@NotifyParty ,
NotifyPartyAdd=@NotifyPartyAdd ,
MarksandNumbers=@MarksandNumbers,
Description=@Description ,
GrossWeight=@GrossWeight,
NetWeight=@NetWeight,
NoOfPackages=@NoOfPackages,
ETA=@ETA,
SOBDate=@SOBDate,
POL=@POL,
POD=@POD,
Vesel=@Vesel,
Voyage=@Voyage,
updateddate=@updateddate,
ContainerNO=@container

Where BLID = @BLID and BLNo=@BLNo 

GO
