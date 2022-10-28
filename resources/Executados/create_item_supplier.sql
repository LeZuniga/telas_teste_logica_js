USE [Proper_Base]
GO

/****** Object:  Table [dbo].[Item_Supplier]    Script Date: 23/01/2021 18:43:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Item_Supplier](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[analysis_id] [numeric](18, 0) NULL,
	[item_id] [numeric](18, 0) NULL,
	[company_id] [numeric](18, 0) NULL,
	[company_unit_id] [numeric](18, 0) NULL,
	[Lead_time_unit] [nvarchar](2) NULL,
	[Lead_time_minimum] [numeric](18, 4) NULL,
	[Lead_time_average] [numeric](18, 4) NULL,
	[Lead_time_maximum] [numeric](18, 4) NULL,
	[Lot_size_minimum] [numeric](18, 4) NULL,
	[Lot_size_multiple] [numeric](18, 4) NULL,
	[Setup_efficiency] [numeric](18, 4) NULL,
	[First_production] [date] NULL,
	[Last_production] [date] NULL,
 CONSTRAINT [PK_Item_Supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.ItemSupplier', N'Menu - Basic Data - ItemSupplier', N'Menu', N'BasicInformation', N'ItemSupplier', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'itemSupplier', N'1.02.15', NULL, NULL)
