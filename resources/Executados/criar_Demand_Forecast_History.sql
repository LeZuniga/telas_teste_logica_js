USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Demand_Forecast_History](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	Forecast_origin_date [datetime] NULL,
	[Spu_id] [numeric](18, 0) NULL,
	[Bucket_Date] [datetime] NULL,
	[Demand_quantity_intrinsic_local_independent_historical] [numeric](18, 4) NULL,
	[Demand_quantity_intrinsic_local_independent_estimated_similarity] [numeric](18, 4) NULL,
	[Demand_quantity_intrinsic_local_dependent_historical] [numeric](18, 4) NULL,
	[Demand_quantity_intrinsic_local_dependent_estimated_similarity] [numeric](18, 4) NULL,
	[Demand_quantity_intrinsic_local_dependent_estimated_BOM] [numeric](18, 4) NULL,
	[Demand_quantity_intrinsic_transferred_historical] [numeric](18, 4) NULL,
	[Demand_quantity_intrinsic_transferred_estimated_similarity] [numeric](18, 4) NULL,
	[Demand_quantity_intrinsic_transferred_estimated_supply_chain] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_local_independent_historical] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_local_independent_estimated] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_local_dependent_historical] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_local_dependent_estimated_similarity] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_local_dependent_estimated_BOM] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_transferred_historical] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_transferred_estimated_similarity] [numeric](18, 4) NULL,
	[Demand_quantity_grouped_transferred_estimated_supply_chain] [numeric](18, 4) NULL,
	[Demand_quantity_total] [numeric](18, 4) NULL,
	[Demand_quantity_outlier_analysis] [numeric](18, 4) NULL,
	[Demand_quantity_suggested] [numeric](18, 4) NULL,
	[Demand_quantity_user] [numeric](18, 4) NULL,
	[User_note] [nvarchar](4000) NULL,
	[Demand_quantity_effective] [numeric](18, 4) NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Demand_Forecast_history_detail](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Forecast_origin_Date] [datetime] NULL,
	[Spu_id] [numeric](18, 0) NULL,
	[Bucket_Date] [datetime] NULL,
	[demand_date] [datetime] NULL,
	[Demand_quantity] [numeric](18, 4) NULL,
	[type_1] [nvarchar](2) NULL,
	[Client_company_id] [numeric](18, 0) NULL,
	[Client_unit_id] [numeric](18, 0) NULL,
	[Plant_id] [numeric](18, 0) NULL,
	[Production_line_id] [numeric](18, 0) NULL,
	[Product_id] [numeric](18, 0) NULL,
	[Origin_spu_id] [numeric](18, 0) NULL,
	[Demand_history_id] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
