use proper_Base
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Planner_Status_History](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	Planner_id [numeric](18, 0) NOT NULL,
	[Date] [date] NULL,
	[Status] [nchar](2) NULL,
 CONSTRAINT [PK_Planner_Status_History] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

