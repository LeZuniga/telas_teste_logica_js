use proper_base;


-- //Aba Gestão de Análises - Precedência
update Parameters_Analysis set Parameters_precedence_EOQ='01'  where analysis_id=1
update Parameters_Analysis set Parameters_precedence_EOQ_coverage_limits='02'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_EOQ_coverage_limits='01'  where analysis_id=1
update Parameters_Analysis set Effectiveness_parameter_EOQ='01'  where analysis_id=1

--/Aba Gestão de Análises - Segurança e Lotes
update Parameters_Analysis set Supply_reference_period_A_value=1  where analysis_id=1
update Parameters_Analysis set Supply_reference_period_B_value=2  where analysis_id=1
update Parameters_Analysis set Supply_reference_period_C_value=1  where analysis_id=1
update Parameters_Analysis set Minimum_EOQ_coverage=1  where analysis_id=1
update Parameters_Analysis set Maximum_EOQ_coverage=3 where analysis_id=1
update Parameters_Analysis set Supply_reference_period_A_time_unit='02'  where analysis_id=1
update Parameters_Analysis set Supply_reference_period_B_time_unit='02'  where analysis_id=1
update Parameters_Analysis set Supply_reference_period_C_time_unit='03'  where analysis_id=1
update Parameters_Analysis set Minimum_EOQ_coverage_time_unit='02'  where analysis_id=1
update Parameters_Analysis set Maximum_EOQ_coverage_time_unit='03'  where analysis_id=1
update Parameters_Analysis set EOQ_overall_adjustment=0.10  where analysis_id=1

-- // Parâmetros da Unidade de Gestão
update  Management_Unit_Parameter set Supply_reference_period_A_value=1  where management_unit_id=56
update  Management_Unit_Parameter set Supply_reference_period_B_value=2  where management_unit_id=56
update  Management_Unit_Parameter set Supply_reference_period_C_value=2  where management_unit_id=56
update  Management_Unit_Parameter set Minimum_EOQ_coverage=2  where management_unit_id=56
update  Management_Unit_Parameter set Maximum_EOQ_coverage=10  where management_unit_id=56
update  Management_Unit_Parameter set Supply_reference_period_A_time_unit='02'  where management_unit_id=56
update  Management_Unit_Parameter set Supply_reference_period_B_time_unit='02'  where management_unit_id=56
update  Management_Unit_Parameter set Supply_reference_period_C_time_unit='03'  where management_unit_id=56

update  Management_Unit_Parameter set Minimum_EOQ_coverage_time_unit='01'  where management_unit_id=56
update  Management_Unit_Parameter set Maximum_EOQ_coverage_time_unit='01'  where management_unit_id=56

update  Management_Unit_Parameter set EOQ_overall_adjustment=null  where management_unit_id=56


-- //Aba SPU - Dados Básicos

update  spu set Unit_cost_effective_reference_currency=0.10  where id=3

update  spu set Lead_time_minimum_effective=7  where id=3
update  spu set Lead_time_modal_value_effective=8  where id=3
update  spu set Lead_time_maximum_effective=15  where id=3
update  spu set Lead_time_average_effective=10  where id=3
update  spu set Lead_time_standard_deviation_effective=1.78  where id=3

update  spu set Lot_size_minimum_effective=100  where id=3
update  spu set Lot_size_multiple_effective=5  where id=3


update  spu set Bucket_type='02'  where id=3
update  spu set Lead_time_unit_effective='02'  where id=3

-- // Aba SPU - Demanda


update  spu set Repeatability_indicator='01'  where id=3

update  spu set Historical_demand_ABC_classification='C'  where id=3

update  spu set Historical_demand_average_quantity_bucket=400  where id=3
update  spu set Historical_demand_average_quantity_lead_time=4000  where id=3

-- // Aba SPU - Qualitativo

update  spu set EOQ_correction=0.10 where id=3

-- //Aba SPU - Segurança e Lotes

update spu_parameter set EOQ_quantity=1911.90476190476  where spu_id=3
update spu_parameter set EOQ_coverage=2  where spu_id=3
update spu_parameter set EOQ_coverage_time_unit='02' where spu_id=3

