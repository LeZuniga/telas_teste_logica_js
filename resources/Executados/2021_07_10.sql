USE [Proper_Base]

alter table Demand_Forecast_History add [Forecast_target_date_dt] [datetime] NULL;

alter table Demand_Forecast_History_Interface add [forecast_horizon_begin_date_dt] [datetime] NULL;
alter table Demand_Forecast_History_Interface add [forecast_horizon_end_date_dt] [datetime] NULL;
alter table Demand_Forecast_History_Interface add [forecast_target_date_dt] [datetime] NULL;

