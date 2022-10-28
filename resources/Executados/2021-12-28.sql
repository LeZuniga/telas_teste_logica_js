use proper_base;

alter table management_unit_parameter add Maximum_forecast_error numeric(18, 4) NULL;

update management_group set company_code=(select top 1 Proper_company_code from Company_Proper) where company_code is null;

-- // SPU - Dados B�sicos
/**update spu set Unit_cost_effective_reference_currency=0.1 where id=3

update spu set Lead_time_minimum_effective=7 where id=3
update spu set Lead_time_modal_value_effective=8 where id=3
update spu set Lead_time_maximum_effective=15 where id=3
update spu set Lead_time_average_effective=10 where id=3
update spu set Lead_time_standard_deviation_effective=1.8 where id=3

update spu set Bucket_type='02' where id=3
update spu set Lead_time_unit_effective='02' where id=3
**/













