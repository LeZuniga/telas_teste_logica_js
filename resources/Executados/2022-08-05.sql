USE PROPER_BASE

insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('INICIALIZACAO_SPU', 'Inicializacao spu', 'br.com.straight.proper.jobs.InicializacaoSpu');


ALTER TABLE spu add  Average_interval_suggested float(53) NULL;
ALTER TABLE spu add  Interval_time_unit_suggested nvarchar(2) NULL;
ALTER TABLE spu add Last_standard_bucket_demand_quantity float(53) NULL;
ALTER TABLE spu add Last_standard_bucket_demand_value float(53) NULL;
ALTER TABLE spu add  Enabled_for_safety_stock_calculation nvarchar(2) NULL;


drop view View_Spu
CREATE VIEW View_Spu
AS
SELECT        Id, 
Unit_cost_average_suggested,Unit_cost_replenishment_suggested,Unit_cost_alternate_suggested,Unit_cost_effective_local_currency,Unit_cost_effective_Management_Group_currency,Unit_cost_effective_reference_currency,Supply_chain_level,
Number_of_supply_alternatives,Lead_time_unit_suggested,Lead_time_minimum_suggested,Lead_time_modal_value_suggested,Lead_time_average_suggested,Lead_time_maximum_suggested,Lead_time_standard_deviation_suggested,Lead_time_unit_effective,
Lead_time_minimum_effective,Lead_time_modal_value_effective,Lead_time_average_effective,Lead_time_maximum_effective,Lead_time_standard_deviation_effective,Safety_lead_time_basic_suggested,Safety_lead_time_basic_suggested_revised,Safety_lead_time_qualitative_suggested,
Safety_lead_time_qualitative_suggested_revised,Safety_lead_time_effective,Safety_lead_time_Unit_effective,Lot_size_minimum_suggested,Lot_size_multiple_suggested,Lot_size_minimum_effective,Lot_size_multiple_effective,Lot_size_minimum_coverage,Lot_size_multiple_coverage,Average_interval_suggested,
Interval_time_unit_suggested,Average_interval_effective,Interval_time_unit_effective,Current_stage,Next_analysis_stage,Stage_change,Maturity_exit,First_demand_suggested,First_demand_effective,Last_demand_suggested,Last_demand_effective,Bucket_type,Relevant_history_duration_effective,Relevant_history_duration_unit_of_measure_effective,Relevant_history_suggested_begin,
Relevant_history_suggested_end,Relevant_history_effective_begin,Relevant_history_effective_end,number_of_available_buckets,Enabled_for_demand_history_evaluation,Upper_demand_outlier,Lower_demand_outlier,Demand_outlier_detected,Last_standard_bucket_demand_quantity,
Last_standard_bucket_demand_value,Historical_demand_average_quantity_bucket,Historical_demand_average_quantity_non_null_buckets,Historical_demand_average_value_bucket,Historical_demand_average_quantity_standard_bucket,Historical_demand_average_value_standard_bucket,Historical_demand_average_quantity_lead_time,
Historical_demand_average_value_lead_time,Enabled_for_repeatability_evaluation,Historical_demand_average_frequency,Historical_demand_maximum_interval,Repeatability_classification,Repeatability_indicator,Historical_demand_relevance,Historical_demand_relevance_order,
Historical_demand_accumulated_relevance,Historical_demand_ABC_classification,Enabled_for_variability_evaluation,Demand_normality_bucket,Standard_deviation_bucket_quantity,Relative_variability_bucket,Variability_classification_bucket,Number_of_available_lead_times,Demand_normality_lead_time,Standard_deviation_lead_time_quantity,Standard_deviation_lead_time_value,
Relative_variability_lead_time,Variability_classification_lead_time,Variability_relevance,Variability_relevance_order,Variability_accumulated_relevance,Variability_ABC_classification,Number_of_forecasts,Enabled_for_predictability_evaluation,Upper_forecast_error_outlier_limit,Lower_forecast_error_outlier_limit,
Forecast_error_outlier_detected,Normality_forecast_error,Forecast_error_average,Forecast_error_standard_deviation,Forecast_error_bias_limit,Bias_indicator,Significant_bias_indicator,Predictability_classification_lead_time,Acceptable_predictability,Forecast_error_quantity,
Forecast_error_value,Forecast_error_relevance,Forecast_error_relevance_order,Forecast_error_accumulated_relevance,Forecast_error_ABC_classification,MAD,MSE,MAPE,Planning_method_suggested,Planning_method_suggested_revised,Planning_method_effective,Overall_criticality_SPU,Overall_criticality_effective,
Enabled_for_safety_stock_calculation,Service_level_suggested,Service_level_effective,Safety_stock_pull_quantity_suggested,Safety_stock_pull_quantity_suggested_revised,Safety_stock_pull_value_suggested,Safety_stock_pull_value_suggested_revised,Safety_stock_push_quantity_suggested,Safety_stock_push_quantity_suggested_revised,Safety_stock_push_value_suggested,Safety_stock_push_value_suggested_revised,Push_vs_Pull_difference_value_suggested,
Push_vs_Pull_difference_value_suggested_revised,Safety_stock_demand_basic_suggested,Safety_stock_demand_basic_suggested_revised,Safety_stock_demand_qualitative_suggested,Safety_stock_demand_qualitative_suggested_revised,Safety_lead_time_usage_ERP,Safety_stock_lead_time_suggested,Safety_stock_lead_time_suggested_revised,Safety_stock_total_quantity_suggested,Safety_stock_total_quantity_suggested_revised,Safety_stock_total_value_suggested,
Safety_stock_total_value_suggested_revised,Safety_stock_total_percentage_suggested,Safety_stock_total_percentage_suggested_revised,Safety_stock_total_coverage_suggested,Safety_stock_total_coverage_suggested_revised,Minimum_safety_stock_coverage_suggested,Minimum_safety_stock_coverage_time_unit_suggested,Maximum_safety_stock_coverage_suggested,Maximum_safety_stock_coverage_time_unit_suggested,Minimum_safety_stock_coverage_effective,
Minimum_safety_stock_coverage_time_unit_effective,Maximum_safety_stock_coverage_effective,Maximum_safety_stock_coverage_time_unit_effective,Maximum_forecast_error_suggested,Maximum_forecast_error_effective,Safety_stock_limited_quantity_suggested,Safety_stock_limited_value_suggested,Safety_stock_limited_percentage_suggested,Safety_stock_limited_coverage_suggested,Safety_stock_limited_quantity_suggested_revised,Safety_stock_limited_value_suggested_revised,
Safety_stock_limited_percentage_suggested_revised,Safety_stock_limited_coverage_suggested_revised,Safety_stock_minimum_limit_trigger_suggested,Safety_stock_minimum_limit_trigger_suggested_revised,Safety_stock_maximum_limit_trigger_suggested,Safety_stock_maximum_limit_trigger_suggested_revised,Safety_stock_quantity_effective,Safety_stock_value_effective,Safety_stock_percentage_effective,Safety_stock_coverage_effective,Safety_stock_coverage_time_unit_effective,Safety_stock_overall_adjusted_quantity_suggested,Safety_stock_overall_adjusted_value_suggested,Safety_stock_overall_adjusted_percentage_suggested,Safety_stock_overall_adjusted_coverage_suggested,Safety_stock_overall_adjusted_quantity_effective,Safety_stock_overall_adjusted_value_effective,Safety_stock_overall_adjusted_percentage_effective,Safety_stock_overall_adjusted_coverage_effective,User_interference_service_level,User_interference_planning_method,User_interference_safety_lead_time,User_interference_safety_stock_coverage_limits,User_interference_maximum_forecast_error,User_interference_safety_stock,EOQ_basic_coverage_suggested,EOQ_basic_coverage_time_unit_suggested,EOQ_basic_quantity_suggested,EOQ_quantity_qualitative_suggested,Minimum_EOQ_coverage_suggested,Minimum_EOQ_coverage_time_unit_suggested,Maximum_EOQ_coverage_suggested,Maximum_EOQ_coverage_time_unit_suggested,Minimum_EOQ_coverage_effective,Minimum_EOQ_coverage_time_unit_effective,Maximum_EOQ_coverage_effective,Maximum_EOQ_coverage_time_unit_effective,EOQ_limited_quantity_suggested,EOQ_limited_value_suggested,EOQ_limited_coverage_suggested,EOQ_limited_quantity_suggested_revised,EOQ_limited_value_suggested_revised,EOQ_limited_coverage_suggested_revised,EOQ_minimum_coverage_trigger_suggested,EOQ_minimum_coverage_trigger_suggested_revised,EOQ_maximum_coverage_trigger_suggested,EOQ_maximum_coverage_trigger_suggested_revised,EOQ_quantity_effective,EOQ_value_effective,EOQ_coverage_effective,EOQ_coverage_time_unit_effective,EOQ_overall_adjusted_quantity_suggested,EOQ_overall_adjusted_value_suggested,EOQ_overall_adjusted_coverage_suggested,EOQ_overall_adjusted_quantity_effective,EOQ_overall_adjusted_value_effective,EOQ_overall_adjusted_coverage_effective,EOQ_minimum_multiple_considered_quantity_suggested,EOQ_minimum_multiple_considered_value_suggested,EOQ_minimum_multiple_considered_coverage_suggested,EOQ_minimum_multiple_considered_quantity_effective,EOQ_minimum_multiple_considered_value_effective,EOQ_minimum_multiple_considered_coverage_effective,Number_of_supplies_per_week_suggested,Number_of_supplies_per_month_suggested,Number_of_supplies_per_week_effective,
Number_of_supplies_per_month_effective,EOQ_minimum_quantity_trigger_suggested,EOQ_minimum_quantity_trigger_effective,User_interference_EOQ_coverage_limits,User_interference_EOQ,Average_inventory_quantity_suggested,Average_inventory_value_suggested,Average_inventory_percentage_suggested,Average_inventory_coverage_suggested,Average_inventory_quantity_effective,Average_inventory_value_effective,Average_inventory_percentage_effective,Average_inventory_coverage_effective,Maximum_inventory_quantity_suggested,Maximum_inventory_value_suggested,Maximum_inventory_percentage_suggested,Maximum_inventory_coverage_suggested,Maximum_inventory_quantity_effective,Maximum_inventory_value_effective,Maximum_inventory_percentage_effective,Maximum_inventory_coverage_effective,Average_inventory_policy_relevance,Average_inventory_policy_relevance_order,Average_inventory_policy_accumulated_relevance,Average_inventory_policy_ABC_classification,EOQ_correction,Revision_period_correction,Safety_stock_correction,Safety_lead_time_correction,Current_date_demand_history,Current_date_demand_forecast_history,Current_date_invent_history,Current_inventory_quantity,Current_inventory_value,Current_inventory_percentage,Current_inventory_coverage_average_demand,Current_inventory_coverage_last_standard_bucket,Current_inventory_relevance,
Current_inventory_relevance_order,Current_inventory_accumulated_relevance,Current_inventory_ABC_classification,Bellow_minimum_quantity,Bellow_minimum_value,Above_maximum_quantity,Above_maximum_value
FROM            dbo.spu
GO