use Proper_Base
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Function_enabled_demand_bucket_detail' )
	alter table Parameters_Analysis add Function_enabled_demand_bucket_detail [nvarchar](2) NULL;
	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Function_enabled_demand_detail_by_client' )
	alter table Parameters_Analysis add Function_enabled_demand_detail_by_client [nvarchar](2) NULL;
	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Function_enabled_supply_alternatives' )
	alter table Parameters_Analysis add Function_enabled_supply_alternatives [nvarchar](2) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Function_enabled_supply_detail_by_supplier' )
	alter table Parameters_Analysis add Function_enabled_supply_detail_by_supplier [nvarchar](2) NULL;
	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Function_enabled_warehouses' )
	alter table Parameters_Analysis add Function_enabled_warehouses [nvarchar](2) NULL;
	
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Outlier_criterion' )
	alter table Parameters_Analysis add Outlier_criterion [numeric](18, 4) NULL;
	
EXEC sp_rename 'Category.Distinctive_Criteria', 'Distinctive_Criterion', 'COLUMN';

EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_description', 'Criticality_criterion_01_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_02_description', 'Criticality_criterion_02_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_03_description', 'Criticality_criterion_03_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_04_description', 'Criticality_criterion_04_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_05_description', 'Criticality_criterion_05_description', 'COLUMN';

EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_0', 'Criticality_criterion_01_grade_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_02_grade_0', 'Criticality_criterion_02_grade_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_03_grade_0', 'Criticality_criterion_03_grade_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_04_grade_0', 'Criticality_criterion_04_grade_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_05_grade_0', 'Criticality_criterion_05_grade_0', 'COLUMN';

EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_5', 'Criticality_criterion_01_grade_5', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_02_grade_5', 'Criticality_criterion_02_grade_5', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_03_grade_5', 'Criticality_criterion_03_grade_5', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_04_grade_5', 'Criticality_criterion_04_grade_5', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_05_grade_5', 'Criticality_criterion_05_grade_5', 'COLUMN';

EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_10', 'Criticality_criterion_01_grade_10', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_02_grade_10', 'Criticality_criterion_02_grade_10', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_03_grade_10', 'Criticality_criterion_03_grade_10', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_04_grade_10', 'Criticality_criterion_04_grade_10', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_05_grade_10', 'Criticality_criterion_05_grade_10', 'COLUMN';

EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_weight', 'Criticality_criterion_01_weight', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_02_weight', 'Criticality_criterion_02_weight', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_03_weight', 'Criticality_criterion_03_weight', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_04_weight', 'Criticality_criterion_04_weight', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_05_weight', 'Criticality_criterion_05_weight', 'COLUMN';

EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_0_correction_EOQ', 'Criticality_criterion_grade_0_correction_EOQ', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_10_correction_EOQ', 'Criticality_criterion_grade_10_correction_EOQ', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_0_correction_revision_period', 'Criticality_criterion_grade_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_10_correction_revision_period', 'Criticality_criterion_grade_10_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_0_correction_safety_stock', 'Criticality_criterion_grade_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_10_correction_safety_stock', 'Criticality_criterion_grade_10_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_0_correction_safety_lead_time', 'Criticality_criterion_grade_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Criticality_criteria_01_grade_10_correction_safety_lead_time', 'Criticality_criterion_grade_10_correction_safety_lead_time', 'COLUMN';	

alter table Parameters_Analysis drop column Criticality_criteria_02_grade_0_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_02_grade_10_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_02_grade_0_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_02_grade_10_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_02_grade_0_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_02_grade_10_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_02_grade_0_correction_safety_lead_time;
alter table Parameters_Analysis drop column Criticality_criteria_02_grade_10_correction_safety_lead_time;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_0_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_10_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_0_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_10_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_0_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_10_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_0_correction_safety_lead_time;
alter table Parameters_Analysis drop column Criticality_criteria_03_grade_10_correction_safety_lead_time;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_0_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_10_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_0_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_10_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_0_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_10_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_0_correction_safety_lead_time;
alter table Parameters_Analysis drop column Criticality_criteria_04_grade_10_correction_safety_lead_time;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_0_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_10_correction_EOQ;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_0_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_10_correction_revision_period;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_0_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_10_correction_safety_stock;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_0_correction_safety_lead_time;
alter table Parameters_Analysis drop column Criticality_criteria_05_grade_10_correction_safety_lead_time;

EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_description','Quality_criterion_01_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_0_0','Quality_criterion_01_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_5_0','Quality_criterion_01_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_10_0','Quality_criterion_01_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_0_0_correction_economic_lot_size','Quality_criterion_01_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_10_0_correction_economic_lot_size','Quality_criterion_01_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_0_0_correction_revision_period','Quality_criterion_01_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_10_0_correction_revision_period','Quality_criterion_01_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_0_0_correction_safety_stock','Quality_criterion_01_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_10_0_correction_safety_stock','Quality_criterion_01_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_0_0_correction_safety_lead_time','Quality_criterion_01_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_01_grade_10_0_correction_safety_lead_time','Quality_criterion_01_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_description','Quality_criterion_02_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_0_0','Quality_criterion_02_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_5_0','Quality_criterion_02_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_10_0','Quality_criterion_02_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_0_0_correction_economic_lot_size','Quality_criterion_02_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_10_0_correction_economic_lot_size','Quality_criterion_02_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_0_0_correction_revision_period','Quality_criterion_02_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_10_0_correction_revision_period','Quality_criterion_02_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_0_0_correction_safety_stock','Quality_criterion_02_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_10_0_correction_safety_stock','Quality_criterion_02_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_0_0_correction_safety_lead_time','Quality_criterion_02_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_02_grade_10_0_correction_safety_lead_time','Quality_criterion_02_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_description','Quality_criterion_03_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_0_0','Quality_criterion_03_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_5_0','Quality_criterion_03_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_10_0','Quality_criterion_03_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_0_0_correction_economic_lot_size','Quality_criterion_03_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_10_0_correction_economic_lot_size','Quality_criterion_03_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_0_0_correction_revision_period','Quality_criterion_03_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_10_0_correction_revision_period','Quality_criterion_03_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_0_0_correction_safety_stock','Quality_criterion_03_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_10_0_correction_safety_stock','Quality_criterion_03_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_0_0_correction_safety_lead_time','Quality_criterion_03_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_03_grade_10_0_correction_safety_lead_time','Quality_criterion_03_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_description','Quality_criterion_04_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_0_0','Quality_criterion_04_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_5_0','Quality_criterion_04_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_10_0','Quality_criterion_04_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_0_0_correction_economic_lot_size','Quality_criterion_04_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_10_0_correction_economic_lot_size','Quality_criterion_04_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_0_0_correction_revision_period','Quality_criterion_04_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_10_0_correction_revision_period','Quality_criterion_04_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_0_0_correction_safety_stock','Quality_criterion_04_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_10_0_correction_safety_stock','Quality_criterion_04_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_0_0_correction_safety_lead_time','Quality_criterion_04_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_04_grade_10_0_correction_safety_lead_time','Quality_criterion_04_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_description','Quality_criterion_05_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_0_0','Quality_criterion_05_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_5_0','Quality_criterion_05_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_10_0','Quality_criterion_05_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_0_0_correction_economic_lot_size','Quality_criterion_05_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_10_0_correction_economic_lot_size','Quality_criterion_05_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_0_0_correction_revision_period','Quality_criterion_05_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_10_0_correction_revision_period','Quality_criterion_05_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_0_0_correction_safety_stock','Quality_criterion_05_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_10_0_correction_safety_stock','Quality_criterion_05_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_0_0_correction_safety_lead_time','Quality_criterion_05_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_05_grade_10_0_correction_safety_lead_time','Quality_criterion_05_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_description','Quality_criterion_06_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_0_0','Quality_criterion_06_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_5_0','Quality_criterion_06_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_10_0','Quality_criterion_06_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_0_0_correction_economic_lot_size','Quality_criterion_06_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_10_0_correction_economic_lot_size','Quality_criterion_06_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_0_0_correction_revision_period','Quality_criterion_06_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_10_0_correction_revision_period','Quality_criterion_06_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_0_0_correction_safety_stock','Quality_criterion_06_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_10_0_correction_safety_stock','Quality_criterion_06_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_0_0_correction_safety_lead_time','Quality_criterion_06_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_06_grade_10_0_correction_safety_lead_time','Quality_criterion_06_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_description','Quality_criterion_07_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_0_0','Quality_criterion_07_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_5_0','Quality_criterion_07_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_10_0','Quality_criterion_07_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_0_0_correction_economic_lot_size','Quality_criterion_07_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_10_0_correction_economic_lot_size','Quality_criterion_07_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_0_0_correction_revision_period','Quality_criterion_07_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_10_0_correction_revision_period','Quality_criterion_07_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_0_0_correction_safety_stock','Quality_criterion_07_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_10_0_correction_safety_stock','Quality_criterion_07_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_0_0_correction_safety_lead_time','Quality_criterion_07_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_07_grade_10_0_correction_safety_lead_time','Quality_criterion_07_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_description','Quality_criterion_08_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_0_0','Quality_criterion_08_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_5_0','Quality_criterion_08_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_10_0','Quality_criterion_08_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_0_0_correction_economic_lot_size','Quality_criterion_08_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_10_0_correction_economic_lot_size','Quality_criterion_08_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_0_0_correction_revision_period','Quality_criterion_08_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_10_0_correction_revision_period','Quality_criterion_08_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_0_0_correction_safety_stock','Quality_criterion_08_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_10_0_correction_safety_stock','Quality_criterion_08_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_0_0_correction_safety_lead_time','Quality_criterion_08_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_08_grade_10_0_correction_safety_lead_time','Quality_criterion_08_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_description','Quality_criterion_09_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_0_0','Quality_criterion_09_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_5_0','Quality_criterion_09_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_10_0','Quality_criterion_09_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_0_0_correction_economic_lot_size','Quality_criterion_09_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_10_0_correction_economic_lot_size','Quality_criterion_09_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_0_0_correction_revision_period','Quality_criterion_09_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_10_0_correction_revision_period','Quality_criterion_09_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_0_0_correction_safety_stock','Quality_criterion_09_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_10_0_correction_safety_stock','Quality_criterion_09_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_0_0_correction_safety_lead_time','Quality_criterion_09_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_09_grade_10_0_correction_safety_lead_time','Quality_criterion_09_grade_10_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_description','Quality_criterion_10_description', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_0_0','Quality_criterion_10_grade_0_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_5_0','Quality_criterion_10_grade_5_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_10_0','Quality_criterion_10_grade_10_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_0_0_correction_economic_lot_size','Quality_criterion_10_grade_0_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_10_0_correction_economic_lot_size','Quality_criterion_10_grade_10_0_correction_economic_lot_size', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_0_0_correction_revision_period','Quality_criterion_10_grade_0_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_10_0_correction_revision_period','Quality_criterion_10_grade_10_0_correction_revision_period', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_0_0_correction_safety_stock','Quality_criterion_10_grade_0_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_10_0_correction_safety_stock','Quality_criterion_10_grade_10_0_correction_safety_stock', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_0_0_correction_safety_lead_time','Quality_criterion_10_grade_0_0_correction_safety_lead_time', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Quality_criteria_10_grade_10_0_correction_safety_lead_time','Quality_criterion_10_grade_10_0_correction_safety_lead_time', 'COLUMN';


