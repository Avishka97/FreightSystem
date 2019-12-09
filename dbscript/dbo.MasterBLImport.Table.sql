USE [FreightSystem]
GO
/****** Object:  Table [dbo].[MasterBLImport]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterBLImport](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[ManifestType] [varchar](max) NULL,
	[JobType] [varchar](max) NULL,
	[ModeOfTransport] [varchar](max) NULL,
	[MasterBL] [varchar](max) NULL,
	[Currency] [varchar](max) NULL,
	[ExRate] [float] NULL,
	[Vessel] [varchar](max) NULL,
	[Voyage] [varchar](max) NULL,
	[ETA] [date] NULL,
	[SubManifest] [varchar](max) NULL,
	[POL] [varchar](max) NULL,
	[POD] [varchar](max) NULL,
	[SOB] [date] NULL,
	[NoOfHBL] [int] NULL,
	[NoOfPackages] [int] NULL,
	[NoOfContainers] [int] NULL,
	[TotalGrossWeight] [float] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_MasterBLImport] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
