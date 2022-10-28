use proper_Base
EXEC sp_rename 'Parameters_Analysis.Function_enabled_SPU_estimation', 'Function_enabled_estimation_by_similarity', 'COLUMN';
Alter Table Parameters_Analysis DROP Column Function_enabled_demand_history_rebuilding;

Alter Table Parameters_Analysis Add Function_enabled_independent_demand_management [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Function_enabled_dependent_demand_management [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Function_enabled_dependent_demand_historical [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Function_enabled_dependent_demand_estimation_by_BOM [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Function_enabled_transfer_management [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Function_enabled_transfers_historical [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Function_enabled_transfers_estimation_by_supply_chain [nvarchar](2) NULL;

Alter Table Parameters_Analysis Add Local_independent_demand_origin [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Local_dependent_estimated_demand_origin [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Transferred_estimated_demand_origin [nvarchar](2) NULL;

Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_0_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_10_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_0_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_10_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_0_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_10_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_0_correction_safety_lead_time [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_01_grade_10_correction_safety_lead_time [numeric](18, 4) NULL;

Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_0_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_10_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_0_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_10_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_0_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_10_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_0_correction_safety_lead_time [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_02_grade_10_correction_safety_lead_time [numeric](18, 4) NULL;

Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_0_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_10_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_0_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_10_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_0_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_10_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_0_correction_safety_lead_time [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_03_grade_10_correction_safety_lead_time [numeric](18, 4) NULL;

Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_0_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_10_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_0_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_10_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_0_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_10_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_0_correction_safety_lead_time [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_04_grade_10_correction_safety_lead_time [numeric](18, 4) NULL;

Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_0_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_10_correction_EOQ [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_0_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_10_correction_revision_period [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_0_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_10_correction_safety_stock [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_0_correction_safety_lead_time [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Criticality_criteria_05_grade_10_correction_safety_lead_time [numeric](18, 4) NULL;

Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_0_correction_economic_lot_size;
Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_10_correction_economic_lot_size;
Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_0_correction_revision_period;
Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_10_correction_revision_period;
Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_0_correction_safety_stock;
Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_10_correction_safety_stock;
Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_0_correction_safety_lead_time;
Alter Table Parameters_Analysis DROP Column Criticality_criteria_grade_10_correction_safety_lead_time;

Alter Table Parameters_Analysis Add Push_safety_stock_type [nvarchar](2) NULL;

EXEC sp_rename 'Parameters_Analysis.Service_level_push_A_criticality_0', 'Service_level_A_criticality_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Service_level_push_A_criticality_10', 'Service_level_A_criticality_10', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Service_level_push_B_criticality_0', 'Service_level_B_criticality_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Service_level_push_B_criticality_10', 'Service_level_B_criticality_10', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Service_level_push_C_criticality_0', 'Service_level_C_criticality_0', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Service_level_push_C_criticality_10', 'Service_level_C_criticality_10', 'COLUMN';
      
Alter Table Parameters_Analysis DROP Column Service_level_pull_A_criticality_0;
Alter Table Parameters_Analysis DROP Column Service_level_pull_A_criticality_10;
Alter Table Parameters_Analysis DROP Column Service_level_pull_B_criticality_0;
Alter Table Parameters_Analysis DROP Column Service_level_pull_B_criticality_10;
Alter Table Parameters_Analysis DROP Column Service_level_pull_C_criticality_0;
Alter Table Parameters_Analysis DROP Column Service_level_pull_C_criticality_10;

EXEC sp_rename 'Parameters_Analysis.Global_inventory_adjustment', 'Safety_stock_overall_adjustment', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Minimum_safety_stock_coverage_unit_of_measure', 'Minimum_safety_stock_coverage_time_unit', 'COLUMN';
EXEC sp_rename 'Parameters_Analysis.Maximum_safety_stock_coverage_unit_of_measure', 'Maximum_safety_stock_coverage_time_unit', 'COLUMN';

Alter Table Parameters_Analysis Add EOQ_type [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Supply_reference_period_A_value [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Supply_reference_period_B_value [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Supply_reference_period_C_value [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Supply_reference_period_A_time_unit [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Supply_reference_period_B_time_unit [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Supply_reference_period_C_time_unit [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Minimum_EOQ_coverage [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Minimum_EOQ_coverage_time_unit [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Maximum_EOQ_coverage [numeric](18, 4) NULL;
Alter Table Parameters_Analysis Add Maximum_EOQ_coverage_time_unit [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add EOQ_overall_adjustment [numeric](18, 4) NULL;

EXEC sp_rename 'Parameters_Analysis.Combination_method', 'Qualitative_combination_method', 'COLUMN';

Alter Table Parameters_Analysis Add Parameters_precedence_criticality [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Parameters_precedence_qualitative_factors [nvarchar](2) NULL;

EXEC sp_rename 'Parameters_Analysis.Effectiveness_parameter_lot_sizes', 'Effectiveness_parameter_minimum_and_multiple_lot_sizes', 'COLUMN';

Alter Table Parameters_Analysis Add Effectiveness_parameter_planning_method [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Effectiveness_parameter_safety_stock [nvarchar](2) NULL;
Alter Table Parameters_Analysis Add Effectiveness_parameter_EOQ [nvarchar](2) NULL;


