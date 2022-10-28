use proper_base;

EXEC sp_rename 'Parameters_Analysis.parameters_Effectiveness_Maximum_Forecast_Error', 'Effectiveness_parameter_maximum_forecast_error', 'COLUMN';

update spu set demand_normality_lead_time=null;
alter table spu alter column demand_normality_lead_time nvarchar(2) NULL;

alter table spu alter column Safety_stock_coverage_time_unit_effective nvarchar(2) NULL;

alter table spu alter column Safety_stock_maximum_limit_trigger_suggested nvarchar(2) NULL;
alter table spu alter column Safety_stock_maximum_limit_trigger_suggested_revised nvarchar(2) NULL;
alter table spu alter column Safety_stock_minimum_limit_trigger_suggested nvarchar(2) NULL;
alter table spu alter column Safety_stock_minimum_limit_trigger_suggested_revised nvarchar(2) NULL;
alter table spu alter column Enabled_for_predictability_evaluation nvarchar(2) NULL;



EXEC sp_rename 'Spu.Safety_stock__limited_percentage_suggested', 'Safety_stock_limited_percentage_suggested', 'COLUMN';




