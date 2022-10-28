use proper_base

alter table Item_Supplier drop column First_production;
alter table Item_Supplier drop column Last_production;

alter table Item_Supplier add Demand_supplied_average [numeric](18, 4) NULL;
alter table Item_Supplier add Validation_total [int] NULL;
alter table Item_Supplier add Validation_item [int] NULL;
alter table Item_Supplier add Validation_supplier [int] NULL;
alter table Item_Supplier add Validation_Interval [int] NULL;
alter table Item_Supplier add Validation_lead_time [int] NULL;
alter table Item_Supplier add Validation_lot_size [int] NULL;
alter table Item_Supplier add Validation_planning_efficiency [int] NULL;

alter table Item_Production_Line drop column First_production;
alter table Item_Production_Line drop column Last_production;

alter table Item_Production_Line add plant_id [numeric](18, 0) NULL;
alter table Item_Production_Line add Demand_supplied_average [numeric](18, 4) NULL;
alter table Item_Production_Line add Production_average [numeric](18, 4) NULL;

alter table Item_Production_Line add Validation_total [int] NULL;
alter table Item_Production_Line add Validation_item [int] NULL;
alter table Item_Production_Line add Validation_Plant_and_Production_Line [int] NULL;
alter table Item_Production_Line add Validation_Interval [int] NULL;
alter table Item_Production_Line add Validation_lead_time [int] NULL;
alter table Item_Production_Line add Validation_lot_size [int] NULL;
alter table Item_Production_Line add Validation_planning_efficiency [int] NULL;

alter table Supply_Alternative add Lead_time_purchase_approval_unit [nvarchar](2) NULL;
alter table Supply_Alternative add Lead_time_receiving_unit [nvarchar](2) NULL;
alter table Supply_Alternative add Lot_size_transportation_minimum [numeric](18, 4) NULL;
alter table Supply_Alternative add Lot_size_transportation_multiple [numeric](18, 4) NULL;
alter table Supply_Alternative add Transportation_mode_01 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_mode_02 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_mode_03 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_mode_04 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_mode_05 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_mode_destination [nvarchar](2) NULL;

alter table Supply_Alternative add Average_interval_total [numeric](18, 4) NULL;
alter table Supply_Alternative add Interval_time_unit_total [nvarchar](2) NULL;
alter table Supply_Alternative add Lead_time_total_unit [nvarchar](2) NULL;

alter table Supply_Alternative add Demand_required_percentage [numeric](18, 4) NULL;

alter table Supply_Alternative add Validation_production_line [int] NULL;
alter table Supply_Alternative add Validation_cost [int] NULL;
alter table Supply_Alternative add Validation_lead_time [int] NULL;
alter table Supply_Alternative add Validation_transportation [int] NULL;

alter table Supply_Alternative drop column Transportation_alternative_origin;
alter table Supply_Alternative drop column Transportation_alternative_01;
alter table Supply_Alternative drop column Transportation_alternative_02;
alter table Supply_Alternative drop column Transportation_alternative_03;
alter table Supply_Alternative drop column Transportation_alternative_04;
alter table Supply_Alternative drop column Transportation_alternative_05;
alter table Supply_Alternative drop column Validation_lead_time_unit;
alter table Supply_Alternative drop column Supply_interval_effective_average;