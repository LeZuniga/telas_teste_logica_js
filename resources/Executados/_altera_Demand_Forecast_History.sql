USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE  TABLE_NAME='Demand_Forecast_History' )
	drop table Demand_Forecast_History;

CREATE TABLE [dbo].[Demand_Forecast_History](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	Forecast_origin_date [datetime] NULL,
	[Spu_id] [numeric](18, 0) NULL,
	[Forecast_horizon_begin_date] [datetime] NULL,
	[Next_bucket_date] [datetime] NULL,
	Demand_forecast_on_next_bucket [numeric](18, 4) NULL,
	[Actual_demand_on_next_bucket] [numeric](18, 4) NULL,
	[Forecast_error_on_next_bucket] [numeric](18, 4) NULL,
	[Percentage_forecast_error_on_next_bucket] [numeric](18, 4) NULL,
	[Demand_forecast_on_lead_time] [numeric](18, 4) NULL,
	[Actual_demand_on_lead_time] [numeric](18, 4) NULL,
	[Forecast_error_on_lead_time] [numeric](18, 4) NULL,
	[Percentage_forecast_error_lead_time] [numeric](18, 4) NULL,
	[Alarm1] [nvarchar](2) NULL,
	[Alarm_2] [nvarchar](2) NULL,
	[Alarm_3] [nvarchar](2) NULL
) ON [PRIMARY]
GO


IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE  TABLE_NAME='Demand_Forecast_history_detail' )
	drop table Demand_Forecast_history_detail;

CREATE TABLE [dbo].[Demand_Forecast_history_detail](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Forecast_origin_Date] [datetime] NULL,
	[Spu_id] [numeric](18, 0) NULL,
	
	[Bucket_Date] [datetime] NULL,
	[demand_date] [datetime] NULL,
	[Demand_quantity] [numeric](18, 4) NULL,
	[Demand_Detail_Type] [nvarchar](2) NULL,
	[Client_company_id] [numeric](18, 0) NULL,
	[Client_unit_id] [numeric](18, 0) NULL,
	[Plant_id] [numeric](18, 0) NULL,
	[Production_line_id] [numeric](18, 0) NULL,
	[Product_id] [numeric](18, 0) NULL,

	[Origin_spu_id] [numeric](18, 0) NULL,
	[Demand_forecast_history_id] [numeric](18, 0) NULL
) ON [PRIMARY]
GO

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE  TABLE_NAME='Demand_Single_Forecast_History' )
	drop table Demand_Single_Forecast_History;

CREATE TABLE [dbo].[Demand_Single_Forecast_History](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	Forecast_origin_date [datetime] NULL,
	[Spu_id] [numeric](18, 0) NULL,
	[bucket_date] [datetime] NULL,
	Forecast_horizon_begin_date [datetime] NULL,
	Demand_quantity_intrinsic_local_independent_historical [numeric](18, 4) NULL,
	Demand_quantity_intrinsic_local_independent_estimated_similarity [numeric](18, 4) NULL,
	Demand_quantity_intrinsic_local_dependent_historical [numeric](18, 4) NULL,
	Demand_quantity_intrinsic_local_dependent_estimated_similarity [numeric](18, 4) NULL,
	Demand_quantity_intrinsic_local_dependent_estimated_BOM [numeric](18, 4) NULL,
	Demand_quantity_intrinsic_transferred_historical [numeric](18, 4) NULL,
	Demand_quantity_intrinsic_transferred_estimated_similarity [numeric](18, 4) NULL,
	Demand_quantity_intrinsic_transferred_estimated_supply_chain [numeric](18, 4) NULL,
	Demand_quantity_grouped_local_independent_historical [numeric](18, 4) NULL,
	Demand_quantity_grouped_local_independent_estimated [numeric](18, 4) NULL,
	Demand_quantity_grouped_local_dependent_historical [numeric](18, 4) NULL,
	Demand_quantity_grouped_local_dependent_estimated_similarity [numeric](18, 4) NULL,
	Demand_quantity_grouped_local_dependent_estimated_BOM [numeric](18, 4) NULL,
	Demand_quantity_grouped_transferred_historical [numeric](18, 4) NULL,
	Demand_quantity_grouped_transferred_estimated_similarity [numeric](18, 4) NULL,
	Demand_quantity_grouped_transferred_estimated_supply_chain [numeric](18, 4) NULL,
	Demand_quantity_total [numeric](18, 4) NULL,
	Demand_quantity_outlier_analysis [numeric](18, 4) NULL,
	Demand_quantity_suggested [numeric](18, 4) NULL,
	Demand_quantity_user [numeric](18, 4) NULL,
	User_note [nvarchar](4000) NULL,
	Demand_quantity_effective [numeric](18, 4) NULL

) ON [PRIMARY]
GO


IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE  TABLE_NAME='Demand_Single_Forecast_history_detail' )
	drop table Demand_Single_Forecast_history_detail;
CREATE TABLE [dbo].[Demand_Single_Forecast_history_detail](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Forecast_origin_Date] [datetime] NULL,
	[Spu_id] [numeric](18, 0) NULL,
	
	[Bucket_Date] [datetime] NULL,
	[demand_date] [datetime] NULL,
	[Demand_quantity] [numeric](18, 4) NULL,
	[Demand_Detail_Type] [nvarchar](2) NULL,
	[Client_company_id] [numeric](18, 0) NULL,
	[Client_unit_id] [numeric](18, 0) NULL,
	[Plant_id] [numeric](18, 0) NULL,
	[Production_line_id] [numeric](18, 0) NULL,
	[Product_id] [numeric](18, 0) NULL,

	[Origin_spu_id] [numeric](18, 0) NULL,
	[Demand_Single_Forecast_History_id] [numeric](18, 0) NULL
) ON [PRIMARY]
GO  