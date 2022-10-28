use proper_Base

alter table Transportation_Matrix add Validation_total [int] NULL;
alter table Transportation_Matrix add Validation_source [int] NULL;
alter table Transportation_Matrix add Validation_destination [int] NULL;
alter table Transportation_Matrix add Validation_transportation_mode [int] NULL;
alter table Transportation_Matrix add Validation_interval [int] NULL;
alter table Transportation_Matrix add Validation_lead_time [int] NULL;