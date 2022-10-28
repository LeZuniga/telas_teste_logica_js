USE [Proper_Base]
GO

/****** Object:  Table [dbo].[Transportation_Nodes]    Script Date: 23/01/2021 12:56:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Transportation_Node](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[analysis_id] [numeric](18, 0) NULL,
	[code] [nvarchar](50) NULL,
	[description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Transportation_Node] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.TransportationNode', N'Menu - Basic Data - TransportationNode', N'Menu', N'BasicInformation', N'TransportationNode', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'transportationNode', N'1.02.14', NULL, NULL)
