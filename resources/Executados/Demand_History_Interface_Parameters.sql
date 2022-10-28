USE [Proper_Base]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Demand_History_Interface_Parameters](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Validation_Demand_Category_Classification_1] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_2] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_3] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_4] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_5] [nvarchar](2) NULL,
	[Validation_client_company_code] [nvarchar](2) NULL,
	[Validation_client_company_description] [nvarchar](2) NULL,
	[Validation_client_unit_code] [nvarchar](2) NULL,
	[Validation_client_unit_description] [nvarchar](2) NULL,
	[Validation_product_code] [nvarchar](2) NULL,
	[Validation_product_description] [nvarchar](2) NULL,
	[Validation_region_code] [nvarchar](2) NULL,
	[Validation_management_unit_code] [nvarchar](2) NULL
) ON [PRIMARY]
GO

