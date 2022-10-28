USE [Proper_Base]

alter table spu_parameter add [frozen_horizon_value]  [numeric](18, 4) NULL;
alter table spu_parameter add [frozen_horizon_time_unit] [nvarchar](2) NULL;
alter table spu_parameter add [maximum_demand_increase] [numeric](18, 4) NULL;
alter table spu_parameter add [maximum_demand_decrease] [numeric](18, 4) NULL;

alter table Spu_Company_Unit add [company_Unit_Id]  [numeric](18, 0) NULL;