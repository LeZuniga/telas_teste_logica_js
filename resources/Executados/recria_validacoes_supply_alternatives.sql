use proper_base;

alter table Supply_Alternative add Validation_total [int] NULL;
alter table Supply_Alternative add Validation_SPU_key [int] NULL;
alter table Supply_Alternative add Validation_share [int] NULL;
alter table Supply_Alternative add Validation_type [int] NULL;
alter table Supply_Alternative add Validation_company_code [int] NULL;
alter table Supply_Alternative add Validation_company_unit_code [int] NULL;
alter table Supply_Alternative add Validation_plant_code [int] NULL;
alter table Supply_Alternative add Validation_production_line [int] NULL;
alter table Supply_Alternative add Validation_supply_SPU [int] NULL;
alter table Supply_Alternative add Validation_cost [int] NULL;
alter table Supply_Alternative add Validation_lead_time_approval [int] NULL;
alter table Supply_Alternative add Validation_lead_time_receiving [int] NULL;
alter table Supply_Alternative add Validation_lead_time [int] NULL;
alter table Supply_Alternative add Validation_minimum_lot_size [int] NULL;
alter table Supply_Alternative add Validation_multiple_lot_size [int] NULL;
alter table Supply_Alternative add Validation_transportation [int] NULL;