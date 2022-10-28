USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Supply_Alternative](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Management_unit_id] [numeric](18, 0) NULL,
	[Item_id] [numeric](18, 0) NULL,
	[Demand_category_classification_01_id] [numeric](18, 0) NULL,
	[Demand_category_classification_02_id] [numeric](18, 0) NULL,
	[Demand_category_classification_03_id] [numeric](18, 0) NULL,
	[Demand_category_classification_04_id] [numeric](18, 0) NULL,
	[Demand_category_classification_05_id] [numeric](18, 0) NULL,
	[spu_id] [numeric](18, 0) NULL,
	[Alternative_code] [nvarchar](20) NULL,
	[Description] [nvarchar](255) NULL,
	[Type] [nvarchar](2) NULL,
	[Company_id] [numeric](18, 0) NULL,
	[Company_unit_id] [numeric](18, 0) NULL,
	[Management_unit_source_id] [numeric](18, 0) NULL,
	[Source_Demand_category_classification_01_id] [numeric](18, 0) NULL,
	[Source_Demand_category_classification_02_id] [numeric](18, 0) NULL,
	[Source_Demand_category_classification_03_id] [numeric](18, 0) NULL,
	[Source_Demand_category_classification_04_id] [numeric](18, 0) NULL,
	[Source_Demand_category_classification_05_id] [numeric](18, 0) NULL,
	[Source_spu_id] [numeric](18, 0) NULL,
	[Plant_id] [numeric](18, 0) NULL,
	[Production_line_Id] [numeric](18, 0) NULL,
	[Share] [numeric](18, 4) NULL,
	[Unit_cost_average] [numeric](18, 4) NULL,
	[Unit_cost_replenishment] [numeric](18, 4) NULL,
	[Unit_cost_alternate] [numeric](18, 4) NULL,
	[Lead_time_unit] [nvarchar](2) NULL,
	[Lead_time_approval_minimum] [numeric](18, 4) NULL,
	[Lead_time_approval_average] [numeric](18, 4) NULL,
	[Lead_time_approval_maximum] [numeric](18, 4) NULL,
	[Lead_time_production_minimum] [numeric](18, 4) NULL,
	[Lead_time_production_average] [numeric](18, 4) NULL,
	[Lead_time_production_maximum] [numeric](18, 4) NULL,
	[Lead_time_transport_minimum] [numeric](18, 4) NULL,
	[Lead_time_transport_average] [numeric](18, 4) NULL,
	[Lead_time_transport_maximum] [numeric](18, 4) NULL,
	[Lead_time_clearance_minimum] [numeric](18, 4) NULL,
	[Lead_time_clearance_average] [numeric](18, 4) NULL,
	[Lead_time_clearance_maximum] [numeric](18, 4) NULL,
	[Lead_time_total_average] [numeric](18, 4) NULL,
	[Lead_time_total_minimum] [numeric](18, 4) NULL,
	[Lead_time_total_maximum] [numeric](18, 4) NULL,
	[Lead_time_total_standard_deviation] [numeric](18, 4) NULL,
	[Lot_size_multiple] [numeric](18, 4) NULL,
	[Lot_size_minimum] [numeric](18, 4) NULL,
	[lead_Time_approval_Standard_Deviation] [numeric](18, 4) NULL,
	[lead_Time_production_Standard_Deviation] [numeric](18, 4) NULL,
	[lead_Time_transport_Standard_Deviation] [numeric](18, 4) NULL,
	[lead_Time_Clearance_Standard_Deviation] [numeric](18, 4) NULL,
	[Validation_item_code] [bit] NULL,
	[Validation_type] [bit] NULL,
	[Validation_company_code] [bit] NULL,
	[Validation_company_unit_code] [bit] NULL,
	[Validation_supply_SPU] [bit] NULL,
	[Validation_plant_code] [bit] NULL,
	[Validation_share] [bit] NULL,
	[Validation_lead_time_unit] [bit] NULL,
	[Validation_lead_time_approval] [bit] NULL,
	[Validation_lead_time_production] [bit] NULL,
	[Validation_lead_time_transport] [bit] NULL,
	[Validation_lead_time_clearance] [bit] NULL,
	[Validation_minimum_lot_size] [bit] NULL,
	[Validation_multiple_lot_size] [bit] NULL


) ON [PRIMARY]
GO


