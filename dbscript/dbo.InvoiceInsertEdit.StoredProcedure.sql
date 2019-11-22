USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[InvoiceInsertEdit]    Script Date: 11/22/2019 6:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[InvoiceInsertEdit]
@InvoiceID int,
@Version varchar(max),
@JobNo int,
@BLNO varchar(max),
@FreightType varchar(max),
@Shipper varchar(max),
@ShipperAdd varchar(max),
@Consignee varchar(max),
@ConsigneeAdd varchar(max),
@BillingAdd varchar(max),
@Description varchar(max),
@Vesel varchar(max),
@Voyage varchar(max),
@ETADate datetime,
@SOBDate datetime,
@GrossWeight float,
@NetWeight float,
@NoOfPackages int,
@CBM float,
@FinalDestination varchar(max),
@OriginalPort varchar(max),
@ShippingLine varchar(max),
@Reference varchar(max)
As
declare
@createddate datetime,
@updateddate datetime

set @createddate= (SELECT getdate());
set @updateddate= (SELECT getdate());

IF @InvoiceID = 0
INSERT INTO Invoice(Version,JobNo,BLNO,FreightType,Shipper,ShipperAdd,Consignee,ConsigneeAdd,BillingAdd,Description,Vesel,Voyage,ETA,SOB,GrossWeight,NetWeight,NoOfPackages,CBM,FinalDestination,OriginalPort,ShippingLine,Reference,createddate,updateddate)
VALUES (@Version,@JobNo,@BLNo,@FreightType,@Shipper,@ShipperAdd,@Consignee,@ConsigneeAdd,@BillingAdd,@Description,@Vesel,@Voyage,@ETADate,@SOBDate,@GrossWeight,@NetWeight,@NoOfPackages,@CBM,@FinalDestination,@OriginalPort,@ShippingLine,@Reference,@createddate,@updateddate)
ELSE
UPDATE Invoice
SET
FreightType=@FreightType ,
Shipper=@Shipper ,
ShipperAdd=@ShipperAdd ,
Consignee=@Consignee,
ConsigneeAdd=@ConsigneeAdd ,
BillingAdd=@BillingAdd ,
Description=@Description,
Vesel=@Vesel,
Voyage=@Voyage,
ETA=@ETADate,
SOB=@SOBDate,
GrossWeight=@GrossWeight,
NetWeight=@NetWeight,
NoOfPackages=@NoOfPackages,
CBM=@CBM,
FinalDestination=@FinalDestination,
OriginalPort=@OriginalPort,
ShippingLine=@ShippingLine,
Reference=@Reference,
updateddate=@updateddate

Where InvoiceID = @InvoiceID 

GO
