USE [Chicago-Food-Inspection]
GO

/****** Object:  Table [dbo].[STG_CHI_Food_Inspection]    Script Date: 2/26/2023 23:05:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_CHI_Food_Inspection]') AND type in (N'U'))
DROP TABLE [dbo].[STG_CHI_Food_Inspection]
GO

/****** Object:  Table [dbo].[STG_CHI_Food_Inspection]    Script Date: 2/26/2023 23:05:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_CHI_Food_Inspection](
	[InspectionStgID] [int] NULL,
	[Inspection_ID] [int] NULL,
	[DBA] [nvarchar](254) NULL,
	[AKA] [nvarchar](254) NULL,
	[License] [int] NULL,
	[Facility_Type] [nvarchar](254) NULL,
	[Risk] [nvarchar](254) NULL,
	[Address] [nvarchar](254) NULL,
	[City] [nvarchar](254) NULL,
	[State] [nvarchar](254) NULL,
	[Zip] [int] NULL,
	[Inspection_Date] [nvarchar](254) NULL,
	[Inspection_Date_DT] [date] NULL,
	[Inspection_Type] [varchar](254) NULL,
	[Results] [nvarchar](254) NULL,
	[Violations] [nvarchar](max) NULL,
	[Latitude] [real] NULL,
	[Longitude] [real] NULL,
	[Location] [nvarchar](254) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_WorkflowFileName] [nvarchar](254) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

