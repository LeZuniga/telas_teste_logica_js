use proper_base

alter table Spu add Validation_supply_alternatives_shares [int] NULL;

  
alter table Spu alter column Validation_Management_Unit [int] NULL;
alter table Spu alter column Validation_Item [int] NULL;
alter table Spu alter column Validation_demand_classification [int] NULL;
alter table Spu alter column Validation_creation_date [int] NULL;
alter table Spu alter column Validation_packaging [int] NULL;
alter table Spu alter column Validation_planner [int] NULL;
alter table Spu alter column Validation_cost [int] NULL;
alter table Spu alter column Validation_lead_time [int] NULL;
alter table Spu alter column Validation_lot_sizes [int] NULL;
alter table Spu alter column Validation_grouping [int] NULL;
alter table Spu alter column Validation_life_cycle [int] NULL;
alter table Spu alter column Validation_supply_alternatives [int] NULL;
alter table Spu alter column Validation_first_and_last_demand [int] NULL;
alter table Spu alter column Validation_relevant_history [int] NULL;
alter table Spu alter column Validation_planning_methods [int] NULL;
alter table Spu alter column Validation_criticality_grades [int] NULL;
alter table Spu alter column Validation_maximum_forecast_error [int] NULL;
alter table Spu alter column Validation_safety_stock_coverage_limits [int] NULL;
alter table Spu alter column Validation_service_level [int] NULL;
alter table Spu alter column Validation_safety_stock [int] NULL;
alter table Spu alter column Validation_EOQ [int] NULL;
alter table Spu alter column Validation_qualitative_factors_grades [int] NULL;

alter table Spu alter column historical_Demand_Relevance_Order [int] NULL;