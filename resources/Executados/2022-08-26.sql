USE [Proper_Base]
GO

DROP TABLE Spu_Inventory_Performance;
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Spu_Inventory_Performance](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NOT NULL,
	[Spu_id] [numeric](18, 0) NULL,
	[Date] [datetime] NULL,
	Planner_Id [numeric](18, 0) NOT NULL,
	[Lead_time_minimum] float(53) NULL,
	[Lead_time_modal_value] float(53) NULL,
	[Lead_time_average] float(53) NULL,
	[Lead_time_maximum] float(53) NULL,
	[Lead_time_unit] [nvarchar](2) NULL,
	Lot_size_minimum float(53) NULL,
	Lot_size_multiple float(53) NULL,
	Unit_cost float(53) NULL,
	Current_stage [nvarchar](2) NULL,
	Relevant_history_begin [datetime] NULL,
	Relevant_history_end [datetime] NULL,
	Repeatability [nvarchar](2) NULL,
	Variability_relevance [nvarchar](2) NULL,
	Predictability [nvarchar](2) NULL,
	Planning_method [nvarchar](2) NULL,
	Overall_criticality float(53) NULL,
	Service_level float(53) NULL,
	Push_vs_Pull_difference_value float(53) NULL,
	Safety_stock_quantity float(53) NULL,
	EOQ_quantity float(53) NULL,
	Maximum_inventory_quantity float(53) NULL,
	Average_inventory_quantity float(53) NULL,
	Average_inventory_value float(53) NULL,
	Historical_demand_quantity_standard_bucket float(53) NULL,
	Historical_demand_value_standard_bucket float(53) NULL,
	Historical_demand_average_quantity_lead_time float(53) NULL,
	Historical_demand_average_value_lead_time float(53) NULL,
	Last_standard_bucket_date [datetime] NULL,
	Last_standard_bucket_demand_quantity float(53) NULL,
	Last_standard_bucket_demand_value float(53) NULL,
	Current_lead_time_demand_forecast_quantity float(53) NULL,
	Current_lead_time_demand_forecast_value float(53) NULL,
	Current_inventory_quantity float(53) NULL,
	Current_inventory_value float(53) NULL,
	Current_inventory_percentage float(53) NULL,
	Current_inventory_coverage float(53) NULL,
	Inventory_control_status [nvarchar](2) NULL,
	Current_safety_stock_quantity float(53) NULL,
	Current_safety_stock_value float(53) NULL,
	Current_safety_stock_coverage float(53) NULL,
	Current_EOQ_quantity float(53) NULL,
	Current_EOQ_value float(53) NULL,
	Current_EOQ_coverage float(53) NULL,
	Current_maximum_inventory_quantity float(53) NULL,
	Current_maximum_inventory_value float(53) NULL,
	Current_maximum_inventory_coverage float(53) NULL,
	Below_minimum_quantity float(53) NULL,
	Below_minimum_value float(53) NULL,
	Below_minimum_coverage float(53) NULL,
	Above_maximum_quantity float(53) NULL,
	Above_maximum_value float(53) NULL,
	Above_maximum_coverage float(53) NULL,
 CONSTRAINT [PK_Spu_Inventory_Performance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

DROP TABLE Management_Unit_Demand_and_Inventory_Map

CREATE TABLE [dbo].[Demand_and_Inventory_Map](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NOT NULL,
	[Region_code_management_unit_id] [numeric](18, 0) NULL,
	[Management_unit_id] [numeric](18, 0) NULL,
	[Date] [datetime] NULL,
	Proper_management [nvarchar](2) NULL,
	[Repeatability] [nvarchar](2) NULL,
	[Variability_relevance] [nvarchar](2) NULL,
	[Predictability] [nvarchar](2) NULL,
	[Planning_method] [nvarchar](2) NULL,
	Average_inventory_value float(53) NULL,
	Historical_demand_average_value_standard_bucket float(53) NULL,
	Average_inventory_coverage float(53) NULL,
	Current_inventory_value float(53) NULL,
	Last_standard_bucket_demand_value float(53) NULL,
	Current_inventory_coverage float(53) NULL,
	N_SPUs_below_minimum int NULL,
	N_SPUs_between_limits int NULL,
	N_SPUs_above_maximum int NULL,
	N_SPUs_undefined_policy int NULL,
	Minimum_inventory_value float(53) NULL,
	Minimum_inventory_coverage float(53) NULL,
	Maximum_inventory_value float(53) NULL,
	Maximum_inventory_coverage float(53) NULL,
	Below_minimum_value float(53) NULL,
	Above_maximum_value float(53) NULL,
	Balancing_index_n_SPUs float(53) NULL,
	Balancing_index_value float(53) NULL,
	Number_of_supplies_per_month float(53) NULL,
	
 CONSTRAINT [PK_Demand_and_Inventory_Map] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



