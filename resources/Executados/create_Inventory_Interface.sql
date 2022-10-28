USE [Proper_Base]
GO

/****** Object:  Table [dbo].[Inventory_Interface ]    Script Date: 16/02/2021 15:04:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory_Interface](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Proper_company_code] [nvarchar](max) NULL,
	[Region_code_management_group] [nvarchar](max) NULL,
	[Management_group_code] [nvarchar](max) NULL,
	[Reference_date] [nvarchar](max) NULL,
	[Analysis_code] [nvarchar](max) NULL,
Region_code_management_unit [nvarchar](max) NULL,
Management_unit_code [nvarchar](max) NULL,
Item_code [nvarchar](max) NULL,
Demand_category_classification_01 [nvarchar](max) NULL,
Demand_category_classification_02 [nvarchar](max) NULL,
Demand_category_classification_03 [nvarchar](max) NULL,
Demand_category_classification_04 [nvarchar](max) NULL,
Demand_category_classification_05 [nvarchar](max) NULL,
Warehouse_code [nvarchar](max) NULL,
Date [nvarchar](max) NULL,
Quantity_on_hand [nvarchar](max) NULL,
Quantity_reserved [nvarchar](max) NULL,
Quantity_under_inspection [nvarchar](max) NULL,
Quantity_rejected [nvarchar](max) NULL,

 CONSTRAINT [PK_Inventory_Interface] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


