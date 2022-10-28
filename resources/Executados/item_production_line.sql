USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Item_Production_Line](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Item_id] [numeric](18, 0) NULL,
	[Production_line_id] [numeric](18, 0) NULL,
	[First_production] [date] NULL,
	[Last_production] [date] NULL
) ON [PRIMARY]
GO

