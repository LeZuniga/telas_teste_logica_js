alter table family add Family_code [int] NULL;
alter table family add Family_description [int] NULL;
alter table family add Higher_family_code [int] NULL;
alter table family add Summary_mass [int] NULL;
alter table family add Summary_volume [int] NULL;
alter table family add Summary_area [int] NULL;
alter table family add Summary_length [int] NULL;



alter table Spu add Validation_supply_alternatives_shares [int] NULL;
alter table Spu drop column safety_stock_variable_suggested;

alter table Spu alter column Validation_life_cycle [int] NULL;
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


alter table Bill_of_materials add Validation_total [int] NULL;
alter table Bill_of_materials add Validation_production_line [int] NULL;
alter table Bill_of_materials add Validation_item [int] NULL;
alter table Bill_of_materials add Validation_component [int] NULL;
alter table Bill_of_materials add Validation_standard_consumption [int] NULL;
alter table Bill_of_materials add Validation_scrap_rate [int] NULL;
alter table Bill_of_materials add Validation_receiving_management_unit [int] NULL;


alter table Supply_Alternative add Validation_total [int] NULL;
alter table Supply_Alternative add Validation_SPU_key [int] NULL;
alter table Supply_Alternative add Validation_share [int] NULL;
alter table Supply_Alternative add Validation_type [int] NULL;
alter table Supply_Alternative add Validation_company_code [int] NULL;
alter table Supply_Alternative add Validation_company_unit_code [int] NULL;
alter table Supply_Alternative add Validation_supply_SPU [int] NULL;
alter table Supply_Alternative add Validation_plant_code [int] NULL;
alter table Supply_Alternative add Validation_lead_time_unit [int] NULL;
alter table Supply_Alternative add Validation_lead_time_approval [int] NULL;
alter table Supply_Alternative add Validation_lead_time_receiving [int] NULL;
alter table Supply_Alternative add Validation_minimum_lot_size [int] NULL;
alter table Supply_Alternative add Validation_multiple_lot_size [int] NULL;


alter table Demand_History_Interface add Validation_total [int] NULL;
alter table Demand_History_Interface add Validation_SPU_key [int] NULL;
alter table Demand_History_Interface add Validation_plant_code [int] NULL;
alter table Demand_History_Interface add Validation_production_line_code [int] NULL;
alter table Demand_History_Interface add Validation_origin_SPU_key [int] NULL;

alter table Demand_History_Interface alter column Validation_bucket [int] NULL;
alter table Demand_History_Interface alter column Validation_date [int] NULL;
alter table Demand_History_Interface alter column Validation_demand_type [int] NULL;
alter table Demand_History_Interface alter column Validation_quantity [int] NULL;
alter table Demand_History_Interface alter column Validation_unit_of_measure [int] NULL;
alter table Demand_History_Interface alter column Validation_client_company_code [int] NULL;
alter table Demand_History_Interface alter column Validation_client_unit_code [int] NULL;
alter table Demand_History_Interface alter column Validation_product_code [int] NULL;

alter table Demand_History_Interface drop column Validation_item_code;
alter table Demand_History_Interface drop column Validation_item_description;
alter table Demand_History_Interface drop column Validation_demand_classification;
alter table Demand_History_Interface drop column Validation_client_company_name;
alter table Demand_History_Interface drop column Validation_client_unit_description;
alter table Demand_History_Interface drop column Validation_product_description;
alter table Demand_History_Interface drop column Validation_region_code;
alter table Demand_History_Interface drop column Validation_management_unit_code;



CREATE TABLE [dbo].[Production_History_Interface](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Proper_company_code] [nvarchar](50) NULL,
	[Region_code_management_group] [nvarchar](50) NULL,
	[Management_group_code] [nvarchar](50) NULL,
	[Reference_date] [datetime] NULL,
	[Analysis_code] [nvarchar](50) NULL,
	[Plant_code] [nvarchar](50) NULL,
	[Production_line_code] [nvarchar](50) NULL,
	[Item_code] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Demand_category_classification_01] [nvarchar](50) NULL,
	[Demand_category_classification_02] [nvarchar](50) NULL,
	[Demand_category_classification_03] [nvarchar](50) NULL,
	[Demand_category_classification_04] [nvarchar](50) NULL,
	[Demand_category_classification_05] [nvarchar](50) NULL,
	[Bucket] [nvarchar](2) NULL,
	[Date] [datetime] NULL,
	[Quantity] [numeric](18, 4) NULL,
	[Unit_of_measure] [nvarchar](50) NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Plant_id] [numeric](18, 0) NULL,
	[Production_line_id] [numeric](18, 0) NULL,
	[Item_id] [numeric](18, 0) NULL,
	[Demand_category_classification_01_id] [numeric](18, 0) NULL,
	[Demand_category_classification_02_id] [numeric](18, 0) NULL,
	[Demand_category_classification_03_id] [numeric](18, 0) NULL,
	[Demand_category_classification_04_id] [numeric](18, 0) NULL,
	[Demand_category_classification_05_id] [numeric](18, 0) NULL,
	[Unit_Of_Measure_Id] [numeric](18, 0) NULL,
Validation_total [int] NULL,
Validation_production_line [int] NULL,
Validation_SPU [int] NULL,
Validation_bucket [int] NULL,
Validation_date [int] NULL,
Validation_quantity [int] NULL,
Validation_unit_of_measure [int] NULL,
	
 CONSTRAINT [PK_Production_History_Interface] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Production_Planning_History_Interface](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Proper_company_code] [nvarchar](50) NULL,
	[Region_code_management_group] [nvarchar](50) NULL,
	[Management_group_code] [nvarchar](50) NULL,
	[Reference_date] [datetime] NULL,
	[Analysis_code] [nvarchar](50) NULL,
	[Planning_date] [nvarchar](50) NULL,
	[Plant_code] [nvarchar](50) NULL,
	[Production_line_code] [nvarchar](50) NULL,
	[Item_code] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Demand_category_classification_01] [nvarchar](50) NULL,
	[Demand_category_classification_02] [nvarchar](50) NULL,
	[Demand_category_classification_03] [nvarchar](50) NULL,
	[Demand_category_classification_04] [nvarchar](50) NULL,
	[Demand_category_classification_05] [nvarchar](50) NULL,
	[i_Date] [nvarchar](50) NULL,
	[i_Quantity] [nvarchar](50) NULL,
	[Bucket] [nvarchar](2) NULL,
	[Date] [datetime] NULL,
	[Quantity] [numeric](18, 4) NULL,
	[Unit_of_measure] [nvarchar](50) NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Plant_id] [numeric](18, 0) NULL,
	[Production_line_id] [numeric](18, 0) NULL,
	[Item_id] [numeric](18, 0) NULL,
	[spu_id] [numeric](18, 0) NULL,
	[Demand_category_classification_01_id] [numeric](18, 0) NULL,
	[Demand_category_classification_02_id] [numeric](18, 0) NULL,
	[Demand_category_classification_03_id] [numeric](18, 0) NULL,
	[Demand_category_classification_04_id] [numeric](18, 0) NULL,
	[Demand_category_classification_05_id] [numeric](18, 0) NULL,
	[Unit_Of_Measure_Id] [numeric](18, 0) NULL,
	Validation_total [int] NULL,
	Validation_planning_date [int] NULL,
Validation_production_line [int] NULL,
Validation_SPU [int] NULL,
Validation_bucket [int] NULL,
Validation_date [int] NULL,
Validation_quantity [int] NULL,
Validation_unit_of_measure [int] NULL,
 CONSTRAINT [PK_Production_Planning_History_Interface] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


