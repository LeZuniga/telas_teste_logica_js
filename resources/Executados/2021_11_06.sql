use proper_base;


/* Campos eliminados:

[SPU].[Maximum forecast error application � effective] � isso afeta a valida��o definida em [SPU].[Validation � maximum forecast error].
[Parameters - Analysis].[Maximum forecast error application]
[Parameters � Management Unit].[Maximum forecast error application]
[Parameters - SPU].[Maximum forecast error application]
[SPU Interface].[Maximum forecast error application]
  */

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_forecast_error_application_effective' )	
	alter table SPU drop column Maximum_forecast_error_application_effective;	

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Maximum_forecast_error_application' )	
	alter table Parameters_Analysis drop column Maximum_forecast_error_application;	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Parameters_Management_Unit' AND COLUMN_NAME='Maximum_forecast_error_application' )	
	alter table Parameters_Management_Unit drop column Maximum_forecast_error_application;	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_forecast_error_application' )	
	alter table spu_parameter drop column Maximum_forecast_error_application;		
	
	
	


/*Campos inclu�dos na documenta��o:

[Parameters � SPU].[Safety lead time unit]

[SPU].[Safety lead time � time unit � effective]

[SPU].[Maximum forecast error � suggested]
�       [SPU].[Safety stock � limited � quantity � suggested
�       [SPU].[Safety stock � limited � value � suggested
�       [SPU].[Safety stock �  limited � percentage � suggested
�       [SPU].[Safety stock � limited � coverage � suggested
�       [SPU].[Safety stock � limited � quantity � suggested revised]
�       [SPU].[Safety stock � limited � value � suggested revised]
�       [SPU].[Safety stock � limited � percentage � suggested revised]
�       [SPU].[Safety stock � limited � coverage � suggested revised]
�       [SPU].[Safety stock � minimum limit trigger � suggested]
�       [SPU].[Safety stock � minimum limit trigger � suggested revised]
�       [SPU].[Safety stock � maximum limit trigger � suggested]
�       [SPU].[Safety stock � maximum limit trigger � suggested]

�       [SPU].[stock � quantity � effective] // nao tem
              Safety stock - quantity � effective // deve ser este
�       [SPU].[Safety stock � value � effective]
�       [SPU].[Safety stock � percentage � effective]
�       [SPU].[Safety stock � coverage � effective]
�       [SPU].[Safety stock coverage time unit � effective]
�       [SPU].[Safety stock � overall adjusted � quantity � suggested]
�       [SPU].[Safety stock � overall adjusted � value � suggested]
�       [SPU].[Safety stock � overall adjusted � percentage � suggested]
�       [SPU].[Safety stock � overall adjusted � coverage � suggested]
�       [SPU].[Safety stock � overall adjusted � quantity � effective]
�       [SPU].[Safety stock � overall adjusted � value � effective]
�       [SPU].[Safety stock � overall adjusted � percentage � effective]
�       [SPU].[Safety stock � overall adjusted � coverage � effective]
�       [SPU].[Minimum safety stock coverage � suggested � alarm] -nao esta no doc
�       [SPU].[Maximum safety stock coverage � suggested � alarm] -nao esta no doc
�       [SPU].[Minimum safety stock coverage � effective � alarm] -nao esta no doc
�       [SPU].[Maximum safety stock coverage � effective � alarm] -nao esta no doc
�       [SPU].[Safety stock � minimum limit trigger � suggested]
�       [SPU].[Safety stock � minimum limit trigger � suggested revised]
�       [SPU].[Safety stock � maximum limit trigger � suggested]
�       [SPU].[Safety stock � maximum limit trigger � suggested]
�       [SPU].[User interference - service level]
�       [SPU].[User interference - planning method]
�       [SPU].[User interference - safety lead time]
�       [SPU].[User interference - safety stock coverage limits]
�       [SPU].[User interference - maximum forecast error]
�       [SPU].[User interference - safety stock]
Validation
[SPU].[Validation � maximum error and minimum coverage � suggested]
[SPU].[Validation � maximum error and minimum coverage � suggested revised]
*/


/*Parameters � SPU - supply*/

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_Lead_Time_unit' ) 
   alter table spu_parameter add Safety_Lead_Time_unit nvarchar(2) NULL DEFAULT '01';
update spu_parameter set Safety_Lead_Time_unit='01' where Safety_Lead_Time_unit is null;

/*SPU - supply*/
-- [SPU].[Safety lead time � time unit � effective]
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu' AND COLUMN_NAME='Safety_Lead_Time_unit_effective' ) 
   alter table spu add Safety_Lead_Time_unit_effective nvarchar(2) NULL DEFAULT '01';
