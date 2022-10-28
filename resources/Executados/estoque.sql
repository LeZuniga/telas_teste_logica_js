use proper_base;

update spu_parameter set Proper_Stock_Analysis='01'  where spu_id=3

/**Aba Gest�o de An�lises - Fun��es Habilitadas **/
update Parameters_Analysis set Function_enabled_supply_alternatives='02'  where analysis_id=1

/** Aba Gest�o de An�lises - Preced�ncia**/

update Parameters_Analysis set Parameters_precedence_criticality='01'  where analysis_id=1
update Parameters_Analysis set Parameters_precedence_safety_lead_time_usage='01'  where analysis_id=1
update Parameters_Analysis set Parameters_precedence_safety_stock_coverage_limits='01'  where analysis_id=1
update Parameters_Analysis set Parameters_precedence_maximum_forecast_error='01'  where analysis_id=1
update Parameters_Analysis set Parameters_precedence_SPU_interface='01'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_lead_time='02'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_service_level='01'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_planning_method='02'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_safety_lead_time='01'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_safety_stock_coverage_limits='01'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_maximum_forecast_error='01'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_safety_stock='02'  where analysis_id=1

/** Aba Gest�o de An�lises - Suprimento**/

update Parameters_Analysis set Interface_lead_time_type='01'  where analysis_id=1

/** Aba Gest�o de An�lises - Criticidade **/

update Parameters_Analysis set Criticality_criterion_01_weight=0.4 where analysis_id=1
update Parameters_Analysis set Criticality_criterion_02_weight=0.3 where analysis_id=1
update Parameters_Analysis set Criticality_criterion_03_weight=0.3 where analysis_id=1

update Management_Unit_Parameter set Criticality_criterion_01_weight=0.5  where management_unit_id=56
update Management_Unit_Parameter set Criticality_criterion_02_weight=0.3  where management_unit_id=56
update Management_Unit_Parameter set Criticality_criterion_03_weight=0.2  where management_unit_id=56

/** Aba Gest�o de An�lises - Seguran�a e Lotes **/

update Parameters_Analysis set Service_level_A_criticality_0=0.92 where analysis_id=1
update Parameters_Analysis set Service_level_A_criticality_10=0.96 where analysis_id=1
update Parameters_Analysis set Service_level_B_criticality_0=0.94 where analysis_id=1
update Parameters_Analysis set Service_level_B_criticality_10=0.97 where analysis_id=1
update Parameters_Analysis set Service_level_C_criticality_0=0.96 where analysis_id=1
update Parameters_Analysis set Service_level_C_criticality_10=0.995 where analysis_id=1

update Parameters_Analysis set Push_x_Pull_selection=200 where analysis_id=1
update Parameters_Analysis set Safety_lead_time_usage_ERP='02' where analysis_id=1
update Parameters_Analysis set Minimum_safety_stock_coverage=null where analysis_id=1
update Parameters_Analysis set Maximum_safety_stock_coverage=null where analysis_id=1
update Parameters_Analysis set Minimum_safety_stock_coverage_time_unit=null where analysis_id=1
update Parameters_Analysis set Maximum_safety_stock_coverage_time_unit=null where analysis_id=1
update Parameters_Analysis set Maximum_forecast_error=null where analysis_id=1
update Parameters_Analysis set Safety_stock_overall_adjustment=0.1 where analysis_id=1
update Parameters_Analysis set Non_normal_safety_factor='04' where analysis_id=1


/** Par�metros da Unidade de Gest�o **/

update Management_Unit_Parameter set Safety_lead_time_usage_ERP='02'  where management_unit_id=56
update Management_Unit_Parameter set Minimum_safety_stock_coverage=null  where management_unit_id=56
update Management_Unit_Parameter set Maximum_safety_stock_coverage=null  where management_unit_id=56
update Management_Unit_Parameter set Minimum_safety_stock_coverage_time_unit=null  where management_unit_id=56
update Management_Unit_Parameter set Maximum_safety_stock_coverage_time_unit=null  where management_unit_id=56
update Management_Unit_Parameter set Maximum_forecast_error=0.1  where management_unit_id=56
update Management_Unit_Parameter set Safety_stock_overall_adjustment=-0.1  where management_unit_id=56
update Management_Unit_Parameter set Interface_lead_time_type='01'  where management_unit_id=56


