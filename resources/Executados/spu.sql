use Proper_Base
 EXEC sp_rename 'Spu.Creation_date', 'Creation_date_Proper', 'COLUMN';
alter table Spu add Creation_date_Erp datetime null;
alter table Spu add Palletization_id [numeric](18, 0) NULL;
alter table Spu add bulk_storage_id [numeric](18, 0) NULL;
EXEC sp_rename 'Spu.level', 'Supply_chain_level', 'COLUMN';
alter table Spu add Upper_demand_outlier [numeric](18, 4) NULL;
alter table Spu add Lower_demand_outlier [numeric](18, 4) NULL;
alter table Spu add Demand_outlier_detected [nvarchar](2) NULL;
EXEC sp_rename 'Spu.Normality_demand_bucket', 'demand_Normality_bucket', 'COLUMN';
EXEC sp_rename 'Spu.forecast_error_normality', 'normality_forecast_error', 'COLUMN';
EXEC sp_rename 'Spu.forecast_error_qty', 'forecast_error_quantity', 'COLUMN';
alter table Spu add Overall_criticality [numeric](18, 4) NULL;        
alter table Spu add Safety_stock_suggested [numeric](18, 4) NULL;        
alter table Spu add Safety_stock_effective [numeric](18, 4) NULL;  


alter table Spu drop column Number_of_buckets_available
alter table Spu drop column Normality_forecast_lead_time;
alter table Spu drop column Limit_for_average_forecast_error;
alter table Spu drop column Forecast_error_lead_time_quantity;
alter table Spu drop column Forecast_error_lead_time_value;
alter table Spu drop column Planning_method_input;
alter table Spu drop column Criticality_criteria_01_grade;
alter table Spu drop column Criticality_criteria_02_grade;
alter table Spu drop column Criticality_criteria_03_grade;
alter table Spu drop column Criticality_criteria_04_grade;
alter table Spu drop column Criticality_criteria_05_grade;
alter table Spu drop column Criticality;
alter table Spu drop column Service_level_input;
alter table Spu drop column forecasat_error_std_deviation;
alter table Spu drop column forecast_error_bias_indicator;
alter table Spu drop column forecast_error_significant_bias_indicator;
alter table Spu drop column Normality_demand_lead_time;
alter table Spu drop column Qualitative_criteria_1_grade;
alter table Spu drop column Qualitative_criteria_2_grade;
alter table Spu drop column Qualitative_criteria_3_grade;
alter table Spu drop column Qualitative_criteria_4_grade;
alter table Spu drop column Qualitative_criteria_5_grade;
alter table Spu drop column Qualitative_criteria_6_grade;
alter table Spu drop column Qualitative_criteria_7_grade;
alter table Spu drop column Qualitative_criteria_8_grade;
alter table Spu drop column Qualitative_criteria_9_grade;
alter table Spu drop column Qualitative_criteria_10_grade;
alter table Spu drop column Unit_cost_average_input;
alter table Spu drop column Unit_cost_replenishment_input;
alter table Spu drop column Unit_cost_alternate_input;
alter table Spu drop column Proper_Stock_analysis;
alter table Spu drop column Proper_Action_monitoring;
alter table Spu drop column Management_type;
alter table Spu drop column Lead_time_unit_input;
alter table Spu drop column Lead_time_minimum_input;
alter table Spu drop column Lead_time_average_input;
alter table Spu drop column Lead_time_maximum_input;
alter table Spu drop column Lead_time_standard_deviation_input;
alter table Spu drop column Lot_size_minimum_input;
alter table Spu drop column Lot_size_multiple_input;
alter table Spu drop column Grouping_item_id;
alter table Spu drop column Share;
alter table Spu drop column First_demand_input;
alter table Spu drop column Last_demand_input;
alter table Spu drop column Relevant_history_input_begin;
alter table Spu drop column Relevant_history_input_end;
alter table Spu drop column Demand_origin;
alter table Spu drop column Demand_outlier_correction;



