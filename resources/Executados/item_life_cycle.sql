USE [Proper_Base]
GO

/****** Object:  Table [dbo].[Life_Cycle_Item]    Script Date: 18/10/2020 07:02:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Life_Cycle_Item](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Item_id] [numeric](18, 0) NULL,
	[Version_date] [date] NULL,
	[Stage_number] [int] NULL,
	[Life_Cycle_Stage] [nvarchar](2) NULL,
	[Duration] [numeric](18, 0) NULL,
	[Duration_Unit] [nvarchar](2) NULL,
	[Planned_date] [date] NULL,
	[Actual_date] [date] NULL,
	[Effective_date] [date] NULL,
	[Note] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
