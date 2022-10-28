use proper_Base
alter table Supply_Alternative add Lead_time_purchase_approval_minimum [numeric](18, 4) NULL;
alter table Supply_Alternative add Lead_time_purchase_approval_average [numeric](18, 4) NULL;
alter table Supply_Alternative add Lead_time_purchase_approval_maximum [numeric](18, 4) NULL;
alter table Supply_Alternative add Lead_time_receiving_minimum [numeric](18, 4) NULL;
alter table Supply_Alternative add Lead_time_receiving_average [numeric](18, 4) NULL;
alter table Supply_Alternative add Lead_time_receiving_maximum [numeric](18, 4) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_01 [numeric](18, 0) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_02 [numeric](18, 0) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_03 [numeric](18, 0) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_04 [numeric](18, 0) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_05 [numeric](18, 0) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_type_01 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_type_02 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_type_03 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_type_04 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_intermediate_node_type_05 [nvarchar](2) NULL;

alter table Supply_Alternative add Transportation_alternative_origin [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_alternative_01 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_alternative_02 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_alternative_03 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_alternative_04 [nvarchar](2) NULL;
alter table Supply_Alternative add Transportation_alternative_05 [nvarchar](2) NULL;
alter table Supply_Alternative add Demand_supplied_average [numeric](18, 4) NULL;
alter table Supply_Alternative add Lot_size_prorated_minimum [numeric](18, 4) NULL;
alter table Supply_Alternative add Lot_size_effective_minimum [numeric](18, 4) NULL;
alter table Supply_Alternative add Lot_size_effective_multiple [numeric](18, 4) NULL;

alter table Supply_Alternative drop column Lead_time_production_minimum;
alter table Supply_Alternative drop column Lead_time_production_average;
alter table Supply_Alternative drop column Lead_time_production_maximum;
alter table Supply_Alternative drop column Lead_time_transport_minimum;
alter table Supply_Alternative drop column Lead_time_transport_average;
alter table Supply_Alternative drop column Lead_time_transport_maximum;
alter table Supply_Alternative drop column Lot_size_multiple;
alter table Supply_Alternative drop column Lot_size_minimum;

alter table Supply_Alternative drop column lead_Time_approval_Standard_Deviation;
alter table Supply_Alternative drop column lead_Time_production_Standard_Deviation;
alter table Supply_Alternative drop column lead_Time_transport_Standard_Deviation;
alter table Supply_Alternative drop column lead_Time_Clearance_Standard_Deviation;
alter table Supply_Alternative drop column Validation_item_code;
alter table Supply_Alternative drop column Validation_type;
alter table Supply_Alternative drop column Validation_company_code;
alter table Supply_Alternative drop column Validation_company_unit_code;
alter table Supply_Alternative drop column Validation_supply_SPU;
alter table Supply_Alternative drop column Validation_plant_code;
alter table Supply_Alternative drop column Validation_share;
alter table Supply_Alternative drop column Validation_lead_time_unit;
alter table Supply_Alternative drop column Validation_lead_time_approval;
alter table Supply_Alternative drop column Validation_lead_time_production;
alter table Supply_Alternative drop column Validation_lead_time_transport;
alter table Supply_Alternative drop column Validation_lead_time_clearance;
alter table Supply_Alternative drop column Validation_minimum_lot_size;
alter table Supply_Alternative drop column Validation_multiple_lot_size;

alter table Supply_Alternative drop column Lead_time_approval_minimum;
alter table Supply_Alternative drop column Lead_time_approval_average;
alter table Supply_Alternative drop column Lead_time_approval_maximum;
      
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Supply_Alternative' AND COLUMN_NAME='Lead_time_clearance_minimum' )
	alter table Supply_Alternative drop column Lead_time_clearance_minimum;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Supply_Alternative' AND COLUMN_NAME='Lead_time_clearance_average' )
	alter table Supply_Alternative drop column Lead_time_clearance_average;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Supply_Alternative' AND COLUMN_NAME='Lead_time_clearance_maximum' )
	alter table Supply_Alternative drop column Lead_time_clearance_maximum;		

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Supply_Alternative' AND COLUMN_NAME='Lead_time_receiving_minimum' )
	alter table Supply_Alternative add Lead_time_receiving_minimum [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Supply_Alternative' AND COLUMN_NAME='Lead_time_receiving_average' )
	alter table Supply_Alternative add Lead_time_receiving_average [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Supply_Alternative' AND COLUMN_NAME='Lead_time_receiving_maximum' )
	alter table Supply_Alternative add Lead_time_receiving_maximum [numeric](18, 4) NULL;
	
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.SupplyAlternative', N'Menu - Basic Data - SupplyAlternative', N'Menu', N'BasicInformation', N'SupplyAlternative', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'supplyAlternative', N'1.02.17', NULL, NULL)


