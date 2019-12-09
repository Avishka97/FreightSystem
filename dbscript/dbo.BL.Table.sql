USE [FreightSystem]
GO
/****** Object:  Table [dbo].[BL]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BL](
	[BLID] [int] IDENTITY(1,1) NOT NULL,
	[JobNo] [int] NOT NULL,
	[BLNo] [varchar](max) NOT NULL,
	[Shipper] [varchar](max) NULL,
	[ShipperAdd] [varchar](max) NULL,
	[Consignee] [varchar](max) NULL,
	[ConsigneeAdd] [varchar](max) NULL,
	[NotifyParty] [varchar](max) NULL,
	[NotifyPartyAdd] [varchar](max) NULL,
	[DiliveryAgent] [varchar](max) NULL,
	[FinalDestination] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[GrossWeight] [float] NULL,
	[NetWeight] [float] NULL,
	[NoOfPackages] [int] NULL,
	[CBM] [float] NULL,
	[Freight] [varchar](max) NULL,
	[SOBDate] [date] NULL,
	[POL] [varchar](max) NULL,
	[POD] [varchar](max) NULL,
	[POR] [varchar](max) NULL,
	[POFD] [varchar](max) NULL,
	[Vesel] [varchar](max) NULL,
	[Voyage] [varchar](max) NULL,
	[MarksandNumbers] [varchar](max) NULL,
	[LCL_FCL] [varchar](max) NULL,
	[TypeOfMovement] [varchar](max) NULL,
	[createddate] [datetime] NOT NULL,
	[updateddate] [datetime] NOT NULL,
	[ContainerNO] [varchar](max) NULL,
	[BLType] [varchar](max) NULL,
	[NoOfOriginals] [varchar](max) NULL,
	[AttachedSheet] [varchar](max) NULL,
	[ATMarksandNumbers] [varchar](max) NULL,
	[ATDescription] [varchar](max) NULL,
	[ATContainerNO] [varchar](max) NULL,
	[ETA] [date] NULL,
 CONSTRAINT [PK_BL] PRIMARY KEY CLUSTERED 
(
	[BLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
