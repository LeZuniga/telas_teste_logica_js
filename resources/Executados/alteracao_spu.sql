use Proper_Base

alter table Spu drop column Unit_of_measure_id;
alter table spu add Current_Life_Cycle_Stage [nvarchar](2) NULL;

alter table Spu_parameter drop column Grouping_share;

alter table Spu_parameter drop column outlier_criteria;
alter table Spu_parameter drop column Upper_outlier_automatic_limitation;
alter table Spu_parameter drop column Upper_outlier_limit;
alter table Spu_parameter drop column Lower_outlier_automatic_limitation;
alter table Spu_parameter drop column Lower_outlier_limit;




alter table Spu_parameter drop column Default_duration_Development;
alter table Spu_parameter drop column Duration_unit_of_measure_Development;
alter table Spu_parameter drop column Default_duration_Pre_launch;
alter table Spu_parameter drop column Duration_unit_of_measure_Pre_launch;
alter table Spu_parameter drop column Default_duration_Launch;
alter table Spu_parameter drop column Duration_unit_of_measure_Launch;
alter table Spu_parameter drop column Default_duration_Maturity;
alter table Spu_parameter drop column Duration_unit_of_measure_Maturity;
alter table Spu_parameter drop column Default_duration_Demand_level_change;
alter table Spu_parameter drop column Duration_unit_of_measure_demand_level_change;
alter table Spu_parameter drop column Default_duration_Exit;
alter table Spu_parameter drop column Duration_unit_of_measure_Exit;
alter table Spu_parameter drop column Default_duration_Supply_inactivity;
alter table Spu_parameter drop column Duration_unit_of_measure_supply_inactivity;

alter table Spu_parameter add Lot_size [numeric](18, 4) NULL;
alter table Spu_parameter add Lot_size_variable [numeric](18, 4) NULL;

alter table Spu add Validation_Management_Unit [bit] NULL;
alter table Spu add Validation_Item [bit] NULL;
alter table Spu add Validation_demand_classification [bit] NULL;
alter table Spu add Validation_creation_date [bit] NULL;
alter table Spu add Validation_packaging [bit] NULL;
alter table Spu add Validation_planner [bit] NULL;
alter table Spu add Validation_cost [bit] NULL;
alter table Spu add Validation_lead_time [bit] NULL;
alter table Spu add Validation_lot_sizes [bit] NULL;
alter table Spu add Validation_grouping [bit] NULL;
alter table Spu add Validation_life_cycle [bit] NULL;
alter table Spu add Validation_supply_alternatives [bit] NULL;
alter table Spu add Validation_first_and_last_demand [bit] NULL;
alter table Spu add Validation_relevant_history [bit] NULL;
alter table Spu add Validation_planning_methods [bit] NULL;
alter table Spu add Validation_criticality_grades [bit] NULL;
alter table Spu add Validation_maximum_forecast_error [bit] NULL;
alter table Spu add Validation_safety_stock_coverage_limits [bit] NULL;
alter table Spu add Validation_service_level [bit] NULL;
alter table Spu add Validation_safety_stock [bit] NULL;
alter table Spu add Validation_EOQ [bit] NULL;
alter table Spu add Validation_qualitative_factors_grades [bit] NULL;

alter table Spu_parameter add Safety_stock_type [nvarchar](2) NULL;
alter table Spu_parameter add Safety_stock_variable [numeric](18, 4) NULL;

EXEC sp_rename 'Spu_parameter.Safety_stock', 'Safety_stock_fixed', 'COLUMN';

alter table Spu_parameter add EOQ_type [nvarchar](2) NULL;
EXEC sp_rename 'Spu_parameter.Lot_size', 'EOQ_size_fixed', 'COLUMN';
EXEC sp_rename 'Spu_parameter.Lot_size_variable', 'EOQ_size_variable', 'COLUMN';

EXEC sp_rename 'Spu.Safety_stock_suggested', 'Safety_stock_fixed_suggested', 'COLUMN';
EXEC sp_rename 'Spu.Safety_stock_effective', 'Safety_stock_fixed_effective', 'COLUMN';

alter table Spu_parameter add Safety_stock_variable_suggested [numeric](18, 4) NULL;
alter table Spu_parameter add Safety_stock_type_effective [nvarchar](2) NULL;
alter table Spu_parameter add Safety_stock_variable_effective [numeric](18, 4) NULL;
alter table Spu_parameter add EOQ_type_effective [nvarchar](2) NULL;
alter table Spu_parameter add EOQ_size_fixed_effective [numeric](18, 4) NULL;
alter table Spu_parameter add EQO_size_variable_effective [numeric](18, 4) NULL;
alter table Spu_parameter add Validation_maximum_forecast_error [bit] NULL;
alter table Spu_parameter add Validation_safety_stock_coverage_limits [bit] NULL;
alter table Spu_parameter add Validation_service_level [bit] NULL;
alter table Spu_parameter add Validation_safety_stock [bit] NULL;
alter table Spu_parameter add Validation_EOQ [bit] NULL;

