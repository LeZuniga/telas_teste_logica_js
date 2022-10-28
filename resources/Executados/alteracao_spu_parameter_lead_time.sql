use proper_base
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Lead_time_Minimum_' )
	EXEC sp_rename 'spu_parameter.Lead_time_Minimum_', 'Lead_time_Minimum', 'COLUMN';

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Lead_time_Maximum_' )
	EXEC sp_rename 'spu_parameter.Lead_time_Maximum_', 'Lead_time_Maximum', 'COLUMN';
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Lot_size_Minimum_' )
	EXEC sp_rename 'spu_parameter.Lot_size_Minimum_', 'Lot_size_Minimum', 'COLUMN';