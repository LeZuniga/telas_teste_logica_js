update Parameters_Analysis set Parameters_precedence_EOQ_coverage_limits = '02' where Analysis_id=1;

update spu set Unit_cost_effective_reference_currency = 0.1 where id=6724;
update spu set Lead_time_minimum_effective = 2 where id=6724;
update spu set Lead_time_maximum_effective = 2 where id=6724;
update spu set lead_Time_Modal_Value_Effective = 2 where id=6724;
update spu set Lot_size_multiple_effective = 5 where id=6724;
update spu set EOQ_correction = null where id=6724;
update spu_parameter set EOQ_quantity = null where spu_id=6724;
update spu_parameter set EOQ_coverage_time_unit spu_id=6724;