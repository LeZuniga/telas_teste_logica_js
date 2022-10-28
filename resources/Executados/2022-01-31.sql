USE [Proper_Base]
GO

exec sp_rename '[dbo].Management_Unit_Demand_and_Inventory_Mapping', 'Management_Unit_Demand_and_Inventory_Map'
GO

DROP TABLE Spu_Inventory_Performance;
GO

CREATE TABLE [dbo].[Spu_Inventory_Performance](
id [numeric](18, 0) IDENTITY(1,1) NOT NULL,
Analysis_id [numeric](18, 0) NOT NULL,
Spu_id [numeric](18, 0) NULL,
Date [datetime] NULL,
Repeatability [nvarchar](2) NULL,
Relevance [nvarchar](2) NULL,
Variability [nvarchar](2) NULL,
Predictability [nvarchar](2) NULL,
Planning_method [nvarchar](2) NULL,
Historical_demand_average_quantity_standard_bucket [numeric](18, 4) NULL,
Historical_demand_average_value_standard_bucket [numeric](18, 4) NULL,
Average_inventory_quantity [numeric](18, 4) NULL,
Average_inventory_value [numeric](18, 4) NULL,
Average_inventory_coverage [numeric](18, 4) NULL,
Current_inventory_quantity [numeric](18, 4) NULL,
Current_inventory_value [numeric](18, 4) NULL,
Current_inventory_coverage [numeric](18, 4) NULL,
Minimum_inventory_quantity [numeric](18, 4) NULL,
Maximum_inventory_quantity [numeric](18, 4) NULL,
Minimum_inventory_value [numeric](18, 4) NULL,
Maximum_inventory_value [numeric](18, 4) NULL,
Bellow_minimum_value [numeric](18, 4) NULL,
Above_maximum_value [numeric](18, 4) NULL
) ON [PRIMARY]
GO

/** testa se existe nome antigo, se tiver renomea **/
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Minimum_stock_quantity' )	
	EXEC sp_rename 'Management_Unit_Demand_and_Inventory_Map.Minimum_stock_quantity', 'Minimum_inventory_quantity', 'COLUMN';
/** se nao tem cria **/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Minimum_inventory_quantity' ) 
   alter table Management_Unit_Demand_and_Inventory_Map add Minimum_inventory_quantity [numeric](18, 4) NULL;
  
/** testa se existe nome antigo, se tiver renomea **/
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Maximum_stock_quantity' )	
	EXEC sp_rename 'Management_Unit_Demand_and_Inventory_Map.Maximum_stock_quantity', 'Maximum_inventory_quantity', 'COLUMN';
/** se nao tem cria **/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Maximum_inventory_quantity' ) 
   alter table Management_Unit_Demand_and_Inventory_Map add Maximum_inventory_quantity [numeric](18, 4) NULL;
   
/** testa se existe nome antigo, se tiver renomea **/
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Minimum_stock_value' )	
	EXEC sp_rename 'Management_Unit_Demand_and_Inventory_Map.Minimum_stock_value', 'Minimum_inventory_value', 'COLUMN';
/** se nao tem cria **/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Minimum_inventory_value' ) 
   alter table Management_Unit_Demand_and_Inventory_Map add Minimum_inventory_value [numeric](18, 4) NULL;
  
/** testa se existe nome antigo, se tiver renomea **/
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Maximum_stock_value' )	
	EXEC sp_rename 'Management_Unit_Demand_and_Inventory_Map.Maximum_stock_value', 'Maximum_inventory_value', 'COLUMN';
/** se nao tem cria **/
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Management_Unit_Demand_and_Inventory_Map' AND COLUMN_NAME='Maximum_inventory_value' ) 
   alter table Management_Unit_Demand_and_Inventory_Map add Maximum_inventory_value [numeric](18, 4) NULL;


alter table Parameters_Analysis add Parameters_Precedence_under_inspection_availability [nvarchar](2) NULL;
    
alter table Parameters_Analysis add under_inspection_availability [nvarchar](2) NULL;
    
alter table management_unit_parameter add under_inspection_availability [nvarchar](2) NULL;

/** Spu_Inventory_Performance  **/
alter table Spu_Inventory_Performance add Minimum_inventory_percentage [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Minimum_inventory_percentage [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Minimum_inventory_percentage [numeric](18, 4) NULL;



alter table Spu_Inventory_Performance add Inventory_control_status [nvarchar](2) NULL;

alter table Spu_Inventory_Performance add Minimum_inventory_coverage [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Maximum_inventory_coverage [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Bellow_minimum_quantity [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Bellow_minimum_coverage [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Above_maximum_quantity [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Above_maximum_coverage [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Lead_time_minimum [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Lead_time_modal_value [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Lead_time_average [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Lead_time_maximum [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Lead_time_unit [nvarchar](2) NULL;

alter table Spu_Inventory_Performance add Demand_standard_bucket_quantity [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Demand_standard_bucket_value [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Demand_lead_time_quantity [numeric](18, 4) NULL;

alter table Spu_Inventory_Performance add Demand_lead_time_value [numeric](18, 4) NULL;