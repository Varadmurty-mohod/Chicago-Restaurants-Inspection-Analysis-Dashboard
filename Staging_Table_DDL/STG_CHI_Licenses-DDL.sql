USE [Chicago-Food-Inspection]
GO

/****** Object:  Table [dbo].[STG_CHI_Licenses]    Script Date: 2/26/2023 23:06:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_CHI_Licenses]') AND type in (N'U'))
DROP TABLE [dbo].[STG_CHI_Licenses]
GO

/****** Object:  Table [dbo].[STG_CHI_Licenses]    Script Date: 2/26/2023 23:06:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_CHI_Licenses](
	[LicenseStgID] [int] NULL,
	[ID] [nvarchar](254) NULL,
	[LICENSE ID] [int] NULL,
	[ACCOUNT NUMBER] [int] NULL,
	[SITE NUMBER] [smallint] NULL,
	[LEGAL NAME] [nvarchar](254) NULL,
	[DOING BUSINESS AS NAME] [nvarchar](254) NULL,
	[ADDRESS] [nvarchar](254) NULL,
	[CITY] [nvarchar](254) NULL,
	[STATE] [nvarchar](254) NULL,
	[ZIP CODE] [nvarchar](254) NULL,
	[WARD] [tinyint] NULL,
	[PRECINCT] [smallint] NULL,
	[WARD PRECINCT] [nvarchar](254) NULL,
	[POLICE DISTRICT] [tinyint] NULL,
	[LICENSE CODE] [smallint] NULL,
	[LICENSE DESCRIPTION] [nvarchar](254) NULL,
	[BUSINESS ACTIVITY ID] [nvarchar](254) NULL,
	[BUSINESS ACTIVITY] [nvarchar](254) NULL,
	[LICENSE NUMBER] [int] NULL,
	[APPLICATION TYPE] [nvarchar](254) NULL,
	[APPLICATION CREATED DATE] [nvarchar](254) NULL,
	[APPLICATION REQUIREMENTS COMPLETE] [nvarchar](254) NULL,
	[PAYMENT DATE] [nvarchar](254) NULL,
	[CONDITIONAL APPROVAL] [nvarchar](254) NULL,
	[LICENSE TERM START DATE] [nvarchar](254) NULL,
	[LICENSE TERM EXPIRATION DATE] [nvarchar](254) NULL,
	[LICENSE APPROVED FOR ISSUANCE] [nvarchar](254) NULL,
	[DATE ISSUED] [nvarchar](254) NULL,
	[LICENSE STATUS] [nvarchar](254) NULL,
	[LICENSE STATUS CHANGE DATE] [nvarchar](254) NULL,
	[SSA] [tinyint] NULL,
	[LATITUDE] [float] NULL,
	[LONGITUDE] [float] NULL,
	[LOCATION] [nvarchar](254) NULL,
	[APPLICATION_CREATED_DATE_DT] [date] NULL,
	[APPLICATION_REQUIREMENTS_COMPLETE_DT] [date] NULL,
	[PAYMENT_DATE_DT] [date] NULL,
	[LICENSE_TERM_START_DATE_DT] [date] NULL,
	[LICENSE_TERM_EXPIRATION_DATE_DT] [date] NULL,
	[LICENSE_APPROVED_FOR_ISSUANCE_DT] [date] NULL,
	[DATE_ISSUED_DT] [date] NULL,
	[LICENSE_STATUS_CHANGE_DATE_DT] [date] NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_WorkflowFileName] [nvarchar](254) NULL
) ON [PRIMARY]
GO

