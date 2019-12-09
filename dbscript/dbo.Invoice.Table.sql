USE [FreightSystem]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [varchar](max) NOT NULL,
	[JobNo] [int] NOT NULL,
	[BLNO] [varchar](max) NOT NULL,
	[FreightType] [varchar](max) NULL,
	[Shipper] [varchar](max) NULL,
	[ShipperAdd] [varchar](max) NULL,
	[Consignee] [varchar](max) NULL,
	[ConsigneeAdd] [varchar](max) NULL,
	[BillingAdd] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Vesel] [varchar](max) NULL,
	[Voyage] [varchar](max) NULL,
	[ETA] [date] NULL,
	[SOB] [date] NULL,
	[GrossWeight] [float] NULL,
	[NetWeight] [float] NULL,
	[NoOfPackages] [int] NULL,
	[CBM] [float] NULL,
	[FinalDestination] [varchar](max) NULL,
	[OriginalPort] [varchar](max) NULL,
	[ShippingLine] [varchar](max) NULL,
	[Reference] [varchar](max) NULL,
	[createddate] [datetime] NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
