USE [FreightSystem]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 11/18/2019 2:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[JobNo] [int] IDENTITY(1,1) NOT NULL,
	[JobType] [varchar](max) NULL,
	[CustomerID] [int] NULL,
	[PortOfLoading] [varchar](max) NULL,
	[PortOfDischarge] [varchar](max) NULL,
	[Vesel] [varchar](max) NULL,
	[ETD] [varchar](max) NULL,
	[ShippingLine] [varchar](max) NULL,
	[Terminal] [varchar](max) NULL,
	[LCL_FCL] [varchar](max) NULL,
	[BLStatus] [varchar](max) NULL,
	[ReleaseOrderNo] [varchar](max) NULL,
	[SalesPerson] [varchar](max) NULL,
	[CustomerServicePerson] [varchar](max) NULL,
	[FinalDestination] [varchar](max) NULL,
	[ETAFD] [varchar](max) NULL,
	[FCLCutOff] [varchar](max) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
