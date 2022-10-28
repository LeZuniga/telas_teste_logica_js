USE [Proper_Base]

alter table Demand_History_Interface add [Bucket_end_date] [nvarchar](50) NULL;
alter table Demand_History_Interface add [Bucket_end_date_dt] [datetime] NULL;

alter table Demand_History add [Bucket_end_date] [nvarchar](50) NULL;
alter table Demand_History add [Bucket_end_date_dt] [datetime] NULL;

alter table Demand_History add Most_recent_demand_forecast  [numeric](18, 4) NULL;
alter table Demand_History add Most_recent_origin_date  [datetime] NULL;

alter table Demand_History_detail add [Bucket_end_date] [nvarchar](50) NULL;
alter table Demand_History_detail add [Bucket_end_date_dt] [datetime] NULL;

alter table Demand_History_detail add Most_recent_demand_forecast  [numeric](18, 4) NULL;
alter table Demand_History_detail add Most_recent_origin_date  [datetime] NULL;

alter table Spu add Current_date_demand_history  [datetime] NULL;
alter table Spu add Current_date_demand_forecast_history  [datetime] NULL;
alter table Spu add Current_date_invent_history  [datetime] NULL;

alter table Parameters_analysis add Frozen_horizon_tolerance  [numeric](18, 4) NULL;