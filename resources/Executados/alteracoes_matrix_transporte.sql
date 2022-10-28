use Proper_Base

EXEC sp_rename 'Transportation_Matrix.Time_unit', 'Time_unit_interval', 'COLUMN';

alter table Transportation_Matrix add Time_unit_lead_time [nvarchar](2) NULL;
