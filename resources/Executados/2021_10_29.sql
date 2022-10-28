use proper_base;


/* exclusao de campos 
Campos retirados da documenta��o: */

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_initial_suggestion' )	
	alter table SPU drop column Safety_lead_time_initial_suggestion;	

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_initial_suggestion_quantity_lead_time' )	
	alter table SPU drop column Safety_stock_initial_suggestion_quantity_lead_time;	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_initial_suggestion_value_lead_time' )	
	alter table SPU drop column Safety_stock_initial_suggestion_value_lead_time;	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stoc_push_variable_suggested' )	
	alter table SPU drop column Safety_stoc_push_variable_suggested;	


-- /*Campos inclu�dos na documenta��o:*/



/* life cicle */
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maturity_exit' ) 
alter table spu add Maturity_exit [nvarchar](2) NULL;

/* Planning method*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Planning_method_suggested_revised' ) 
alter table spu add Planning_method_suggested_revised [nvarchar](2) NULL;

/* Service Level, Safety Stock and Lot Size */
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_demand_basic_suggested' ) 
alter table spu add Safety_stock_demand_basic_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_demand_basic_suggested_revised' ) 
alter table spu add Safety_stock_demand_basic_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_demand_qualitative_suggested' ) 
alter table spu add Safety_stock_demand_qualitative_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_demand_qualitative_suggested_revised' ) 
alter table spu add Safety_stock_demand_qualitative_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_basic_suggested' ) 
alter table spu add Safety_lead_time_basic_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_basic_suggested_revised' ) 
alter table spu add Safety_lead_time_basic_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_qualitative_suggested' ) 
alter table spu add Safety_lead_time_qualitative_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_qualitative_suggested_revised' ) 
alter table spu add Safety_lead_time_qualitative_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_effective' ) 
alter table spu add Safety_lead_time_effective [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_usage_ERP' ) 
alter table spu add Safety_lead_time_usage_ERP [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_lead_time_suggested' ) 
alter table spu add Safety_stock_lead_time_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_lead_time_suggested_revised' ) 
alter table spu add Safety_stock_lead_time_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_quantity_suggested' ) 
alter table spu add Safety_stock_total_quantity_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_quantity_suggested_revised' ) 
alter table spu add Safety_stock_total_quantity_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_value_suggested' ) 
alter table spu add Safety_stock_total_value_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_value_suggested_revised' ) 
alter table spu add Safety_stock_total_value_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_percentage_suggested' ) 
alter table spu add Safety_stock_total_percentage_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_percentage_suggested_revised' ) 
alter table spu add Safety_stock_total_percentage_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_coverage_suggested' ) 
alter table spu add Safety_stock_total_coverage_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_total_coverage_suggested_revised' ) 
alter table spu add Safety_stock_total_coverage_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_effective' ) 
alter table spu add Minimum_safety_stock_coverage_effective [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_unit_of_measure_effective' ) 
alter table spu add Minimum_safety_stock_coverage_unit_of_measure_effective [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_effective' ) 
alter table spu add Maximum_safety_stock_coverage_effective [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_unit_of_measure_effective' ) 
alter table spu add Maximum_safety_stock_coverage_unit_of_measure_effective [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_forecast_error_effective' ) 
alter table spu add Maximum_forecast_error_effective [numeric](18, 4) NULL;


/* vendo com Bruno se existem esses campos
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_suggested' ) 
alter table spu add Minimum_safety_stock_coverage_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_unit_of_measure_suggested' ) 
alter table spu add Minimum_safety_stock_coverage_unit_of_measure_suggested [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_suggested' ) 
alter table spu add Maximum_safety_stock_coverage_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_unit_of_measure_suggested' ) 
alter table spu add Maximum_safety_stock_coverage_unit_of_measure_suggested [nvarchar](2) NULL;

*/

/* Qualitative Factors Correction*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_correction' ) 
alter table spu add EOQ_correction [numeric](18, 6) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Revision_period_correction' ) 
alter table spu add Revision_period_correction [numeric](18, 6) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_correction' ) 
alter table spu add Safety_stock_correction [numeric](18, 6) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_correction' ) 
alter table spu add Safety_lead_time_correction [numeric](18, 6) NULL;

/* Criticality*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Overall_criticality' ) 
alter table spu add Overall_criticality [numeric](18, 6) NULL;

/* Precedence*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='effectiveness_Parameter_Safety_Lead_Time' ) 
alter table Parameters_Analysis add effectiveness_Parameter_Safety_Lead_Time [nvarchar](2) NULL DEFAULT '01';
update Parameters_Analysis set effectiveness_Parameter_Safety_Lead_Time='01' where effectiveness_Parameter_Safety_Lead_Time is null;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='parameters_Precedence_Safety_Lead_Time_Usage' ) 
alter table Parameters_Analysis add parameters_Precedence_Safety_Lead_Time_Usage [nvarchar](2) NULL DEFAULT '01';
update Parameters_Analysis set parameters_Precedence_Safety_Lead_Time_Usage='01' where parameters_Precedence_Safety_Lead_Time_Usage is null;


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Parameters_Precedence_Safety_Stock_Coverage_Limits' ) 
alter table Parameters_Analysis add Parameters_Precedence_Safety_Stock_Coverage_Limits [nvarchar](2) NULL DEFAULT '01';
update Parameters_Analysis set Parameters_Precedence_Safety_Stock_Coverage_Limits='01' where Parameters_Precedence_Safety_Stock_Coverage_Limits is null;

/*Service Level, Safety Stock and Lot Sizes*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='safety_Lead_Time_Usage_Erp' ) 
alter table Parameters_Analysis add safety_Lead_Time_Usage_Erp [nvarchar](2) NULL DEFAULT '01';
update Parameters_Analysis set safety_Lead_Time_Usage_Erp='01' where safety_Lead_Time_Usage_Erp is null;

/*Service Level, Safety Stock and Lot Sizes*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='safety_Lead_Time_Usage_Erp' ) 
alter table management_unit_parameter add safety_Lead_Time_Usage_Erp [nvarchar](2) NULL DEFAULT '01';
update management_unit_parameter set safety_Lead_Time_Usage_Erp='01' where safety_Lead_Time_Usage_Erp is null;


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_suggested' ) 
alter table spu add Minimum_safety_stock_coverage_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_unit_of_measure_suggested' ) 
alter table spu add Minimum_safety_stock_coverage_unit_of_measure_suggested [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_suggested' ) 
alter table spu add Maximum_safety_stock_coverage_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_unit_of_measure_suggested' ) 
alter table spu add Maximum_safety_stock_coverage_unit_of_measure_suggested [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Minimum_safety_stock_coverage' ) 
alter table Parameters_Analysis add Minimum_safety_stock_coverage [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Minimum_safety_stock_coverage_time_unit' ) 
alter table Parameters_Analysis add Minimum_safety_stock_coverage_time_unit [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Maximum_safety_stock_coverage' ) 
alter table Parameters_Analysis add Maximum_safety_stock_coverage [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Maximum_safety_stock_coverage_time_unit' ) 
alter table Parameters_Analysis add Maximum_safety_stock_coverage_time_unit [nvarchar](2) NULL;


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_safety_stock_coverage' ) 
alter table management_unit_parameter add Minimum_safety_stock_coverage [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_safety_stock_coverage_time_unit' ) 
alter table management_unit_parameter add Minimum_safety_stock_coverage_time_unit [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Maximum_safety_stock_coverage' ) 
alter table management_unit_parameter add Maximum_safety_stock_coverage [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Maximum_safety_stock_coverage_time_unit' ) 
alter table management_unit_parameter add Maximum_safety_stock_coverage_time_unit [nvarchar](2) NULL;


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Effectiveness_parameter_safety_stock_coverage_limits' ) 
alter table Parameters_Analysis add Effectiveness_parameter_safety_stock_coverage_limits [nvarchar](2) NULL DEFAULT '01';
update Parameters_Analysis set Effectiveness_parameter_safety_stock_coverage_limits='01' where Effectiveness_parameter_safety_stock_coverage_limits is null;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='parameters_Precedence_Maximum_Forecast_Error' ) 
alter table Parameters_Analysis add parameters_Precedence_Maximum_Forecast_Error [nvarchar](2) NULL DEFAULT '01';
update Parameters_Analysis set parameters_Precedence_Maximum_Forecast_Error='01' where parameters_Precedence_Maximum_Forecast_Error is null;


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='parameters_Effectiveness_Maximum_Forecast_Error' ) 
alter table Parameters_Analysis add parameters_Effectiveness_Maximum_Forecast_Error [nvarchar](2) NULL DEFAULT '01';
update Parameters_Analysis set parameters_Effectiveness_Maximum_Forecast_Error='01' where parameters_Effectiveness_Maximum_Forecast_Error is null;

/* supply */
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Lead_time_modal_value' ) 
alter table spu add Lead_time_modal_value [numeric](18, 4) NULL;



IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_basic_suggested' ) 
alter table spu add Safety_lead_time_basic_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_basic_suggested_revised' ) 
alter table spu add Safety_lead_time_basic_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_qualitative_suggested' ) 
alter table spu add Safety_lead_time_qualitative_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_qualitative_suggested_revised' ) 
alter table spu add Safety_lead_time_qualitative_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_lead_time_effective' ) 
alter table spu add Safety_lead_time_effective [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='lead_Time_Modal_Value_Suggested' ) 
alter table spu add lead_Time_Modal_Value_Suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='lead_Time_Modal_Value_Effective' ) 
alter table spu add lead_Time_Modal_Value_Effective [numeric](18, 4) NULL;

/*supply*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_Lead_Time' ) 
alter table spu_parameter add Safety_Lead_Time [numeric](18, 4) NULL;

update Parameters_Analysis set Function_enabled_supply_alternatives='01' where Function_enabled_supply_alternatives is null;
update Parameters_Analysis set Function_enabled_supply_detail_by_supplier='01' where Function_enabled_supply_detail_by_supplier is null;

