use proper_base;
EXEC sp_rename 'Demand_history.Most_recent_origin_date', 'most_Recent_Forecast_Origin_Date', 'COLUMN';

alter table Demand_History drop column Bucket_end_date;
alter table Demand_History drop column Bucket_end_date_dt;

alter table Demand_History_detail drop column Bucket_end_date;
alter table Demand_History_detail drop column Bucket_end_date_dt;

alter table Demand_History add [Bucket_end_date] [datetime] NULL;

alter table Demand_History_detail add [Bucket_end_date] [datetime] NULL;