EXEC sp_rename 'management_unit_parameter.Criticality_criteria_01_Weight','Criticality_criterion_01_Weight','COLUMN';
EXEC sp_rename 'management_unit_parameter.Criticality_criteria_02_Weight','Criticality_criterion_02_Weight','COLUMN';
EXEC sp_rename 'management_unit_parameter.Criticality_criteria_03_Weight','Criticality_criterion_03_Weight','COLUMN';
EXEC sp_rename 'management_unit_parameter.Criticality_criteria_04_Weight','Criticality_criterion_04_Weight','COLUMN';
EXEC sp_rename 'management_unit_parameter.Criticality_criteria_05_Weight','Criticality_criterion_05_Weight','COLUMN';

EXEC sp_rename 'item_parameters.Qualitative_criteria_1_grade','Qualitative_criterion_01_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_2_grade','Qualitative_criterion_02_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_3_grade','Qualitative_criterion_03_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_4_grade','Qualitative_criterion_04_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_5_grade','Qualitative_criterion_05_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_6_grade','Qualitative_criterion_06_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_7_grade','Qualitative_criterion_07_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_8_grade','Qualitative_criterion_08_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_9_grade','Qualitative_criterion_09_grade','COLUMN';
EXEC sp_rename 'item_parameters.Qualitative_criteria_10_grade','Qualitative_criterion_10_grade','COLUMN';

EXEC sp_rename 'item_parameters.Criticality_criteria_01_grade','Criticality_criterion_01_grade','COLUMN';
EXEC sp_rename 'item_parameters.Criticality_criteria_02_grade','Criticality_criterion_02_grade','COLUMN';
EXEC sp_rename 'item_parameters.Criticality_criteria_03_grade','Criticality_criterion_03_grade','COLUMN';
EXEC sp_rename 'item_parameters.Criticality_criteria_04_grade','Criticality_criterion_04_grade','COLUMN';
EXEC sp_rename 'item_parameters.Criticality_criteria_05_grade','Criticality_criterion_05_grade','COLUMN';

EXEC sp_rename 'spu_parameter.Qualitative_criteria_1_grade','Qualitative_criterion_01_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_2_grade','Qualitative_criterion_02_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_3_grade','Qualitative_criterion_03_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_4_grade','Qualitative_criterion_04_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_5_grade','Qualitative_criterion_05_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_6_grade','Qualitative_criterion_06_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_7_grade','Qualitative_criterion_07_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_8_grade','Qualitative_criterion_08_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_9_grade','Qualitative_criterion_09_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Qualitative_criteria_10_grade','Qualitative_criterion_10_grade','COLUMN';

EXEC sp_rename 'spu_parameter.Criticality_criteria_01_grade','Criticality_criterion_01_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Criticality_criteria_02_grade','Criticality_criterion_02_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Criticality_criteria_03_grade','Criticality_criterion_03_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Criticality_criteria_04_grade','Criticality_criterion_04_grade','COLUMN';
EXEC sp_rename 'spu_parameter.Criticality_criteria_05_grade','Criticality_criterion_05_grade','COLUMN';

      
      
      
