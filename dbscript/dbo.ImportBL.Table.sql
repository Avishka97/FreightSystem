USE [FreightSystem]
GO
/****** Object:  Table [dbo].[ImportBL]    Script Date: 12/14/2019 4:36:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportBL](
	[BLID] [int] IDENTITY(1,1) NOT NULL,
	[JobNo] [int] NOT NULL,
	[BLNo] [varchar](max) NOT NULL,
	[Shipper] [varchar](max) NULL,
	[ShipperAdd] [varchar](max) NULL,
	[Consignee] [varchar](max) NULL,
	[ConsigneeAdd] [varchar](max) NULL,
	[NotifyParty] [varchar](max) NULL,
	[NotifyPartyAdd] [varchar](max) NULL,
	[MarksandNumbers] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[GrossWeight] [float] NULL,
	[NetWeight] [float] NULL,
	[NoOfPackages] [int] NULL,
	[ETA] [date] NULL,
	[SOBDate] [date] NULL,
	[POL] [varchar](max) NULL,
	[POD] [varchar](max) NULL,
	[Vesel] [varchar](max) NULL,
	[Voyage] [varchar](max) NULL,
	[createddate] [datetime] NULL,
	[updateddate] [datetime] NULL,
	[ContainerNO] [varchar](max) NULL,
 CONSTRAINT [PK_ImportBL] PRIMARY KEY CLUSTERED 
(
	[BLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
