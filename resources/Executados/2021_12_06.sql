use proper_base;

/*
De [Parameters – Management Unit].[Minimum lot size coverage] para [Parameters – Management Unit].[Minimum EOQ coverage]
De [Parameters – Management Unit].[Minimum lot size coverage unit of measure] para [Parameters – Management Unit].[Minimum EOQ coverage unit of measure]
De [Parameters – Management Unit].[Maximum lot size coverage] para [Parameters – Management Unit].[Maximum EOQ coverage]
De [Parameters – Management Unit].[Maximum lot size  coverage unit of measure] para [Parameters – Management Unit].[Maximum EOQ coverage unit of measure]
*/

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_lot_size_coverage' )	
	EXEC sp_rename 'management_unit_parameter.Minimum_lot_size_coverage', 'Minimum_EOQ_coverage', 'COLUMN';	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_lot_size_coverage_unit_of_measure' )	
	EXEC sp_rename 'management_unit_parameter.Minimum_lot_size_coverage_unit_of_measure', 'Minimum_EOQ_coverage_unit_of_measure', 'COLUMN';	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Maximum_lot_size_coverage' )	
	EXEC sp_rename 'management_unit_parameter.Maximum_lot_size_coverage', 'Maximum_EOQ_coverage_unit_of_measure', 'COLUMN';	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Maximum_lot_size_coverage_unit_of_measure' )	
	EXEC sp_rename 'management_unit_parameter.Maximum_lot_size_coverage_unit_of_measure', 'Maximum_EOQ_coverage_unit_of_measure', 'COLUMN';	
/*
Minimum_EOQ_coverage	
Minimum_EOQ_coverage_unit_of_measure
Minimum_EOQ_coverage
Maximum_EOQ_coverage_unit_of_measure
*/

/*	Service Level, Safety Stock and Lot Size
[SPU].[Average inventory – quantity – suggested]
[SPU].[Average inventory – value – suggested]
[SPU].[Average inventory – percentage – suggested]
[SPU].[Average inventory – coverage – suggested]
[SPU].[Average inventory – quantity – effective]
[SPU].[Average inventory – value – effective]
[SPU].[Average inventory – percentage – effective]
[SPU].[Average inventory – coverage – effective]
[SPU].[Maximum inventory – quantity – suggested]
[SPU].[Maximum inventory – value – suggested]
[SPU].[Maximum inventory – percentage – suggested]
[SPU].[Maximum inventory – coverage – suggested]
[SPU].[Maximum inventory – quantity – effective]
[SPU].[Maximum inventory – value – effective]
[SPU].[Maximum inventory – percentage – effective]
[SPU].[Maximum inventory – coverage – effective]

Average_inventory_quantity_suggested
Average_inventory_value_suggested
Average_inventory_percentage_suggested
Average_inventory_coverage_suggested
Average_inventory_quantity_effective
Average_inventory_value_effective
Average_inventory_percentage_effective
Average_inventory_coverage_effective
Maximum_inventory_quantity_suggested
Maximum_inventory_value_suggested
Maximum_inventory_percentage_suggested
Maximum_inventory_coverage_suggested
Maximum_inventory_quantity_effective
Maximum_inventory_value_effective
Maximum_inventory_percentage_effective
Maximum_inventory_coverage_effective
*/	
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_quantity_suggested') 
	alter table spu add Average_inventory_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_value_suggested') 
	alter table spu add Average_inventory_value_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_percentage_suggested') 
	alter table spu add Average_inventory_percentage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_coverage_suggested') 
	alter table spu add Average_inventory_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_quantity_effective') 
	alter table spu add Average_inventory_quantity_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_value_effective') 
	alter table spu add Average_inventory_value_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_percentage_effective') 
	alter table spu add Average_inventory_percentage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Average_inventory_coverage_effective') 
	alter table spu add Average_inventory_coverage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_quantity_suggested') 
	alter table spu add Maximum_inventory_quantity_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_value_suggested') 
	alter table spu add Maximum_inventory_value_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_percentage_suggested') 
	alter table spu add Maximum_inventory_percentage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_coverage_suggested') 
	alter table spu add Maximum_inventory_coverage_suggested [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_quantity_effective') 
	alter table spu add Maximum_inventory_quantity_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_value_effective') 
	alter table spu add Maximum_inventory_value_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_percentage_effective') 
	alter table spu add Maximum_inventory_percentage_effective [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Maximum_inventory_coverage_effective') 
	alter table spu add Maximum_inventory_coverage_effective [numeric](18, 4) NULL;

/*   
 Campos deletados:

[SPU].[Forecast error – standard deviation – bucket]*/
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu' AND COLUMN_NAME='Forecast_error_standard_deviation_bucket' )	
	alter table spu drop column Forecast_error_standard_deviation_bucket;		


   