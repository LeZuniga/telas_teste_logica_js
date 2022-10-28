use proper_base;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Effectiveness_parameter_EOQ_coverage_limits' ) 
   alter table Parameters_Analysis add Effectiveness_parameter_EOQ_coverage_limits nvarchar(2) NULL DEFAULT '01';


/*[Parameters - SPU]*/ 
/* Service Level, Safety Stock and Lot Size */
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_stock_quantity' ) 
   alter table spu_parameter add Safety_stock_quantity [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_stock_percentage' ) 
   alter table spu_parameter add Safety_stock_percentage [numeric](18, 4) NULL;   
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_stock_coverage' ) 
   alter table spu_parameter add Safety_stock_coverage [numeric](18, 4) NULL;     

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_stock_coverage_time_unit' ) 
   alter table spu_parameter add Safety_stock_coverage_time_unit nvarchar(2) NULL DEFAULT '01';  
   

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='EOQ_quantity' ) 
   alter table spu_parameter add EOQ_quantity [numeric](18, 4) NULL;     

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='EOQ_coverage' ) 
   alter table spu_parameter add EOQ_coverage [numeric](18, 4) NULL;   
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='EOQ_coverage_time_unit' ) 
   alter table spu_parameter add EOQ_coverage_time_unit nvarchar(2) NULL DEFAULT '01';  
 
   

