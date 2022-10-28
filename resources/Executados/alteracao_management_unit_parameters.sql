
drop table management_unit_parameter;

CREATE TABLE [dbo].[management_unit_parameter](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[management_unit_id] [numeric](18, 0) NULL,
	[analysis_id] [numeric](18, 0) NULL,


Local_independent_demand_origin [nvarchar](2) NULL,
Local_dependent_estimated_demand_origin [nvarchar](2) NULL,
Local_dependent_demand_origin [nvarchar](2) NULL,
Transferred_estimated_demand_origin [nvarchar](2) NULL,
Transferred_demand_origin [nvarchar](2) NULL,
	[Relevant_history_begin] [datetime] NULL,
	[Relevant_history_end] [datetime] NULL,
	[Relevant_history_duration] [numeric](18, 0) NULL,
	[Relevant_history_duration_unit_of_measure] [nvarchar](2) NULL,
	
	[Criticality_criterion_01_Weight] [numeric](18, 4) NULL,
	[Criticality_criterion_02_Weight] [numeric](18, 4) NULL,
	[Criticality_criterion_03_Weight] [numeric](18, 4) NULL,
	[Criticality_criterion_04_Weight] [numeric](18, 4) NULL,
	[Criticality_criterion_05_Weight] [numeric](18, 4) NULL,
	
	[service_Level_A_Criticality_0] [numeric](18, 4) NULL,
	[service_Level_A_Criticality_10] [numeric](18, 4) NULL,
	[service_Level_B_Criticality_0] [numeric](18, 4) NULL,
	[service_Level_B_Criticality_10] [numeric](18, 4) NULL,
	[service_Level_C_Criticality_0] [numeric](18, 4) NULL,
	[service_Level_C_Criticality_10] [numeric](18, 4) NULL,
	
	Safety_stock_overall_adjustment [numeric](18, 4) NULL,
	[Maximum_forecast_error_application] [nvarchar](2) NULL,
	[Maximum_forecast_error] [numeric](18, 4) NULL,
	[Minimum_safety_stock_coverage] [numeric](18, 4) NULL,
	[Minimum_safety_stock_coverage_unit_of_measure] [nvarchar](2) NULL,
	[Maximum_safety_stock_coverage] [numeric](18, 4) NULL,
	[Maximum_safety_stock_coverage_unit_of_measure] [nvarchar](2) NULL,
	
	Lot_size_type [nvarchar](2) NULL,
	
Supply_reference_period_A_value [numeric](18, 4) NULL,
Supply_reference_period_B_value [numeric](18, 4) NULL,
Supply_reference_period_C_value [numeric](18, 4) NULL,
Supply_reference_period_A_time_unit [nvarchar](2) NULL,
Supply_reference_period_B_time_unit [nvarchar](2) NULL,
Supply_reference_period_C_time_unit [nvarchar](2) NULL,
Lot_size_overall_adjustment [numeric](18, 4) NULL

	
	
	
	
	
) ON [PRIMARY]
GO

alter table management_unit_parameter drop column Lot_size_type;

