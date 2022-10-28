USE [Proper_Base]
GO

/****** Object:  Table [dbo].[Demand_History_Interface]    Script Date: 06/06/2021 08:30:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

drop table Demand_History_Interface;

CREATE TABLE [dbo].[Demand_History_Interface](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[date_hour] [nvarchar](50) NULL,
	[Proper_company_code] [nvarchar](50) NULL,
	[Region_code_management_group] [nvarchar](50) NULL,
	[Management_group_code] [nvarchar](50) NULL,
	[Reference_date] [nvarchar](50) NULL,
	[Analysis_code] [nvarchar](50) NULL,
	Interface_time_stamp [nvarchar](50) NULL,
	[Region_code_management_unit] [nvarchar](50) NULL,
	[Management_unit_code] [nvarchar](50) NULL,
	[Item_code] [nvarchar](50) NULL,
	[Demand_classification_01] [nvarchar](50) NULL,
	[Demand_classification_02] [nvarchar](50) NULL,
	[Demand_classification_03] [nvarchar](50) NULL,
	[Demand_classification_04] [nvarchar](50) NULL,
	[Demand_classification_05] [nvarchar](50) NULL,
	[Bucket] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
	[Data] datetime NULL,
	[Demand_type] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Unity_of_measure] [nvarchar](50) NULL,
	[Client_company_code] [nvarchar](50) NULL,
	[Client_company_name] [nvarchar](50) NULL,
	[Client_unit_code] [nvarchar](50) NULL,
	[Client_unit_description] [nvarchar](50) NULL,
	[Plant_code] [nvarchar](50) NULL,
	[Plant_description] [nvarchar](50) NULL,
	[Production_line_code] [nvarchar](50) NULL,
	[Production_line_description] [nvarchar](50) NULL,
	[Product_code] [nvarchar](50) NULL,
	[Region_code_origin] [nvarchar](50) NULL,
	[Management_unit_code_origin] [nvarchar](50) NULL,
	[Management_unit_description_origin] [nvarchar](255) NULL,
	[item_code_origin] [nvarchar](50) NULL,
	[Demand_category_classification_origin_01] [nvarchar](50) NULL,
	[Demand_category_classification_origin_02] [nvarchar](50) NULL,
	[Demand_category_classification_origin_03] [nvarchar](50) NULL,
	[Demand_category_classification_origin_04] [nvarchar](50) NULL,
	[Demand_category_classification_origin_05] [nvarchar](50) NULL,
	[Validation_bucket] [int] NULL,
	[Validation_date] [int] NULL,
	[Validation_demand_type] [int] NULL,
	[Validation_quantity] [int] NULL,
	[Validation_unit_of_measure] [int] NULL,
	[Validation_client_company_code] [int] NULL,
	[Validation_client_unit_code] [int] NULL,
	[Validation_product_code] [int] NULL,
	[Validation_total] [int] NULL,
	[Validation_SPU_key] [int] NULL,
	[Validation_plant_code] [int] NULL,
	[Validation_production_line_code] [int] NULL,
	[Validation_origin_SPU_key] [int] NULL
) ON [PRIMARY]
GO


