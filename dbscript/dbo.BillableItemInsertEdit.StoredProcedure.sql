USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[BillableItemInsertEdit]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[BillableItemInsertEdit]
@BillableItemID int,
@InvoiceID int,
@ExRate float,
@Description varchar(max),
@Volume float,
@RateInUSD float,
@RateInLKR float,
@Revenue float,
@TotalRevenue float
As
declare
@createddate datetime,
@updateddate datetime

set @createddate= (SELECT getdate());
set @updateddate= (SELECT getdate());

IF @BillableItemID = 0
INSERT INTO BillableItems(InvoiceID,ExRate,Description,RateInUSD,RateInLKR,Revenue,TotalRevenue,createddate,updateddate)
VALUES (@InvoiceID,@ExRate,@Description,@RateInUSD,@RateInLKR,@Revenue,@TotalRevenue,@createddate,@updateddate)
ELSE
UPDATE BillableItems
SET
ExRate=@ExRate ,
Description=@Description ,
Volume=@Volume ,
RateInUSD=@RateInUSD,
RateInLKR=@RateInLKR ,
Revenue = @Revenue,
TotalRevenue=@TotalRevenue,
updateddate=@updateddate

Where BillableItemID = @BillableItemID 



GO
