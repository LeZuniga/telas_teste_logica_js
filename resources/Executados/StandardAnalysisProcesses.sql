USE [Proper_Base]
GO

/****** Object:  Table [dbo].[Standard_Analysis_Processes]    Script Date: 08/10/2020 15:15:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Standard_Analysis_Processes](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[management_group_id] [numeric](18, 0) NULL,
	[Process_step] [int] NULL,
	[standard_Process_Id] [nchar](10) NULL,
	[proper_Company_Id] [numeric](18, 0) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Analysis_Process_Control](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Standard_analysis_processes_id] [numeric](18, 0) NULL,
	[Status] [nvarchar](2) NULL,
	[Responsible_id] [numeric](18, 0) NULL,
	[Begin_date_planned] [datetime] NULL,
	[End_date_planned] [datetime] NULL,
	[Begin_date_actual] [datetime] NULL,
	[End_date_actual] [datetime] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Standard_Processes](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Standard_Processes_description] [nvarchar](255) NULL
) ON [PRIMARY]
GO



