use proper_base

alter table Item_Production_Line add Average_production_interval [numeric](18, 4) NULL;
EXEC sp_rename 'Item_Production_Line.Setup_efficiency', 'Planning_efficiency', 'COLUMN';


alter table Item_Production_Line add interval_unit [nvarchar](2) NULL;