USE [FreightSystem]
GO
/****** Object:  Table [dbo].[BillableItems]    Script Date: 11/22/2019 6:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillableItems](
	[BillableItemID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[Description] [varchar](max) NULL,
	[Volume] [float] NULL,
	[RateInUSD] [float] NULL,
	[RateInLKR] [float] NULL,
	[Revenue] [float] NULL,
	[TotalRevenue] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
