use Proper_Base

alter table management_unit_parameter drop column Maximum_forecast_error_application;
alter table management_unit_parameter drop column Maximum_forecast_error;

alter table management_unit_parameter add Minimum_lot_size_coverage [numeric](18, 4) NULL;
alter table management_unit_parameter add Minimum_lot_size_coverage_unit_of_measure [nvarchar](2) NULL;
alter table management_unit_parameter add Maximum_lot_size_coverage [numeric](18, 4) NULL;
alter table management_unit_parameter add Maximum_lot_size_coverage_unit_of_measure [nvarchar](2) NULL;