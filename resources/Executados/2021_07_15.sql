USE [Proper_Base]

alter table Demand_Forecast_History add [Frozen_horizon_end_date] [datetime] NULL;

alter table Demand_Forecast_History add Frozen_horizon_initial_forecast [numeric](18, 4) NULL;
alter table Demand_Forecast_History add Frozen_horizon_updated_forecast [numeric](18, 4) NULL;
alter table Demand_Forecast_History add Frozen_horizon_actual_demand [numeric](18, 4) NULL;
alter table Demand_Forecast_History add Lead_time_end_date [datetime] NULL;
alter table Demand_Forecast_History add Lead_time_updated_forecast [numeric](18, 4) NULL;
EXEC sp_rename 'Demand_Forecast_History.Next_bucket_date', 'Next_bucket_begin_date', 'COLUMN';
alter table Demand_Forecast_History add Next_bucket_end_date [datetime] NULL;
				
EXEC sp_rename 'Demand_Forecast_History.Demand_forecast_on_next_bucket', 'Next_bucket_forecast', 'COLUMN';
EXEC sp_rename 'Demand_Forecast_History.Actual_demand_on_next_bucket', 'Next_bucket_actual_demand', 'COLUMN';
EXEC sp_rename 'Demand_Forecast_History.Forecast_error_on_next_bucket', 'Next_bucket_forecast_error', 'COLUMN';
EXEC sp_rename 'Demand_Forecast_History.Percentage_forecast_error_on_next_bucket', 'Next_bucket_percentage_forecast_error', 'COLUMN';
					

EXEC sp_rename 'Demand_Forecast_History.Demand_forecast_on_lead_time', 'Lead_time_initial_forecast', 'COLUMN';
EXEC sp_rename 'Demand_Forecast_History.Actual_demand_on_lead_time', 'Lead_time_actual_demand', 'COLUMN';
EXEC sp_rename 'Demand_Forecast_History.Forecast_error_on_lead_time', 'Lead_time_forecast_error', 'COLUMN';
EXEC sp_rename 'Demand_Forecast_History.Percentage_forecast_error_lead_time', 'Lead_time_percentage_forecast_error', 'COLUMN';
	
EXEC sp_rename 'Demand_Forecast_History.Alarm1', 'Alarm_1', 'COLUMN';
	
EXEC sp_rename 'Demand_Forecast_History.spu_origin', 'spu_origin_id', 'COLUMN';
