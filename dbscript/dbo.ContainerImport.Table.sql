USE [FreightSystem]
GO
/****** Object:  Table [dbo].[ContainerImport]    Script Date: 12/14/2019 4:36:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContainerImport](
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
 CONSTRAINT [PK_ContainerImport] PRIMARY KEY CLUSTERED 
(
	[ContainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
