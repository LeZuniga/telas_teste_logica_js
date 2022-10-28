USE Proper_Base

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Bellow_minimum_value' )
	EXEC sp_rename 'Management_Unit_Demand_and_Inventory_Map.Bellow_minimum_value', 'Below_minimum_value', 'COLUMN';
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Bellow_minimum_quantity' )
	EXEC sp_rename 'SPU.Bellow_minimum_quantity', 'Below_minimum_quantity', 'COLUMN';

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Bellow_minimum_value' )
	EXEC sp_rename 'SPU.Bellow_minimum_value', 'Below_minimum_value', 'COLUMN';

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='SPU' AND COLUMN_NAME='Current_date_invent_history' )
	EXEC sp_rename 'SPU.Current_date_invent_history', 'Current_date_inventory_history', 'COLUMN';

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu_Inventory_Performance' AND COLUMN_NAME='Bellow_minimum_value' )
	EXEC sp_rename 'Spu_Inventory_Performance.Bellow_minimum_value', 'Below_minimum_value', 'COLUMN';

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu_Inventory_Performance' AND COLUMN_NAME='Bellow_minimum_quantity' )
	EXEC sp_rename 'Spu_Inventory_Performance.Bellow_minimum_quantity', 'Below_minimum_quantity', 'COLUMN';

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu_Inventory_Performance' AND COLUMN_NAME='Bellow_minimum_coverage' )
	EXEC sp_rename 'Spu_Inventory_Performance.Bellow_minimum_coverage', 'Below_minimum_coverage', 'COLUMN';
	
ALTER TABLE spu add Current_lead_time_demand_forecast_quantity float(53);
ALTER TABLE spu add Current_lead_time_demand_forecast_value float(53);
ALTER TABLE spu add Current_inventory_coverage float(53);
ALTER TABLE spu add Current_safety_stock_quantity float(53);
ALTER TABLE spu add Current_safety_stock_value float(53);
ALTER TABLE spu add Current_safety_stock_coverage float(53);
ALTER TABLE spu add Current_EOQ_quantity float(53);
ALTER TABLE spu add Current_EOQ_value float(53);
ALTER TABLE spu add Current_EOQ_coverage float(53);
ALTER TABLE spu add Current_maximum_inventory_quantity float(53);
ALTER TABLE spu add Current_maximum_inventory_value float(53);
ALTER TABLE spu add Below_minimum_coverage float(53);
ALTER TABLE spu add Above_maximum_coverage float(53);	

insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_ACTION_DEMANDA', 'Calculos Action Demanda', 'br.com.straight.proper.jobs.CalculosActionDemanda');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_ACTION_PREVISAO', 'Calculos Action Previsao', 'br.com.straight.proper.jobs.CalculosActionPrevisao');
insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('CAL_ACTION_ESTOQUE', 'Calculos Action Estoque', 'br.com.straight.proper.jobs.CalculosActionEstoque');

