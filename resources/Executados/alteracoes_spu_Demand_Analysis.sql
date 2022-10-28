use proper_base
alter table Spu add Historical_demand_average_quantity_non_null_buckets [numeric](18, 4) NULL;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Historical_demand_average_value_standard_period' )
EXEC sp_rename 'Spu.Historical_demand_average_value_standard_period', 'Historical_demand_average_value_standard_bucket', 'COLUMN';
