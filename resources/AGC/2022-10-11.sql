USE [Proper_Agc]
GO

/****** Object:  Table [dbo].[Permission]    Script Date: 11/10/2022 09:25:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Permission](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Function_id] [numeric](18, 0) NULL,
	[Profile_id] [numeric](18, 0) NULL,
	[allow_query] [bit] NULL,
	[allow_update] [bit] NULL,
	[allow_delete] [bit] NULL,
	[allow_run] [bit] NULL,
	[allow_menu] [bit] NULL
) ON [PRIMARY]
GO