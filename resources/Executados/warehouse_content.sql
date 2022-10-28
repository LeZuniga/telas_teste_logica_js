USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Warehouse_Content](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Management_unit_id] [numeric](18, 0) NULL,
	[item_id] [numeric](18, 0) NULL,
	[Demand_category_classification_01_id] [numeric](18, 0) NULL,
	[Demand_category_classification_02_id] [numeric](18, 0) NULL,
	[Demand_category_classification_03_id] [numeric](18, 0) NULL,
	[Demand_category_classification_04_id] [numeric](18, 0) NULL,
	[Demand_category_classification_05_id] [numeric](18, 0) NULL,
	[Warehouse_id] [numeric](18, 0) NULL,
	[Date] [datetime] NULL,
	[Quantity_on_hand] [numeric](18, 4) NULL,
	[Spu_id] [numeric](18, 0) NULL
) ON [PRIMARY]
GO


