USE [FreightSystem]
GO
/****** Object:  Table [dbo].[BillableItems]    Script Date: 12/14/2019 4:36:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillableItems](
	[BillableItemID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[ExRate] [float] NULL,
	[Description] [varchar](max) NULL,
	[Volume] [float] NULL,
	[RateInUSD] [float] NULL,
	[RateInLKR] [float] NULL,
	[Revenue] [float] NULL,
	[TotalRevenue] [float] NULL,
	[createddate] [datetime] NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [PK_BillableItems] PRIMARY KEY CLUSTERED 
(
	[BillableItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
