USE [Proper_Base]
GO

/****** Object:  Table [dbo].[spu]    Script Date: 20/11/2020 17:14:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[spu](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Item_id] [numeric](18, 0) NULL,
	[Management_unit_id] [numeric](18, 0) NULL,
	[analysis_id] [numeric](18, 0) NULL,
	[Demand_category_classification_01_id] [numeric](18, 0) NULL,
	[Demand_category_classification_02_id] [numeric](18, 0) NULL,
	[Demand_category_classification_03_id] [numeric](18, 0) NULL,
	[Demand_category_classification_04_id] [numeric](18, 0) NULL,
	[Demand_category_classification_05_id] [numeric](18, 0) NULL,
	/**Basic Data**/
	[Creation_date_Proper] [datetime] NULL,
	[Creation_date_Erp] [datetime] NULL,
	[Unit_of_measure_id] [numeric](18, 0) NULL,
	[Palletization_id] [numeric](18, 0) NULL,
	[bulk_storage_id] [numeric](18, 0) NULL,
	[planner_id] [numeric](18, 0) NULL,
	/**Cost Data**/
	[Unit_cost_average_suggested] [numeric](18, 2) NULL,
	[Unit_cost_replenishment_suggested] [numeric](18, 2) NULL,
	[Unit_cost_alternate_suggested] [numeric](18, 2) NULL,
	[Unit_cost_effective] [numeric](18, 2) NULL,
	/**Supply Data**/
	[Supply_chain_level] [numeric](18, 0) NULL,
	[Number_of_supply_alternatives] [numeric](18, 0) NULL,
	[lead_time_unit_suggested] [nvarchar](2) NULL,
	[Lead_time_minimum_suggested] [numeric](18, 4) NULL,
	[Lead_time_average_suggested] [numeric](18, 4) NULL,
	[Lead_time_maximum_suggested] [numeric](18, 4) NULL,
	[Lead_time_standard_deviation_suggested] [numeric](18, 4) NULL,
	[lead_time_unit_effective] [nvarchar](2) NULL,
	[Lead_time_minimum_effective] [numeric](18, 4) NULL,
	[Lead_time_average_effective] [numeric](18, 4) NULL,
	[Lead_time_maximum_effective] [numeric](18, 4) NULL,
	[Lead_time_standard_deviation_effective] [numeric](18, 4) NULL,
	[Lead_time_effective_buckets] [numeric](18, 4) NULL,
	[Lot_size_minimum_suggested] [numeric](18, 4) NULL,
	[Lot_size_minimum_effective] [numeric](18, 4) NULL,
	[Lot_size_multiple_suggested] [numeric](18, 4) NULL,
	[Lot_size_multiple_effective] [numeric](18, 4) NULL,

	/** Demand Analysis Data **/
	[First_demand_suggested] [datetime] NULL,
	[First_demand_effective] [datetime] NULL,
	[Last_demand_suggested] [datetime] NULL,
	[Last_demand_effective] [datetime] NULL,
	[Bucket_type] [nvarchar](2) NULL,
	[Relevant_history_suggested_begin] [datetime] NULL,
	[Relevant_history_suggested_end] [datetime] NULL,
	[Relevant_history_effective_begin] [datetime] NULL,
	[Relevant_history_effective_end] [datetime] NULL,
	[Number_of_available_buckets] [numeric](18, 4) NULL,
	[Enabled_for_demand_history_evaluation] [nvarchar](2) NULL,
	[Upper_demand_outlier] [numeric](18, 4) NULL,
	[Lower_demand_outlier] [numeric](18, 4) NULL,
	[Demand_outlier_detected] [nvarchar](2) NULL,
	[Historical_demand_average_quantity_bucket] [numeric](18, 4) NULL,
	[Historical_demand_average_value_bucket] [numeric](18, 4) NULL,
	[Historical_demand_average_quantity_standard_period] [numeric](18, 4) NULL,
	[Historical_demand_average_value_standard_bucket] [numeric](18, 4) NULL,
	[Historical_demand_average_quantity_lead_time] [numeric](18, 4) NULL,
	[Historical_demand_average_value_lead_time] [numeric](18, 4) NULL,
	[Enabled_for_repeatability_evaluation] [nvarchar](2) NULL,
	[Historical_demand_average_frequency] [numeric](18, 4) NULL,
	[Historical_demand_maximum_interval] [numeric](18, 4) NULL,
	[Repeatability_classification] [nvarchar](2) NULL,
	[Repeatability_indicator] [nvarchar](2) NULL,
	[Historical_demand_relevance] [numeric](18, 4) NULL,
	[Historical_demand_relevance_order] [numeric](18, 4) NULL,
	[Historical_demand_accumulated_relevance] [numeric](18, 4) NULL,
	[Historical_demand_ABC_classification] [nvarchar](1) NULL,
	[Enabled_for_variability_evaluation] [nvarchar](2) NULL,
	[demand_Normality_bucket] [nvarchar](2) NULL,
	[Standard_deviation_bucket_quantity] [numeric](18, 4) NULL,
	[Relative_variability_bucket] [numeric](18, 4) NULL,
	[Variability_classification_bucket] [nvarchar](2) NULL,
	[number_of_available_lead_times] [nvarchar](2) NULL,
	[demand_normality_lead_time] [numeric](18, 4) NULL,
	[Standard_deviation_lead_time_quantity] [numeric](18, 4) NULL,
	[Standard_deviation_lead_time_value] [numeric](18, 4) NULL,
	[Relative_variability_lead_time] [numeric](18, 4) NULL,
	[Variability_classification_lead_time] [numeric](18, 4) NULL,
	[Variability_relevance] [numeric](18, 4) NULL,
	[Variability_relevance_order] [numeric](18, 4) NULL,
	[Variability_accumulated_relevance] [numeric](18, 4) NULL,
	[Variability_ABC_classification] [nvarchar](1) NULL,

	/** Predictability Evaluation Data **/

	[Number_of_forecasts] [numeric](18, 4) NULL,
	[Enabled_for_predictability_evaluation] [nvarchar](2) NULL,
	[upper_forecast_error_outlier_limit] [numeric](18, 4) NULL,
	[lower_forecast_error_outlier_limit] [numeric](18, 4) NULL,
	[forecast_error_outlier_detected] [nvarchar](2) NULL,
	[normality_forecast_error] [nvarchar](2) NULL,
	[Forecast_error_average] [numeric](18, 4) NULL,
	[Forecast_error_standard_deviation] [numeric](18, 4) NULL,
	[forecast_error_bias_limit] [numeric](18, 4) NULL,
	[Bias_indicator] [nvarchar](2) NULL,
	[Significant_bias_indicator] [nvarchar](2) NULL,
	[Predictability_classification] [nvarchar](2) NULL,
	[acceptable_predictability] [nvarchar](2) NULL,
	[forecast_error_quantity] [numeric](18, 4) NULL,
	[forecast_error_value] [numeric](18, 4) NULL,
	[Forecast_error_relevance] [numeric](18, 4) NULL,
	[Forecast_error_relevance_order] [numeric](18, 4) NULL,
	[Forecast_error_accumulated_relevance] [numeric](18, 4) NULL,
	[Forecast_error_ABC_classification] [nvarchar](1) NULL,

	/** Planning Method Data **/
	[Planning_method_suggested] [nvarchar](2) NULL,
	[Planning_method_effective] [nvarchar](2) NULL,

	/** Criticality Data **/
	[Overall_criticality] [numeric](18, 4) NULL,

	/** Service Level and Safety Stock Data **/
	[Service_level_suggested] [numeric](18, 4) NULL,
	[Service_level_effective] [numeric](18, 4) NULL,
	[Safety_stock_suggested] [numeric](18, 4) NULL,
	[Safety_stock_effective] [numeric](18, 4) NULL,

	/** Validation Data **/
	[Validation_total] [numeric](18, 0) NULL

) ON [PRIMARY]
GO


