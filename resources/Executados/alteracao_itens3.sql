use proper_Base
alter table itens add Overall_criticality [numeric](18, 6) NULL;
alter table itens add EOQ_correction [numeric](18, 6) NULL;
alter table itens add Revision_period_correction [numeric](18, 6) NULL;
alter table itens add Safety_stock_correction [numeric](18, 6) NULL;
alter table itens add Safety_lead_time_correction [numeric](18, 6) NULL;


