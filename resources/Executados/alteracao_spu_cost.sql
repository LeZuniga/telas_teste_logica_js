use proper_base
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Unit_cost_effective' )
EXEC sp_rename 'Spu.Unit_cost_effective', 'Unit_cost_effective_local_currency', 'COLUMN';

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu' AND COLUMN_NAME='Unit_cost_effective_reference_currency' )
alter table Spu add Unit_cost_effective_reference_currency [numeric](18, 2) NULL;