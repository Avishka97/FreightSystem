USE [FreightSystem]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/09/2019 6:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [varchar](max) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[CAddress] [varchar](max) NOT NULL,
	[BillingAddress] [varchar](max) NOT NULL,
	[Telephone] [varchar](max) NOT NULL,
	[Mobile] [varchar](max) NOT NULL,
	[Fax] [varchar](max) NULL,
	[TaxNo] [varchar](max) NOT NULL,
	[VatNo] [varchar](max) NOT NULL,
	[TinNo] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
