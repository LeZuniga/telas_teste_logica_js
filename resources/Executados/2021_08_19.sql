use proper_base;

alter table Spu add Historical_demand_average_quantity_standard_bucket [numeric](18, 4) NULL;
alter table Spu add MAD [numeric](18, 4) NULL;
alter table Spu add MSE [numeric](18, 4) NULL;
alter table Spu add MAPE [numeric](18, 4) NULL;

