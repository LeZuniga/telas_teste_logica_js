use proper_base;


/* exclusao de campos 
Campos retirados da documentação: */

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_factor_demand_variation' )	
	alter table SPU drop column Safety_factor_demand_variation;	

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_factor_forecast_error' )
	alter table SPU drop column Safety_factor_forecast_error;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_factor_lead_time_variation' )
	alter table SPU drop column Safety_factor_lead_time_variation;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_initial_suggestion_quantity_pull' )
	alter table SPU drop column Safety_stock_initial_suggestion_quantity_pull;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_initial_suggestion_quantity_push' )
	alter table SPU drop column Safety_stock_initial_suggestion_quantity_push;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_initial_suggestion_value_pull' )	
	alter table SPU drop column Safety_stock_initial_suggestion_value_pull;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_initial_suggestion_value_push' )	
	alter table SPU drop column Safety_stock_initial_suggestion_value_push;

/*Campos incluídos na documentação:*/

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_pull_quantity_suggested' ) 
alter table spu add Safety_stock_pull_quantity_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_pull_quantity_suggested_revised' ) 
alter table spu add Safety_stock_pull_quantity_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_pull_value_suggested' ) 
alter table spu add Safety_stock_pull_value_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_pull_value_suggested_revised' ) 
alter table spu add Safety_stock_pull_value_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_push_quantity_suggested' ) 
alter table spu add Safety_stock_push_quantity_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_push_quantity_suggested_revised' ) 
alter table spu add Safety_stock_push_quantity_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_push_value_suggested' ) 
alter table spu add Safety_stock_push_value_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Safety_stock_push_value_suggested_revised' ) 
alter table spu add Safety_stock_push_value_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Push_vs_Pull_difference_value_suggested' ) 
alter table spu add Push_vs_Pull_difference_value_suggested [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Push_vs_Pull_difference_value_suggested_revised' ) 
alter table spu add Push_vs_Pull_difference_value_suggested_revised [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Variability_ABC_classification' ) 
alter table spu add Variability_ABC_classification [nvarchar](1) NULL;

