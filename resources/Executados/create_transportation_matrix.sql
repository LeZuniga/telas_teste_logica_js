USE [Proper_Base]
GO

/****** Object:  Table [dbo].[Transportation_Matrix]    Script Date: 26/01/2021 09:45:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Transportation_Matrix](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[analysis_id] [numeric](18, 0) NULL,
	[source_type] [nvarchar](2) NULL,
	[source_id] [numeric](18, 0) NULL,
	[destination_type] [nvarchar](2) NULL,
	[destination_id] [numeric](18, 0) NULL,
	[Transportation_alternative] [nvarchar](2) NULL,
	[Time_unit] [nvarchar](2) NULL,
	[Average_interval] [numeric](18, 4) NULL,
	[Lead_time_minimum] [numeric](18, 4) NULL,
	[Lead_time_average] [numeric](18, 4) NULL,
	[Lead_time_maximum] [numeric](18, 4) NULL,
 CONSTRAINT [PK_Transportation_Matrix] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.TransportationMatrix', N'Menu - Basic Data - TransportationMatrix', N'Menu', N'BasicInformation', N'TransportationMatrix', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'transportationMatrix', N'1.02.16', NULL, NULL)

