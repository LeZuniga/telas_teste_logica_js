use proper_base;

/* Service Level, Safety Stock and Lot Sizes */
alter table Parameters_Analysis add Non_normal_safety_factor nvarchar(2) NULL DEFAULT '01';
<<<<<<< HEAD


/* precedence */
alter table Parameters_Analysis add Parameters_precedence_SPU_interface nvarchar(2) NULL DEFAULT '01';
update Parameters_Analysis set Parameters_precedence_SPU_interface='01' where Parameters_precedence_SPU_interface is null;

/* Supply */
alter table Parameters_Analysis add Interface_lead_time_type nvarchar(2) NULL DEFAULT '01';
update Parameters_Analysis set Interface_lead_time_type='01' where is null;

/* Supply */
alter table Parameters_Analysis add Lead_time_purchase_approval_modal_value [numeric](18, 4) NULL;

/* Supply */
alter table Parameters_Analysis add Lead_time_receiving_modal_value [numeric](18, 4) NULL;

/* Supply */
alter table management_unit_parameter add Interface_lead_time_type nvarchar(2) NULL DEFAULT '01';
update management_unit_parameter set Interface_lead_time_type='01' where Interface_lead_time_type is null;
=======
update Parameters_Analysis set Non_normal_safety_factor='01';

/* precedence */
alter table Parameters_Analysis add Parameters_precedence_SPU_interface nvarchar(2) NULL DEFAULT '01';
update Parameters_Analysis set Parameters_precedence_SPU_interface='01';

/* Supply */
alter table Parameters_Analysis add Interface_lead_time_type nvarchar(2) NULL DEFAULT '01';
update Parameters_Analysis set Interface_lead_time_type='01';

/* Supply */
alter table Parameters_Analysis add Lead_time_purchase_approval_modal_value [numeric](18, 4) NULL;

/* Supply */
alter table Parameters_Analysis add Lead_time_receiving_modal_value [numeric](18, 4) NULL;

/* Supply */
alter table management_unit_parameter add Interface_lead_time_type nvarchar(2) NULL DEFAULT '01';
update management_unit_parameter set Interface_lead_time_type='01';
>>>>>>> branch 'master' of https://github.com/t-silva/properBase.git

/* Supply */
alter table management_unit_parameter add Lead_time_purchase_approval_modal_value [numeric](18, 4) NULL;

/* Supply */
alter table management_unit_parameter add Lead_time_receiving_modal_value [numeric](18, 4) NULL;

alter table Item_Production_Line add Lead_time_modal_value [numeric](18, 4) NULL;

alter table Transportation_Matrix add Lead_time_modal_value [numeric](18, 4) NULL;

alter table Supply_Alternative add Lead_time_purchase_approval_modal_value [numeric](18, 4) NULL;
alter table Supply_Alternative add Lead_time_receiving_modal_value [numeric](18, 4) NULL;

EXEC sp_rename 'Demand_Forecast_History.Next_bucket_date', 'Next_bucket_begin_date', 'COLUMN';

EXEC sp_rename 'management_unit_parameter.Lead_time_unit', 'Lead_time_purchase_approval_unit', 'COLUMN';
EXEC sp_rename 'management_unit_parameter.Lead_time_approval_unit', 'Lead_time_purchase_approval_unit', 'COLUMN';
EXEC sp_rename 'management_unit_parameter.Lead_time_approval_minimum', 'Lead_time_purchase_approval_minimum', 'COLUMN';
EXEC sp_rename 'management_unit_parameter.Lead_time_approval_average', 'Lead_time_purchase_approval_average', 'COLUMN';
EXEC sp_rename 'management_unit_parameter.Lead_time_approval_maximum', 'Lead_time_purchase_approval_maximum', 'COLUMN';
 