/* SPU
 * supply
[SPU].[Lot size � minimum � coverage]
[SPU].[Lot size � multiple � coverage]
* service level
=> ja tem [SPU].[Minimum safety stock coverage � suggested]
=> outro nome [SPU].[Minimum safety stock coverage time unit � suggested] --- Minimum_safety_stock_coverage_unit_of_measure_suggested
=> ja tem[SPU].[Maximum safety stock coverage � suggested]
=> outro nome [SPU].[Maximum safety stock coverage time unit � suggested] --- Maximum_safety_stock_coverage_unit_of_measure_suggested
[SPU].[EOQ basic � coverage � suggested]
[SPU].[EOQ basic � coverage � time unit � suggested]
[SPU].[EOQ basic - quantity - suggested]
[SPU].[EOQ � quantity - qualitative � suggested]
[SPU].[Minimum EOQ coverage - suggested]
[SPU].[Minimum EOQ coverage time unit - suggested]
[SPU].[Maximum EOQ coverage - suggested]
[SPU].[Maximum EOQ coverage time unit - suggested]
[SPU].[Minimum EOQ coverage - effective]
[SPU].[Minimum EOQ coverage time unit - effective]
[SPU].[Maximum EOQ coverage - effective]
[SPU].[Maximum EOQ coverage time unit - effective]
[SPU].[EOQ � limited � quantity � suggested]
[SPU].[EOQ � limited � value � suggested]
[SPU].[EOQ � limited � coverage � suggested]
[SPU].[EOQ � limited � quantity � suggested revised]
[SPU].[EOQ � limited � value � suggested revised]
[SPU].[EOQ � limited � coverage � suggested revised]
[SPU].[EOQ � minimum coverage trigger � suggested]
[SPU].[EOQ � minimum coverage trigger � suggested revised]
[SPU].[EOQ � maximum coverage trigger � suggested]
[SPU].[EOQ � maximum coverage trigger � suggested revised]
[SPU].[EOQ � quantity � effective]
[SPU].[EOQ � value � effective]
[SPU].[EOQ � coverage � effective]
[SPU].[EOQ � coverage time unit � effective]
[SPU].[EOQ � overall adjusted � quantity � suggested]
[SPU].[EOQ � overall adjusted � value � suggested]
[SPU].[EOQ � overall adjusted � coverage � suggested]
[SPU].[EOQ � overall adjusted � quantity � effective]
[SPU].[EOQ � overall adjusted � value � effective]
[SPU].[EOQ � overall adjusted � coverage � effective]
[SPU].[EOQ - minimum multiple considered � quantity � suggested]
[SPU].[EOQ � minimum multiple considered � value � suggested]
[SPU].[EOQ - minimum multiple considered � coverage � suggested]
[SPU].[EOQ � minimum multiple considered � quantity � effective]
[SPU].[EOQ � minimum multiple considered � value � effective]
[SPU].[EOQ � minimum multiple considered � coverage � effective]
[SPU].[Number of supplies per week � suggested]
[SPU].[Number of supplies per month � suggested]
[SPU].[Number of supplies per week � effective]
[SPU].[Number of supplies per month � effective]
[SPU].[EOQ � minimum quantity trigger � suggested]
[SPU].[EOQ � minimum quantity trigger � effective]
[SPU].[User interference � EOQ coverage limits]
[SPU].[User interference � EOQ]
[SPU].[Average inventory policy � relevance]
[SPU].[Average inventory policy � relevance order]
[SPU].[Average inventory policy � accumulated relevance]
[SPU].[Average inventory policy � ABC classification]


=> ja tem spu.Minimum_safety_stock_coverage_suggested]
=> renomeado spu.Minimum_safety_stock_coverage_time_unit_suggested] 
=> ja tem spu.Maximum_safety_stock_coverage_suggested]
=> renomeado spu.Maximum_safety_stock_coverage_time_unit_suggested]
spu.EOQ_basic_coverage_suggested]
spu.EOQ_basic_coverage_time_unit_suggested]
spu.EOQ_basic_quantity_suggested]
spu.EOQ_quantity_qualitative_suggested]
spu.Minimum_EOQ_coverage_suggested]
spu.Minimum_EOQ_coverage_time_unit_suggested]
spu.Maximum_EOQ_coverage_suggested]
spu.Maximum_EOQ_coverage_time_unit_suggested]
spu.Minimum_EOQ_coverage_effective]
spu.Minimum_EOQ_coverage_time_unit_effective]
spu.Maximum_EOQ_coverage_effective]
spu.Maximum_EOQ_coverage_time_unit_effective]
spu.EOQ_limited_quantity_suggested]
spu.EOQ_limited_value_suggested]
spu.EOQ_limited_coverage_suggested]
spu.EOQ_limited_quantity_suggested_revised]
spu.EOQ_limited_value_suggested_revised]
spu.EOQ_limited_coverage_suggested_revised]
spu.EOQ_minimum_coverage_trigger_suggested]
spu.EOQ_minimum_coverage_trigger_suggested_revised]
spu.EOQ_maximum_coverage_trigger_suggested]
spu.EOQ_maximum_coverage_trigger_suggested_revised]
spu.EOQ_quantity_effective]
spu.EOQ_value_effective]
spu.EOQ_coverage_effective]
spu.EOQ_coverage_time_unit_effective]
spu.EOQ_overall_adjusted_quantity_suggested]
spu.EOQ_overall_adjusted_value_suggested]
spu.EOQ_overall_adjusted_coverage_suggested]
spu.EOQ_overall_adjusted_quantity_effective]
spu.EOQ_overall_adjusted_value_effective]
spu.EOQ_overall_adjusted_coverage_effective]
spu.EOQ_minimum_multiple_considered_quantity_suggested]
spu.EOQ_minimum_multiple_considered_value_suggested]
spu.EOQ_minimum_multiple_considered_coverage_suggested]
spu.EOQ_minimum_multiple_considered_quantity_effective]
spu.EOQ_minimum_multiple_considered_value_effective]
spu.EOQ_minimum_multiple_considered_coverage_effective]
spu.Number_of_supplies_per_week_suggested]
spu.Number_of_supplies_per_month_suggested]
spu.Number_of_supplies_per_week_effective]
spu.Number_of_supplies_per_month_effective]
spu.EOQ_minimum_quantity_trigger_suggested]
spu.EOQ_minimum_quantity_trigger_effective]
spu.User_interference_EOQ_coverage_limits]
spu.User_interference_EOQ]
spu.Average_inventory_policy_relevance]
spu.Average_inventory_policy_relevance_order]
spu.Average_inventory_policy_accumulated_relevance]
spu.Average_inventory_policy_ABC_classification]

*/


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Lot_size_minimum_coverage' ) 
   alter table spu add Lot_size_minimum_coverage [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Lot_size_multiple_coverage' ) 
   alter table spu add Lot_size_multiple_coverage [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_suggested' ) 
   alter table spu add Minimum_safety_stock_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_time_unit_suggested' ) 
   alter table spu add Minimum_safety_stock_coverage_time_unit_suggested nvarchar(2) NULL DEFAULT '01';  
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_suggested' ) 
   alter table spu add Maximum_safety_stock_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_time_unit_suggested' ) 
   alter table spu add Maximum_safety_stock_coverage_time_unit_suggested nvarchar(2) NULL DEFAULT '01';  
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_basic_coverage_suggested' ) 
   alter table spu add EOQ_basic_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_basic_coverage_time_unit_suggested' ) 
	alter table spu add EOQ_basic_coverage_time_unit_suggested nvarchar(2) NULL DEFAULT '01';  
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_basic_quantity_suggested' ) 
   alter table spu add EOQ_basic_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_quantity_qualitative_suggested' ) 
   alter table spu add EOQ_quantity_qualitative_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_EOQ_coverage_suggested' ) 
   alter table spu add Minimum_EOQ_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_EOQ_coverage_time_unit_suggested' ) 
   alter table spu add Minimum_EOQ_coverage_time_unit_suggested nvarchar(2) NULL DEFAULT '01';  
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_EOQ_coverage_suggested' ) 
   alter table spu add Maximum_EOQ_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_EOQ_coverage_time_unit_suggested' ) 
   alter table spu add Maximum_EOQ_coverage_time_unit_suggested nvarchar(2) NULL DEFAULT '01';  
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_EOQ_coverage_effective' ) 
   alter table spu add Minimum_EOQ_coverage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_EOQ_coverage_time_unit_effective' ) 
   alter table spu add Minimum_EOQ_coverage_time_unit_effective nvarchar(2) NULL DEFAULT '01';    
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_EOQ_coverage_effective' )
   alter table spu add Maximum_EOQ_coverage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_EOQ_coverage_time_unit_effective' )
   alter table spu add Maximum_EOQ_coverage_time_unit_effective nvarchar(2) NULL DEFAULT '01';  
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_limited_quantity_suggested' )
   alter table spu add EOQ_limited_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_limited_value_suggested' )
   alter table spu add EOQ_limited_value_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_limited_coverage_suggested' )
   alter table spu add EOQ_limited_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_limited_quantity_suggested_revised' )
   alter table spu add EOQ_limited_quantity_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_limited_value_suggested_revised' )
   alter table spu add EOQ_limited_value_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_limited_coverage_suggested_revised' )
   alter table spu add EOQ_limited_coverage_suggested_revised [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_coverage_trigger_suggested' )
   alter table spu add EOQ_minimum_coverage_trigger_suggested nvarchar(2)  NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_coverage_trigger_suggested_revised' ) 
   alter table spu add EOQ_minimum_coverage_trigger_suggested_revised nvarchar(2) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_maximum_coverage_trigger_suggested' ) 
	alter table spu add EOQ_maximum_coverage_trigger_suggested nvarchar(2) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_maximum_coverage_trigger_suggested_revised' ) 
   alter table spu add EOQ_maximum_coverage_trigger_suggested_revised nvarchar(2) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_quantity_effective' ) 
	alter table spu add EOQ_quantity_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_value_effective' ) 
   alter table spu add EOQ_value_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_coverage_effective' ) 
   alter table spu add EOQ_coverage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_coverage_time_unit_effective' ) 
	alter table spu add EOQ_coverage_time_unit_effective nvarchar(2) NULL DEFAULT '01';  
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_overall_adjusted_quantity_suggested' ) 
   alter table spu add EOQ_overall_adjusted_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_overall_adjusted_value_suggested' ) 
   alter table spu add EOQ_overall_adjusted_value_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_overall_adjusted_coverage_suggested' ) 
   alter table spu add EOQ_overall_adjusted_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_overall_adjusted_quantity_effective' ) 
   alter table spu add EOQ_overall_adjusted_quantity_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_overall_adjusted_value_effective' )
   alter table spu add EOQ_overall_adjusted_value_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_overall_adjusted_coverage_effective' )
   alter table spu add EOQ_overall_adjusted_coverage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_multiple_considered_quantity_suggested' ) 
   alter table spu add EOQ_minimum_multiple_considered_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_multiple_considered_value_suggested' ) 
   alter table spu add EOQ_minimum_multiple_considered_value_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_multiple_considered_coverage_suggested' ) 
   alter table spu add EOQ_minimum_multiple_considered_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_multiple_considered_quantity_effective' ) 
   alter table spu add EOQ_minimum_multiple_considered_quantity_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_multiple_considered_value_effective' ) 
   alter table spu add EOQ_minimum_multiple_considered_value_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_multiple_considered_coverage_effective' ) 
   alter table spu add EOQ_minimum_multiple_considered_coverage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Number_of_supplies_per_week_suggested' ) 
   alter table spu add Number_of_supplies_per_week_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Number_of_supplies_per_month_suggested' ) 
   alter table spu add Number_of_supplies_per_month_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Number_of_supplies_per_week_effective' ) 
   alter table spu add Number_of_supplies_per_week_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Number_of_supplies_per_month_effective' ) 
   alter table spu add Number_of_supplies_per_month_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_quantity_trigger_suggested' )
   alter table spu add EOQ_minimum_quantity_trigger_suggested nvarchar(2) NULL DEFAULT '01'; 
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_minimum_quantity_trigger_effective' ) 
   alter table spu add EOQ_minimum_quantity_trigger_effective nvarchar(2) NULL DEFAULT '01'; 
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_EOQ_coverage_limits' ) 
   alter table spu add User_interference_EOQ_coverage_limits nvarchar(2) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='User_interference_EOQ' ) 
   alter table spu add User_interference_EOQ nvarchar(2) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Average_inventory_policy_relevance' )
   alter table spu add Average_inventory_policy_relevance [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Average_inventory_policy_relevance_order' ) 
	alter table spu add Average_inventory_policy_relevance_order [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Average_inventory_policy_accumulated_relevance' )
   alter table spu add Average_inventory_policy_accumulated_relevance [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Average_inventory_policy_ABC_classification' )
   alter table spu add Average_inventory_policy_ABC_classification nvarchar(1) NULL;  


/*Campos modificados:

[Parameters_SPU].[Minimum_safety_stock_coverage_unit_of_measure] para [Parameters_SPU].[Minimum_safety_stock_coverage_time_unit]
[Parameters_SPU].[Maximum_safety_stock_coverage_unit_of_measure] para [Parameters_SPU].[Maximum_safety_stock_coverage_time_unit]
[SPU].[Minimum_safety_stock_coverage_unit_of_measure_effective] para [SPU].[Minimum_safety_stock_coverage_time_unit_effective]
[SPU].[Maximum_safety_stock_coverage_unit_of_measure_effective] para [SPU].[Maximum_safety_stock_coverage_time_unit_effective]_*/

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='Minimum_safety_stock_coverage_unit_of_measure' )	
	EXEC sp_rename 'spu_parameter.Minimum_safety_stock_coverage_unit_of_measure', 'Minimum_safety_stock_coverage_time_unit', 'COLUMN';
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_safety_stock_coverage_unit_of_measure' )	
	EXEC sp_rename 'spu_parameter.Maximum_safety_stock_coverage_unit_of_measure', 'Maximum_safety_stock_coverage_time_unit', 'COLUMN';
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Minimum_safety_stock_coverage_unit_of_measure_effective' )	
	EXEC sp_rename 'spu.Minimum_safety_stock_coverage_unit_of_measure_effective', 'Minimum_safety_stock_coverage_time_unit_effective', 'COLUMN';	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_safety_stock_coverage_unit_of_measure_effective' )	
	EXEC sp_rename 'spu.Maximum_safety_stock_coverage_unit_of_measure_effective', 'Maximum_safety_stock_coverage_time_unit_effective', 'COLUMN';	
	
update Parameters_Analysis set Effectiveness_parameter_EOQ_coverage_limits='01' where Effectiveness_parameter_EOQ_coverage_limits is null;
update spu_parameter set Safety_stock_coverage_time_unit='01' where Safety_stock_coverage_time_unit is null;
update spu_parameter set EOQ_coverage_time_unit='01' where EOQ_coverage_time_unit is null;   
update spu set EOQ_coverage_time_unit_effective='01' where EOQ_coverage_time_unit_effective is null;
update spu set Minimum_safety_stock_coverage_time_unit_suggested='01' where Minimum_safety_stock_coverage_time_unit_suggested is null;
update spu set Maximum_safety_stock_coverage_time_unit_suggested='01' where Maximum_safety_stock_coverage_time_unit_suggested is null;
update spu set EOQ_basic_coverage_time_unit_suggested='01' where EOQ_basic_coverage_time_unit_suggested is null;
update spu set Minimum_EOQ_coverage_time_unit_suggested='01' where Minimum_EOQ_coverage_time_unit_suggested is null;
update spu set Maximum_EOQ_coverage_time_unit_suggested='01' where Maximum_EOQ_coverage_time_unit_suggested is null;
update spu set Minimum_EOQ_coverage_time_unit_effective='01' where Minimum_EOQ_coverage_time_unit_effective is null;
update spu set Maximum_EOQ_coverage_time_unit_effective='01' where Maximum_EOQ_coverage_time_unit_effective is null;


/*Campos deletados:

[Parameters � SPU].[Safety stock � fixed]
[Parameters � SPU].[Safety stock � variable]
[Parameters � SPU].[EOQ size � fixed]
[Parameters � SPU].[EOQ size � variable]
 
[SPU].[Lead time � effective � buckets]
[SPU].[Safety stock type � suggested]
[SPU].[Safety stock type � effective]
[SPU].[Safety stock � fixed � effective]
[SPU].[Safety stock � variable � effective]
[SPU].[EOQ type � effective]
[SPU].[EOQ size � fixed � effective]
[SPU].[EOQ size �variable � effective] 


ParametersSPU.Safetystockfixed,
ParametersSPU.Safetystockvariable,
ParametersSPU.EOQsizefixed,
ParametersSPU.EOQsizevariable,

SPU.Leadtimeeffectivebucketsxxxx,
SPU.Safetystocktypesuggested,

SPU.Safetystocktypeeffective,

SPU.Safetystockfixedeffective,
parei aqui
SPU.Safetystockvariableeffective,
SPU.EOQtypeeffective,
SPU.EOQsizefixedeffective,
SPU.EOQsizevariableeffective,


*/
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_stock_fixed' )	
	alter table spu_parameter drop column Safety_stock_fixed;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='Safety_stock_variable' )	
	alter table spu_parameter drop column Safety_stock_variable;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='EOQ_size_fixed' )	
	alter table spu_parameter drop column EOQ_size_fixed;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='EOQ_size_variable' )	
	alter table spu_parameter drop column EOQ_size_variable;		
	

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Lead_time_effective_bucketsx' )	
	alter table SPU drop column Lead_time_effective_bucketsx;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_type_suggested' )	
	alter table SPU drop column Safety_stock_type_suggested;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_type_effective' )	
	alter table SPU drop column Safety_stock_type_effective;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_fixed_effective' )	
	alter table SPU drop column Safety_stock_fixed_effective;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_variable_effective' )	
	alter table SPU drop column Safety_stock_variable_effective;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_type_effective' )	
	alter table SPU drop column EOQ_type_effective;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_size_fixed_effective' )	
	alter table SPU drop column EOQ_size_fixed_effective;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='EOQ_size_variable_effective' )	
	alter table SPU drop column EOQ_size_variable_effective;	

	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Minimum_safety_stock_coverage_unit_of_measure_suggested' )	
	alter table SPU drop column Minimum_safety_stock_coverage_unit_of_measure_suggested;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Maximum_safety_stock_coverage_unit_of_measure_suggested' )	
	alter table SPU drop column Maximum_safety_stock_coverage_unit_of_measure_suggested;	

	  	