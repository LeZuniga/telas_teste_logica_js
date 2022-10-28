USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_qualitative_factors_grades' )
	alter table Itens drop column Validation_qualitative_factors_grades;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_life_cycle' )
	alter table Itens drop column Validation_life_cycle;	

CREATE TABLE [dbo].[Spu_Interface](
 [Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 [analysis_id] [numeric](18, 0) NULL,
Proper_company_code [nvarchar](50) NULL,
Region_code_management_group [nvarchar](50) NULL,
Management_group_code [nvarchar](50) NULL,
Reference_date [nvarchar](50) NULL,
Analysis_code [nvarchar](50) NULL,
Interface_time_stamp [nvarchar](50) NULL,
Region_code_management_unit [nvarchar](50) NULL,
Management_unit_code [nvarchar](50) NULL,
Item_code [nvarchar](50) NULL,
Demand_category_classification_01 [nvarchar](50) NULL,
Demand_category_classification_02 [nvarchar](50) NULL,
Demand_category_classification_03 [nvarchar](50) NULL,
Demand_category_classification_04 [nvarchar](50) NULL,
Demand_category_classification_05 [nvarchar](50) NULL,
Creation_date_ERP [nvarchar](50) NULL,
Palletization [nvarchar](50) NULL,
Bulk_storage_code [nvarchar](50) NULL,
Planner_code [nvarchar](50) NULL,
Currency_code [nvarchar](50) NULL,
Unit_cost_average [nvarchar](50) NULL,
Unit_cost_replenishment [nvarchar](50) NULL,
Unit_cost_alternate [nvarchar](50) NULL,
Lead_time_unit [nvarchar](50) NULL,
Lead_time_minimum [nvarchar](50) NULL,
Lead_time_modal_value [nvarchar](50) NULL,
Lead_time_average [nvarchar](50) NULL,
Lead_time_maximum [nvarchar](50) NULL,
Lead_time_standard_deviation [nvarchar](50) NULL,
Safety_lead_time [nvarchar](50) NULL,
Average_interval [nvarchar](50) NULL,
Interval_time_unit [nvarchar](50) NULL,
Lot_size_minimum [nvarchar](50) NULL,
Lot_size_multiple [nvarchar](50) NULL,
Grouping_item_code [nvarchar](50) NULL,
Local_independent_demand_origin [nvarchar](50) NULL,
Local_dependent_estimated_demand_origin [nvarchar](50) NULL,
Local_dependent_demand_origin [nvarchar](50) NULL,
Transferred_demand_origin [nvarchar](50) NULL,
Transferred_estimated_demand_origin [nvarchar](50) NULL,
First_demand [nvarchar](50) NULL,
Relevant_history_begin [nvarchar](50) NULL,
Relevant_history_end [nvarchar](50) NULL,
Relevant_history_duration [nvarchar](50) NULL,
Relevant_history_duration_unit_of_measure [nvarchar](50) NULL,
Frozen_horizon_value [nvarchar](50) NULL,
Frozen_horizon_time_unit [nvarchar](50) NULL,
Maximum_demand_increase [nvarchar](50) NULL,
Maximum_demand_decrease [nvarchar](50) NULL,
Proper_Assessment [nvarchar](50) NULL,
Proper_Stock_analysis [nvarchar](50) NULL,
Proper_Action_monitoring [nvarchar](50) NULL,
Management_type [nvarchar](50) NULL,
Planning_method [nvarchar](50) NULL,
Criticality_criterion_01_grade [nvarchar](50) NULL,
Criticality_criterion_02_grade [nvarchar](50) NULL,
Criticality_criterion_03_grade [nvarchar](50) NULL,
Criticality_criterion_04_grade [nvarchar](50) NULL,
Criticality_criterion_05_grade [nvarchar](50) NULL,
Maximum_forecast_error [nvarchar](50) NULL,
Minimum_safety_stock_coverage [nvarchar](50) NULL,
Minimum_safety_stock_coverage_unit_of_measure [nvarchar](50) NULL,
Maximum_safety_stock_coverage [nvarchar](50) NULL,
Maximum_safety_stock_coverage_unit_of_measure [nvarchar](50) NULL,
Service_level [nvarchar](50) NULL,
Safety_stock_quantity [nvarchar](50) NULL,
Safety_stock_percentage [nvarchar](50) NULL,
Safety_stock_coverage [nvarchar](50) NULL,
Safety_stock_coverage_time_unit [nvarchar](50) NULL,
Minimum_EOQ_coverage [nvarchar](50) NULL,
Minimum_EOQ_coverage_time_unit [nvarchar](50) NULL,
Maximum_EOQ_coverage [nvarchar](50) NULL,
Maximum_EOQ_coverage_time_unit [nvarchar](50) NULL,
EOQ_quantity [nvarchar](50) NULL,
EOQ_coverage [nvarchar](50) NULL,
EOQ_coverage_time_unit [nvarchar](50) NULL,
Qualitative_criterion_1_grade [nvarchar](50) NULL,
Qualitative_criterion_2_grade [nvarchar](50) NULL,
Qualitative_criterion_3_grade [nvarchar](50) NULL,
Qualitative_criterion_4_grade [nvarchar](50) NULL,
Qualitative_criterion_5_grade [nvarchar](50) NULL,
Qualitative_criterion_6_grade [nvarchar](50) NULL,
Qualitative_criterion_7_grade [nvarchar](50) NULL,
Qualitative_criterion_8_grade [nvarchar](50) NULL,
Qualitative_criterion_9_grade [nvarchar](50) NULL,
Qualitative_criterion_10_grade [nvarchar](50) NULL,
interface_history_id [numeric](18, 0) NULL,
Validation_total [int] NULL,
Validation_Management_Unit [int] NULL,
Validation_item [int] NULL,
Validation_demand_categories [int] NULL,
Validation_creation_date [int] NULL,
Validation_storage [int] NULL,
Validation_planner [int] NULL,
Validation_currency [int] NULL,
Validation_unit_cost [int] NULL,
Validation_lead_time [int] NULL,
Validation_safety_lead_time [int] NULL,
Validation_interval [int] NULL,
Validation_lot_sizes [int] NULL,
Validation_grouping [int] NULL,
Validation_first_demand [int] NULL,
Validation_relevant_history [int] NULL,
Validation_frozen_horizon [int] NULL,
Validation_maximum_demand_variation [int] NULL,
Validation_Proper_scope [int] NULL,
Validation_management_type [int] NULL,
Validation_planning_method [int] NULL,
Validation_criticality_grades [int] NULL,
Validation_qualitative_criteria_grades [int] NULL,
Validation_maximum_forecast_error [int] NULL,
Validation_safety_stock_coverage [int] NULL,
Validation_service_level [int] NULL,
Validation_safety_stock [int] NULL,
Validation_EOQ_coverage [int] NULL,
 CONSTRAINT [PK_Spu_Interface] PRIMARY KEY CLUSTERED 
(
 [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_total' )
	alter table Spu drop column Validation_total;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_Management_Unit' )
	alter table Spu drop column Validation_Management_Unit;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_Item' )
	alter table Spu drop column Validation_Item;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_demand_classification' )
	alter table Spu drop column Validation_demand_classification;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_creation_date' )
	alter table Spu drop column Validation_creation_date;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_packaging' )
	alter table Spu drop column Validation_packaging;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_planner' )
	alter table Spu drop column Validation_planner;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_cost' )
	alter table Spu drop column Validation_cost;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_lead_time' )
	alter table Spu drop column Validation_lead_time;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_lot_sizes' )
	alter table Spu drop column Validation_lot_sizes;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_grouping' )
	alter table Spu drop column Validation_grouping;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_life_cycle' )
	alter table Spu drop column Validation_life_cycle;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_supply_alternatives' )
	alter table Spu drop column Validation_supply_alternatives;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_first_and_last_demand' )
	alter table Spu drop column Validation_first_and_last_demand;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_relevant_history' )
	alter table Spu drop column Validation_relevant_history;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_planning_methods' )
	alter table Spu drop column Validation_planning_methods;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_criticality_grades' )
	alter table Spu drop column Validation_criticality_grades;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_maximum_forecast_error' )
	alter table Spu drop column Validation_maximum_forecast_error;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_safety_stock_coverage_limits' )
	alter table Spu drop column Validation_safety_stock_coverage_limits;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_service_level' )
	alter table Spu drop column Validation_service_level;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_safety_stock' )
	alter table Spu drop column Validation_safety_stock;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_EOQ' )
	alter table Spu drop column Validation_EOQ;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_qualitative_factors_grades' )
	alter table Spu drop column Validation_qualitative_factors_grades;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='validation_supply_alternatives_shares' )
	alter table Spu drop column validation_supply_alternatives_shares;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_maximum_error_and_minimum_coverage_suggested' )
	alter table Spu drop column Validation_maximum_error_and_minimum_coverage_suggested;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Validation_maximum_error_and_minimum_coverage_suggested_revised' )
	alter table Spu drop column Validation_maximum_error_and_minimum_coverage_suggested_revised;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='validation_Maximum_Error_And_Minimum_Coverage_Effective' )
	alter table Spu drop column validation_Maximum_Error_And_Minimum_Coverage_Effective;

	/** limpar Validar item do jobscript **/
Delete job_script where id=(SELECT id FROM Standard_Processes where code='VAL_SPU')
Delete Standard_Processes where code='VAL_SPU'

/** inserir item interface  na lista de importacao de interfaces **/
update interface_table set ordem=ordem+1 where ordem>16

INSERT INTO interface_table
           (table_name
           ,description
           ,file_pattern
           ,analysis_key
           ,ordem
           ,use_history_interface) VALUES
           ('spu_interface'
           ,'spu interface'
           ,'Export_spu_interface'
           ,1
           ,17
           ,1);

delete interface_structure where interface_table_id in (select id from interface_table where table_name='spu_interface')

insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), -1,'Proper_company_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), -1,'Region_code_management_group','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), -2,'Management_group_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), -3,'Reference_date','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), -4,'Analysis_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 5,'Interface_time_stamp','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 6,'Region_code_management_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 7,'Management_unit_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 8,'Item_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 9,'Demand_category_classification_01','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 10,'Demand_category_classification_02','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 11,'Demand_category_classification_03','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 12,'Demand_category_classification_04','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 13,'Demand_category_classification_05','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 14,'Creation_date_ERP','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 15,'Palletization','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 16,'Bulk_storage_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 17,'Planner_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 18,'Currency_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 19,'Unit_cost_average','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 20,'Unit_cost_replenishment','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 21,'Unit_cost_alternate','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 22,'Lead_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 23,'Lead_time_minimum','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 24,'Lead_time_modal_value','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 25,'Lead_time_average','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 26,'Lead_time_maximum','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 27,'Lead_time_standard_deviation','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 28,'Safety_lead_time','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 29,'Safety_lead_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 30,'Average_interval','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 31,'Interval_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 32,'Lot_size_minimum','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 33,'Lot_size_multiple','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 34,'Grouping_item_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 35,'Local_independent_demand_origin','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 36,'Local_dependent_estimated_demand_origin','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 37,'Local_dependent_demand_origin','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 38,'Transferred_demand_origin','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 39,'Transferred_estimated_demand_origin','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 40,'First_demand','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 41,'Relevant_history_begin','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 42,'Relevant_history_end','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 43,'Relevant_history_duration','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 44,'Relevant_history_duration_unit_of_measure','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 45,'Frozen_horizon_value','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 46,'Frozen_horizon_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 47,'Maximum_demand_increase','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 48,'Maximum_demand_decrease','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 49,'Proper_Assessment','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 50,'Proper_Stock_analysis','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 51,'Proper_Action_monitoring','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 52,'Management_type','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 53,'Planning_method','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 54,'Criticality_criterion_01_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 55,'Criticality_criterion_02_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 56,'Criticality_criterion_03_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 57,'Criticality_criterion_04_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 58,'Criticality_criterion_05_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 59,'Maximum_forecast_error','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 60,'Minimum_safety_stock_coverage','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 61,'Minimum_safety_stock_coverage_unit_of_measure','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 62,'Maximum_safety_stock_coverage','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 63,'Maximum_safety_stock_coverage_unit_of_measure','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 64,'Service_level','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 65,'Safety_stock_quantity','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 66,'Safety_stock_percentage','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 67,'Safety_stock_coverage','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 68,'Safety_stock_coverage_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 69,'Minimum_EOQ_coverage','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 70,'Minimum_EOQ_coverage_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 71,'Maximum_EOQ_coverage','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 72,'Maximum_EOQ_coverage_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 73,'EOQ_quantity','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 74,'EOQ_coverage','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 75,'EOQ_coverage_time_unit','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 76,'Qualitative_criterion_1_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 77,'Qualitative_criterion_2_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 78,'Qualitative_criterion_3_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 79,'Qualitative_criterion_4_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 80,'Qualitative_criterion_5_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 81,'Qualitative_criterion_6_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 82,'Qualitative_criterion_7_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 83,'Qualitative_criterion_8_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 84,'Qualitative_criterion_9_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='spu_interface'), 85,'Qualitative_criterion_10_grade','STR');

update term set Field_name='interfaceSpuAnalize',Field='InterfaceSpuAnalize' where Field='InputInterfacesSpuAnalize'
update term set Field_name='interfaceSpuList',Field='InterfaceSpuList' where Field='InputInterfacesSpuList'
update term set Field_name='interfaceSpuLoad',Field='InterfaceSpuLoad' where Field='InputInterfacesSpuLoad'

