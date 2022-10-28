use proper_base;

alter table Demand_Single_Forecast_History add [Bucket_end_date] [datetime] NULL;
alter table Demand_Single_Forecast_History add [Forecast_error] [numeric](18, 4) NULL;
alter table Demand_Single_Forecast_History add [Percentage_Forecast_error] [numeric](18, 4) NULL;

alter table Demand_Single_Forecast_history_detail add [Bucket_end_date] [datetime] NULL;
alter table Demand_Single_Forecast_history_detail add Demand_quantity_outlier_analysis [numeric](18, 4) NULL;
alter table Demand_Single_Forecast_history_detail add Demand_quantity_suggested [numeric](18, 4) NULL;
alter table Demand_Single_Forecast_history_detail add Demand_quantity_user [numeric](18, 4) NULL;
alter table Demand_Single_Forecast_history_detail add User_note nvarchar(MAX) NULL;
alter table Demand_Single_Forecast_history_detail add Demand_quantity_effective [numeric](18, 4) NULL;
alter table Demand_Single_Forecast_history_detail add Forecast_error [numeric](18, 4) NULL;
alter table Demand_Single_Forecast_history_detail add Percentage_forecast_error [numeric](18, 4) NULL;
