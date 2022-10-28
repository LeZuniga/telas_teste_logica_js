use proper_Base
CREATE TABLE [dbo].[Demand_Forecast_History_Interface](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
Proper_company_code [nvarchar](max) NULL,
Region_code_management_group [nvarchar](max) NULL,
Management_group_code [nvarchar](max) NULL,
Reference_date [nvarchar](max) NULL,
Analysis_code [nvarchar](max) NULL,
Forecast_origin_date [nvarchar](max) NULL,
Region_code_management_unit [nvarchar](max) NULL,
Management_unit_code [nvarchar](max) NULL,
Item_code [nvarchar](max) NULL,
Demand_category_classification_01 [nvarchar](max) NULL,
Demand_category_classification_02 [nvarchar](max) NULL,
Demand_category_classification_03 [nvarchar](max) NULL,
Demand_category_classification_04 [nvarchar](max) NULL,
Demand_category_classification_05 [nvarchar](max) NULL,

Bucket [nvarchar](max) NULL,
Forecast_target_date [nvarchar](max) NULL,
Demand_type [nvarchar](max) NULL,
Quantity [nvarchar](max) NULL,
Unity_of_measure [nvarchar](max) NULL,

Client_company_code [nvarchar](max) NULL,
Client_unit_code [nvarchar](max) NULL,
Plant_code [nvarchar](max) NULL,
Production_line_code [nvarchar](max) NULL,
   Product_code [nvarchar](max) NULL,
Region_code_origin [nvarchar](max) NULL,
Management_unit_code_origin [nvarchar](max) NULL,
  Item_code_origin [nvarchar](max) NULL,
Demand_category_classification_01_origin [nvarchar](max) NULL,
Demand_category_classification_02_origin [nvarchar](max) NULL,
Demand_category_classification_03_origin [nvarchar](max) NULL,
Demand_category_classification_04_origin [nvarchar](max) NULL,
Demand_category_classification_05_origin [nvarchar](max) NULL,

Validation_total [int] NULL,
Validation_SPU_key [int] NULL,
Validation_forecast_origin_date [int] NULL,
Validation_bucket [int] NULL,
Validation_forecast_target_date [int] NULL,
Validation_demand_type [int] NULL,
Validation_quantity [int] NULL,
Validation_unit_of_measure [int] NULL,
Validation_client_company_code [int] NULL,
Validation_client_unit_code [int] NULL,
Validation_plant_code [int] NULL,
Validation_production_line_code [int] NULL,
Validation_product_code [int] NULL,
Validation_origin_SPU_key [int] NULL,

 CONSTRAINT [PK_Demand_History_Interface] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
