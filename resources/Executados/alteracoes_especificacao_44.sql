use Proper_Base

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Current_Life_Cycle_Stage' )
	alter table Itens drop column Current_Life_Cycle_Stage;	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='effectiveness_Parameter_Life_Cycle' )
	alter table Itens drop column effectiveness_Parameter_Life_Cycle;	

EXEC sp_rename 'Item_Filter_Criteria.Life_Cycle_Stage', 'Current_Stage', 'COLUMN';
EXEC sp_rename 'Item_Filter_Criteria.Unit_Of_Measure_id', 'Main_Unit_Of_Measure_id', 'COLUMN';

alter table Item_Filter_Criteria add Default_duration_Development [numeric](18, 0) NULL;

alter table Item_Filter_Criteria add Mass_unit_of_measure_id [numeric](18, 0) NULL;
alter table Item_Filter_Criteria add Volume_unit_of_measure_id [numeric](18, 0) NULL;
alter table Item_Filter_Criteria add Area_unit_of_measure_id [numeric](18, 0) NULL;
alter table Item_Filter_Criteria add Length_unit_of_measure_id [numeric](18, 0) NULL;
alter table Item_Filter_Criteria add Units_unit_of_measure_id [numeric](18, 0) NULL;
alter table Item_Filter_Criteria add Mass_measurement [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Volume_measurement [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Area_measurement [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Length_measurement [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Units_measurement [nvarchar](2) NULL;


	  
alter table Item_Filter_Criteria add next_analysis_stage [nvarchar](2) NULL;
alter table Item_Filter_Criteria add stage_change [nvarchar](2) NULL;

alter table Item_Filter_Criteria add First_demand_user_defined [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Last_demand_user_defined [nvarchar](2) NULL;


alter table Item_Filter_Criteria add Priority_criteria_01_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_01_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_02_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_02_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_03_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_03_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_04_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_04_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_05_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Priority_criteria_05_to [numeric](18, 4) NULL;

alter table Item_Filter_Criteria add Qualitative_factor_01_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_01_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_02_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_02_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_03_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_03_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_04_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_04_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_05_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_05_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_06_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_06_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_07_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_07_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_08_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_08_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_09_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_09_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_10_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Qualitative_factor_10_to [numeric](18, 4) NULL;

alter table Item_Filter_Criteria add Corrective_effect_economic_lot_size_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Corrective_effect_economic_lot_size_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Corrective_effect_revision_period_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Corrective_effect_revision_period_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Corrective_effect_safety_stock_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Corrective_effect_safety_stock_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Corrective_effect_safety_lead_time_from [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Corrective_effect_safety_lead_time_to [numeric](18, 4) NULL;
alter table Item_Filter_Criteria add Validation_total [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_basic_data [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_family [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_category [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_unit_of_measure [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_packaging [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_shelf_life [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_demand [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_life_cycle [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_criticality [nvarchar](2) NULL;
alter table Item_Filter_Criteria add Validation_qualitative [nvarchar](2) NULL;

EXEC sp_rename 'Demand_history_detail.Date', 'demand_Date', 'COLUMN';
EXEC sp_rename 'Demand_history_detail.Type', 'Demand_detail_type', 'COLUMN';
alter table Demand_history_detail add demand_history_id [numeric](18, 0) NULL;
