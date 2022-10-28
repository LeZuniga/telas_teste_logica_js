use proper_base
EXEC sp_rename 'Demand_history_detail.Date', 'demand_date', 'COLUMN';
EXEC sp_rename 'Demand_history_detail.Type', 'demand_detail_type', 'COLUMN';

alter table Demand_history_detail add Demand_history_id [numeric](18, 0) NULL;