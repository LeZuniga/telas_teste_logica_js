USE [Proper_Base]

alter table Demand_Forecast_History add [Forecast_horizon_end_date] [datetime] NULL;

alter table Demand_Forecast_History add [Client_company_id] [numeric](18, 0) NULL;
alter table Demand_Forecast_History add [Client_unit_id] [numeric](18, 0) NULL;
alter table Demand_Forecast_History add [Plant_id] [numeric](18, 0) NULL;
alter table Demand_Forecast_History add [Production_line_id] [numeric](18, 0) NULL;
alter table Demand_Forecast_History add [Product_id] [numeric](18, 0) NULL;
alter table Demand_Forecast_History add spu_origin  [numeric](18, 0) NULL;