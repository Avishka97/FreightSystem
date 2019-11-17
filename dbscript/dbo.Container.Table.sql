USE [FreightSystem]
GO
/****** Object:  Table [dbo].[Container]    Script Date: 11/18/2019 2:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Container](
	[ContainerID] [int] IDENTITY(1,1) NOT NULL,
	[BL_ID] [int] NOT NULL,
	[JobID] [int] NOT NULL,
	[ContainerNO] [varchar](max) NULL,
	[ContainerSize] [int] NULL,
	[ContainerType] [varchar](max) NULL,
	[SeallNo] [varchar](max) NULL,
	[TotalPackages] [int] NULL,
	[PackageType] [varchar](max) NULL,
	[TotalGrossWeight] [float] NULL,
	[TotalNetWeight] [float] NULL,
	[TotalCBM] [float] NULL,
	[COMMODITY] [varchar](max) NULL,
	[TMP] [float] NULL,
	[Remark] [varchar](max) NULL,
 CONSTRAINT [PK_Container] PRIMARY KEY CLUSTERED 
(
	[ContainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
