use proper_base;

ALTER TABLE [Demand_Forecast_History] ADD DEFAULT '00' FOR [Alarm_1];
ALTER TABLE [Demand_Forecast_History] ADD DEFAULT '00' FOR [Alarm_2];
ALTER TABLE [Demand_Forecast_History] ADD DEFAULT '00' FOR [Alarm_3];

Update Demand_Forecast_History set Alarm_1='00' where alarm_1 is null;
Update Demand_Forecast_History set Alarm_2='00' where alarm_2 is null;
Update Demand_Forecast_History set Alarm_3='00' where alarm_3 is null;