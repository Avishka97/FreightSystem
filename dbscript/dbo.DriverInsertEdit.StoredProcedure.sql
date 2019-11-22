USE [FreightSystem]
GO
/****** Object:  StoredProcedure [dbo].[DriverInsertEdit]    Script Date: 11/22/2019 6:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DriverInsertEdit]
@CustomerID int,
@Company varchar(max),
@Email varchar(max),
@FirstName varchar(max),
@LastName varchar(max),
@Address varchar(max),
@BillingAddress varchar(max),
@Telephone varchar(max),
@Mobile varchar(max),
@Fax varchar(max),
@TaxNo varchar(max),
@VatNo varchar(max),
@TinNo varchar(max)
As
IF @CustomerID = 0
INSERT INTO Customer(Company,Email,FirstName,LastName,CAddress,BillingAddress,Telephone,Mobile,Fax,TaxNo,VatNo,TinNo)
VALUES (@Company,@Email,@FirstName,@LastName,@Address,@BillingAddress,@Telephone,@Mobile,@Fax,@TaxNo,@VatNo,@TinNo)
ELSE
UPDATE Customer
SET
Company=@Company ,
Email=@Email ,
FirstName=@FirstName,
LastName=@LastName ,
CAddress=@Address ,
BillingAddress=@BillingAddress ,
Telephone=@Telephone ,
Mobile=@Mobile,
Fax=@Fax ,
TaxNo=@TaxNo ,
VatNo=@VatNo,
TinNo=@TinNo
Where CustomerID = @CustomerID

GO
