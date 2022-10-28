USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].Warehouse_Content_Interface_Parameters (
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NOT NULL,
	[Validation_demand_category_classification_1] [nvarchar](2) NULL,
	[Validation_demand_category_classification_2] [nvarchar](2) NULL,
	[Validation_demand_category_classification_3] [nvarchar](2) NULL,
	[Validation_demand_category_classification_4] [nvarchar](2) NULL,
	[Validation_demand_category_classification_5] [nvarchar](2) NULL
) ON [PRIMARY]
GO


