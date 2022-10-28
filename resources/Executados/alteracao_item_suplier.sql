use proper_base

alter table Item_Supplier add Average_supply_interval [numeric](18, 4) NULL;
alter table Item_Supplier add interval_Unit [nvarchar](2) NULL;

EXEC sp_rename 'Item_Suplier.Setup_efficiency', 'Planning_efficiency', 'COLUMN';
