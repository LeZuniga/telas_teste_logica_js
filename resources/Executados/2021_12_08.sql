use proper_base;


 
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Parameters_precedence_EOQ' ) 
   alter table Parameters_Analysis add Parameters_precedence_EOQ nvarchar(2) NULL DEFAULT '01';

// [Parameters – Management Unit].[Lot size – overall adjustment] para [Parameters – Management Unit].[EOQ – overall adjustment]
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Lot_size_overall_adjustment' )	
	EXEC sp_rename 'management_unit_parameter.Lot_size_overall_adjustment', 'EOQ_overall_adjustment', 'COLUMN';	
	
	
//[Parameters - Management Unit].[Minimum EOQ coverage unit of measure] para [Parameters - Management Unit].[Minimum EOQ coverage time unit]
//[Parameters - Management Unit].[Maximum EOQ coverage unit of measure] para [Parameters - Management Unit].[Maximum EOQ coverage time unit] 
//[Parameters - SPU].[Minimum EOQ coverage unit of measure]  para [Parameters - SPU].[Minimum EOQ coverage time unit] 
//[Parameters - SPU].[Maximum EOQ coverage unit of measure] para [Parameters - SPU].[Maximum EOQ coverage time unit]

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage_unit_of_measure' )	
	EXEC sp_rename 'management_unit_parameter.Minimum_EOQ_coverage_unit_of_measure', 'Minimum_EOQ_coverage_time_unit', 'COLUMN';	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Maximum_EOQ_coverage_unit_of_measure' )	
	EXEC sp_rename 'management_unit_parameter.Maximum_EOQ_coverage_unit_of_measure', 'Maximum_EOQ_coverage_time_unit', 'COLUMN';	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage_unit_of_measure' )	
	EXEC sp_rename 'spu_parameter.Minimum_EOQ_coverage_unit_of_measure', 'Minimum_EOQ_coverage_time_unit', 'COLUMN';	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_EOQ_coverage_unit_of_measure' )	
	EXEC sp_rename 'spu_parameter.Maximum_EOQ_coverage_unit_of_measure', 'Maximum_EOQ_coverage_time_unit', 'COLUMN';	

// se nao achou o campo para renomear, cria	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage_time_unit' ) 
   alter table management_unit_parameter add Minimum_EOQ_coverage_time_unit nvarchar(2) NULL;	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage_time_unit' ) 
   alter table management_unit_parameter add Maximum_EOQ_coverage_time_unit nvarchar(2) NULL;	
	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage_time_unit' ) 
   alter table spu_parameter add Minimum_EOQ_coverage_time_unit nvarchar(2) NULL;	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_EOQ_coverage_time_unit' ) 
   alter table spu_parameter add Maximum_EOQ_coverage_time_unit nvarchar(2) NULL;	
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_lot_size_coverage' ) 
   alter table management_unit_parameter add Minimum_lot_size_coverage nvarchar(2) NULL;	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_lot_size_coverage_unit_of_measure' ) 
   alter table management_unit_parameter add Minimum_lot_size_coverage_unit_of_measure nvarchar(2) NULL;	
 
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Maximum_lot_size_coverage' ) 
   alter table management_unit_parameter add Maximum_lot_size_coverage nvarchar(2) NULL;	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Maximum_lot_size_coverage_unit_of_measure' ) 
   alter table management_unit_parameter add Maximum_lot_size_coverage_unit_of_measure nvarchar(2) NULL;	  

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='Minimum_EOQ_coverage' ) 
   alter table management_unit_parameter add Minimum_EOQ_coverage [numeric](18, 4) NULL;

	

