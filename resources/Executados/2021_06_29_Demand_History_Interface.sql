USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE  TABLE_NAME='Demand_History_Interface' )
	drop table Demand_History_Interface;

CREATE TABLE [dbo].[Demand_History_Interface](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Interface_time_stamp] [nvarchar](50) NULL,
	[Interface_time_stamp_date] [datetime] NULL,
	[analysis_id] [numeric](18, 0) NULL,

	[Region_code_management_unit] [nvarchar](50) NULL,
	[Management_unit_code] [nvarchar](50) NULL,
	[Item_code] [nvarchar](50) NULL,
	[Demand_classification_01] [nvarchar](50) NULL,
	[Demand_classification_02] [nvarchar](50) NULL,
	[Demand_classification_03] [nvarchar](50) NULL,
	[Demand_classification_04] [nvarchar](50) NULL,
	[Demand_classification_05] [nvarchar](50) NULL,
	[Bucket] [nvarchar](50) NULL,
	[Demand Date] [nvarchar](50) NULL,
	[Demand_type] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Unity_of_measure] [nvarchar](50) NULL,
	[Client_company_code] [nvarchar](50) NULL,
	[Client_unit_code] [nvarchar](50) NULL,
	[Plant_code] [nvarchar](50) NULL,
	[Production_line_code] [nvarchar](50) NULL,
	[Product_code] [nvarchar](50) NULL,
	[Region_code_origin] [nvarchar](50) NULL,
	[Management_unit_code_origin] [nvarchar](50) NULL,
	[item_code_origin] [nvarchar](50) NULL,
	[Demand_category_classification_origin_01] [nvarchar](50) NULL,
	[Demand_category_classification_origin_02] [nvarchar](50) NULL,
	[Demand_category_classification_origin_03] [nvarchar](50) NULL,
	[Demand_category_classification_origin_04] [nvarchar](50) NULL,
	[Demand_category_classification_origin_05] [nvarchar](50) NULL,
	[Validation_total] [int] NULL,
	[Validation_SPU_key] [int] NULL,
	[Validation_bucket] [int] NULL,
	[Validation_date] [int] NULL,
	[Validation_demand_type] [int] NULL,
	[Validation_quantity] [int] NULL,
	[Validation_unit_of_measure] [int] NULL,
	[Validation_client_company_code] [int] NULL,
	[Validation_client_unit_code] [int] NULL,
	[Validation_product_code] [int] NULL,
	[Validation_plant_code] [int] NULL,
	[Validation_production_line_code] [int] NULL,
	[Validation_origin_SPU_key] [int] NULL,

) ON [PRIMARY]
GO


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Management_Group' AND COLUMN_NAME='Date_format' )
	alter table Management_Group add Date_format [nvarchar](2) NULL;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE  TABLE_NAME='Demand_Forecast_History_Interface' )
	drop table Demand_Forecast_History_Interface;
CREATE TABLE [dbo].[Demand_Forecast_History_Interface](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Interface_time_stamp] [nvarchar](50) NULL,

	[Interface_time_stamp_date] [datetime] NULL,
	[analysis_id] [numeric](18, 0) NULL,
	[Region_code_management_unit] [nvarchar](max) NULL,
	[Management_unit_code] [nvarchar](max) NULL,
	[Item_code] [nvarchar](max) NULL,
	[Demand_category_classification_01] [nvarchar](max) NULL,
	[Demand_category_classification_02] [nvarchar](max) NULL,
	[Demand_category_classification_03] [nvarchar](max) NULL,
	[Demand_category_classification_04] [nvarchar](max) NULL,
	[Demand_category_classification_05] [nvarchar](max) NULL,
	Forecast_origin_date [nvarchar](max) NULL,

	Forecast_horizon_begin_date [nvarchar](max) NULL,
	Forecast_horizon_end_date [nvarchar](max) NULL,
	[Bucket] [nvarchar](max) NULL,
	[Forecast_target_date] [nvarchar](max) NULL,
	[Demand_type] [nvarchar](max) NULL,
	[Quantity] [nvarchar](max) NULL,
	[Unity_of_measure] [nvarchar](max) NULL,
	[Client_company_code] [nvarchar](max) NULL,
	[Client_unit_code] [nvarchar](max) NULL,
	[Plant_code] [nvarchar](max) NULL,
	[Production_line_code] [nvarchar](max) NULL,
	[Product_code] [nvarchar](max) NULL,
	[Region_code_origin] [nvarchar](max) NULL,
	[Management_unit_code_origin] [nvarchar](max) NULL,
	[Demand_category_classification_01_origin] [nvarchar](max) NULL,
	[Demand_category_classification_02_origin] [nvarchar](max) NULL,
	[Demand_category_classification_03_origin] [nvarchar](max) NULL,
	[Demand_category_classification_04_origin] [nvarchar](max) NULL,
	[Demand_category_classification_05_origin] [nvarchar](max) NULL,
	[Validation_total] [int] NULL,
	[Validation_SPU_key] [int] NULL,
	[Validation_forecast_origin_date] [int] NULL,
	[Validation_bucket] [int] NULL,
	[Validation_forecast_target_date] [int] NULL,
	[Validation_demand_type] [int] NULL,
	[Validation_quantity] [int] NULL,
	[Validation_unit_of_measure] [int] NULL,
	[Validation_client_company_code] [int] NULL,
	[Validation_client_unit_code] [int] NULL,
	[Validation_plant_code] [int] NULL,
	[Validation_production_line_code] [int] NULL,
	[Validation_product_code] [int] NULL,
	[Validation_origin_SPU_key] [int] NULL,

 CONSTRAINT [PK_Demand_History_Interface] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Supply_Alternative' AND COLUMN_NAME='Validation_lead_time' )
	alter table Supply_Alternative drop column Validation_lead_time;		

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE  TABLE_NAME='Spu_Company_Unit' )
	drop table Spu_Company_Unit;
CREATE TABLE [dbo].[Spu_Company_Unit](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[analysis_id] [numeric](18, 0) NULL,
	[spu_id] [numeric](18, 0) NULL,
	Frozen_horizon_value [numeric](18, 4) NULL,
	[Frozen_horizon_time_unit] [nvarchar](2) NULL,

	Maximum_demand_increase [numeric](18, 4) NULL,
	Maximum_demand_decrease [numeric](18, 4) NULL,

	Validation_total [int] NULL,
	Validation_SPU [int] NULL,
	Validation_client [int] NULL,
	Validation_frozen_horizon [int] NULL,
	Validation_maximum_demand_variation [int] NULL,


 CONSTRAINT [PK_Spu_Company_Unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Frozen_horizon_value' )
	alter table spu_parameter add Frozen_horizon_value [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Frozen_horizon_time_unit' )
	alter table spu_parameter add Frozen_horizon_time_unit [nvarchar](2) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_demand_increase' )
	alter table spu_parameter add Maximum_demand_increase [numeric](18, 4) NULL;
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Maximum_demand_decrease' )
	alter table spu_parameter add Maximum_demand_decrease [numeric](18, 4) NULL;