update spu set Enabled_for_variability_evaluation='01'  where id=3
update spu set Enabled_for_predictability_evaluation='01'  where id=3

/** Aba SPU - Dados B�sicos **/

update spu set Unit_cost_effective_reference_currency= 0.1 where id=3


update spu set Lead_time_minimum_suggested=7  where id=3
update spu set lead_Time_Modal_Value_suggested=8  where id=3
update spu set Lead_time_maximum_suggested=15  where id=3
update spu set Lead_time_average_suggested=10  where id=3
update spu set Lead_time_standard_deviation_suggested=1.78  where id=3

update spu set Lead_time_minimum_effective=7  where id=3
update spu set lead_Time_Modal_Value_Effective=8  where id=3
update spu set Lead_time_maximum_effective=15  where id=3
update spu set Lead_time_average_effective=10  where id=3
update spu set Lead_time_standard_deviation_effective=1.78  where id=3

update spu set Bucket_type='02'  where id=3
update spu set Lead_time_unit_effective='02'  where id=3

/** Aba SPU - Criticidade **/

update item_parameters set Criticality_criterion_01_grade=8 where item_id=641
update item_parameters set Criticality_criterion_02_grade=5 where item_id=641
update item_parameters set Criticality_criterion_03_grade=6 where item_id=641

update spu_parameter set Criticality_criterion_01_grade=5 where spu_id=3
update spu_parameter set Criticality_criterion_02_grade=5 where spu_id=3
update spu_parameter set Criticality_criterion_03_grade=5 where spu_id=3

update itens set overall_Criticality=6.5 where id=641
update spu set overall_Criticality=5 where id=3

/** Aba SPU - Demanda **/

update spu set Repeatability_indicator='01' where id=3

update spu set Variability_ABC_classification='B' where id=3

update spu set Demand_normality_lead_time='02' where id=3
update spu set Normality_forecast_error='01' where id=3

update spu set Historical_demand_average_quantity_bucket=400 where id=3
update spu set Historical_demand_average_quantity_lead_time=4000 where id=3
update spu set Standard_deviation_lead_time_quantity=1000 where id=3

update spu set Forecast_error_standard_deviation=0.20 where id=3

update spu set Enabled_for_variability_evaluation='01' where id=3
update spu set Enabled_for_predictability_evaluation='01' where id=3

/** Aba SPU - Qualitativo **/

update spu set Safety_stock_correction=-0.10 where id=3
update spu set Safety_lead_time_correction=-.05 where id=3

/** SPU - Seguran�a e Lotes **/

update spu_parameter set Service_level=null  where spu_id=3
update spu set Maturity_exit='02'  where id=3
update spu set Planning_method_suggested=null  where id=3

update spu_parameter set Safety_lead_time_unit='02'  where spu_id=3

update spu_parameter set Minimum_safety_stock_coverage=2  where spu_id=3
update spu_parameter set Minimum_safety_stock_coverage_time_unit='02'  where spu_id=3

update spu_parameter set Maximum_safety_stock_coverage=3  where spu_id=3
update spu_parameter set Maximum_safety_stock_coverage_time_unit='03'  where spu_id=3

update spu_parameter set Maximum_forecast_error=0.4  where spu_id=3

update spu_parameter set Safety_stock_quantity=null  where spu_id=3
update spu_parameter set Safety_stock_percentage=0.5  where spu_id=3
update spu_parameter set Safety_stock_coverage=1  where spu_id=3
update spu_parameter set Safety_stock_coverage_time_unit='03'  where spu_id=3


