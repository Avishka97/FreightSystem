USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[BillingItemInsertEdit]    Script Date: 11/22/2019 6:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[BillingItemInsertEdit]
@BillingItemID int,
@InvoiceID int,
@ExRate float,
@Description varchar(max),
@Volume float,
@RateInUSD float,
@RateInLKR float,
@Revenue float,
@CostInUSD float,
@CostInLKR float,
@TotalCost float,
@NetRevenue float
As
declare
@createddate datetime,
@updateddate datetime

set @createddate= (SELECT getdate());
set @updateddate= (SELECT getdate());

IF @BillingItemID = 0
INSERT INTO BillItems(InvoiceID,ExRate,Description,RateInUSD,RateInLKR,Revenue,CostInUSD,CostInLKR,TotalCost,NetRevenue,createddate,updateddate)
VALUES (@InvoiceID,@ExRate,@Description,@RateInUSD,@RateInLKR,@Revenue,@CostInUSD,@CostInLKR,@TotalCost,@NetRevenue,@createddate,@updateddate)
ELSE
UPDATE BillItems
SET
ExRate=@ExRate ,
Description=@Description ,
Volume=@Volume ,
RateInUSD=@RateInUSD,
RateInLKR=@RateInLKR ,
Revenue = @Revenue,
CostInUSD=@CostInUSD ,
CostInLKR=@CostInLKR,
TotalCost=@TotalCost,
NetRevenue=@NetRevenue,
updateddate=@updateddate

Where BillingItemID = @BillingItemID 


GO
