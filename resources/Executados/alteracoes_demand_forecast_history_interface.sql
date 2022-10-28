use Proper_Base

alter table Demand_Forecast_History_Interface add date_hour [nvarchar](50) NULL;

alter table Demand_Forecast_History_Interface add Forecast_horizon_begin_date [nvarchar](50) NULL;
alter table Demand_Forecast_History_Interface add Interface_time_stamp [nvarchar](50) NULL;
alter table Demand_Forecast_History_Interface add Data datetime NULL;


