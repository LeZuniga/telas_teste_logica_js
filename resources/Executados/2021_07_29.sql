use Proper_Base

EXEC sp_rename 'Spu.Predictability_classification', 'Predictability_classification_bucket', 'COLUMN';

alter table Spu add Predictability_classification_lead_time [nvarchar](2) NULL;
alter table Spu add Average_interval_effective [numeric](18, 4) NULL;
alter table Spu add Interval_time_unit_effective [nvarchar](2) NULL;

alter table spu_parameter add Average_interval [numeric](18, 4) NULL;
alter table spu_parameter add Interval_time_unit [nvarchar](2) NULL;
alter table spu_parameter add Average_interval_suggested [numeric](18, 4) NULL;
alter table spu_parameter add Interval_time_unit_suggested [nvarchar](2) NULL;
									
