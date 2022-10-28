USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[Spu_Inventory_Performance](
id [numeric](18, 0) IDENTITY(1,1) NOT NULL,
Analysis_id [numeric](18, 0) NOT NULL,
Spu_id [numeric](18, 0) NULL,
Date [datetime] NULL,
Repeatability [nvarchar](2) NULL,
Relevance [nvarchar](2) NULL,
Variability [nvarchar](2) NULL,
Predictability [nvarchar](2) NULL,
Planning_method [nvarchar](2) NULL,
Historical_demand_average_quantity_standard_bucket [numeric](18, 4) NULL,
Historical_demand_average_value_standard_bucket [numeric](18, 4) NULL,
Average_inventory_quantity [numeric](18, 4) NULL,
Average_inventory_value [numeric](18, 4) NULL,
Average_inventory_coverage [numeric](18, 4) NULL,
Current_inventory_quantity [numeric](18, 4) NULL,
Current_inventory_value [numeric](18, 4) NULL,
Current_inventory_coverage [numeric](18, 4) NULL,
Minimum_stock_quantity [numeric](18, 4) NULL,
Maximum_stock_quantity [numeric](18, 4) NULL,
Minimum_stock_value [numeric](18, 4) NULL,
Maximum_stock_value [numeric](18, 4) NULL,
Bellow_minimum_value [numeric](18, 4) NULL,
Above_maximum_value [numeric](18, 4) NULL
) ON [PRIMARY]
GO