update spu set Safety_Lead_Time_unit_effective='01' where Safety_Lead_Time_unit_effective is null;

/* Service Level, Safety Stock and Lot Size */

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_forecast_error_suggested' ) 
   alter table spu add Maximum_forecast_error_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_limited_quantity_suggested' ) 
   alter table spu add Safety_stock_limited_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_limited_value_suggested' ) 
   alter table spu add Safety_stock_limited_value_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock__limited_percentage_suggested' ) 
   alter table spu add Safety_stock__limited_percentage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_limited_coverage_suggested' ) 
   alter table spu add Safety_stock_limited_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_limited_quantity_suggested_revised' ) 
   alter table spu add Safety_stock_limited_quantity_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_limited_value_suggested_revised' ) 
   alter table spu add Safety_stock_limited_value_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_limited_percentage_suggested_revised' ) 
   alter table spu add Safety_stock_limited_percentage_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_limited_coverage_suggested_revised' ) 
   alter table spu add Safety_stock_limited_coverage_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_minimum_limit_trigger_suggested' ) 
   alter table spu add Safety_stock_minimum_limit_trigger_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_minimum_limit_trigger_suggested_revised' ) 
   alter table spu add Safety_stock_minimum_limit_trigger_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_maximum_limit_trigger_suggested' ) 
   alter table spu add Safety_stock_maximum_limit_trigger_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_maximum_limit_trigger_suggested_revised' ) 
   alter table spu add Safety_stock_maximum_limit_trigger_suggested_revised [numeric](18, 4) NULL;


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_quantity_effective' ) 
   alter table spu add Safety_stock_quantity_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_value_effective' ) 
   alter table spu add Safety_stock_value_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_percentage_effective' ) 
   alter table spu add Safety_stock_percentage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_coverage_effective' ) 
   alter table spu add Safety_stock_coverage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_coverage_time_unit_effective' ) 
   alter table spu add Safety_stock_coverage_time_unit_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_quantity_suggested' ) 
   alter table spu add Safety_stock_overall_adjusted_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_value_suggested' ) 
   alter table spu add Safety_stock_overall_adjusted_value_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_percentage_suggested' ) 
   alter table spu add Safety_stock_overall_adjusted_percentage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_coverage_suggested' ) 
   alter table spu add Safety_stock_overall_adjusted_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_quantity_effective' ) 
   alter table spu add Safety_stock_overall_adjusted_quantity_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_value_effective' ) 
   alter table spu add Safety_stock_overall_adjusted_value_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_percentage_effective' ) 
   alter table spu add Safety_stock_overall_adjusted_percentage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_overall_adjusted_coverage_effective' ) 
   alter table spu add Safety_stock_overall_adjusted_coverage_effective [numeric](18, 4) NULL;
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_service_level' ) 
   alter table spu add User_interference_service_level nvarchar(2) NULL DEFAULT '01';
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_planning_method' ) 
   alter table spu add User_interference_planning_method nvarchar(2) NULL DEFAULT '01';
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_safety_lead_time' ) 
   alter table spu add User_interference_safety_lead_time nvarchar(2) NULL DEFAULT '01';
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_safety_stock_coverage_limits' ) 
   alter table spu add User_interference_safety_stock_coverage_limits nvarchar(2) NULL DEFAULT '01';
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_maximum_forecast_error' ) 
   alter table spu add User_interference_maximum_forecast_error nvarchar(2) NULL DEFAULT '01';
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_safety_stock' ) 
   alter table spu add User_interference_safety_stock nvarchar(2) NULL DEFAULT '01';

update spu set User_interference_service_level='01' where User_interference_service_level is null;
update spu set User_interference_planning_method='01' where User_interference_planning_method is null;
update spu set User_interference_safety_lead_time='01' where User_interference_safety_lead_time is null;
update spu set User_interference_safety_stock_coverage_limits='01' where User_interference_safety_stock_coverage_limits is null;
update spu set User_interference_maximum_forecast_error='01' where User_interference_maximum_forecast_error is null;
update spu set User_interference_safety_stock='01' where User_interference_safety_stock is null;
   
/*spu- Validation*/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Validation_maximum_error_and_minimum_coverage_suggested' ) 
   alter table spu add Validation_maximum_error_and_minimum_coverage_suggested int NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Validation_maximum_error_and_minimum_coverage_suggested_revised' ) 
   alter table spu add Validation_maximum_error_and_minimum_coverage_suggested_revised int NULL;

 /*	Item � Company Unit */
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Item_Company_Unit' AND COLUMN_NAME='Lead_time_modal_value' ) 
   alter table Item_Company_Unit add Lead_time_modal_value [numeric](18, 4) NULL;
