INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align]) 
VALUES (N'Menu.BasicInformation.InterfaceImport', N'Menu - Basic Data - InterfaceImport', N'Menu', N'BasicInformation', N'InterfaceImport', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'interfaceImport', N'1.02.18', NULL, NULL)

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[interface_table](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[table_name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[file_pattern] [nvarchar](255) NULL,
	[validator] [nvarchar](255) NULL,
	[analysis_key] [bit],
	[ordem] [int],
 CONSTRAINT [PK_interfaces_tables] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[interface_structure](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[interface_table_id] [numeric](18, 0) NULL,
	[position] [int] NULL,
	[field_name] [nvarchar](255) NULL,
	[table_aux] [nvarchar](255) NULL,
	[field_name_aux] [nvarchar](255) NULL,
	[type] [nvarchar](5) NULL,
	[validation_type] [nvarchar](5) NULL,
 CONSTRAINT [PK_interface_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[interface_history](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[interface_table_id] [numeric](18, 0) NULL,
	[file_name] [nvarchar](max) NULL,
	[data_hora] [datetime] NULL,
	[user_id] [numeric](18, 0) NULL,
	[qtd_total] [int] NULL,
	[qtd_errors] [int] NULL,
 CONSTRAINT [PK_interface_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


alter table company_unit add analysis_id [numeric](18, 0) NULL;
alter table category add analysis_id [numeric](18, 0) NULL;
alter table spu_parameter add analysis_id [numeric](18, 0) NULL;

alter table item_production_line add Lead_time_unit [nvarchar](2) NULL;
alter table item_production_line add Lead_time_minimum [numeric](18, 4) NULL;
alter table item_production_line add Lead_time_average [numeric](18, 4) NULL;
alter table item_production_line add Lead_time_maximum [numeric](18, 4) NULL;
alter table item_production_line add Lot_size_minimum [numeric](18, 4) NULL;
alter table item_production_line add Lot_size_multiple [numeric](18, 4) NULL;
alter table item_production_line add Setup_efficiency [numeric](18, 4) NULL;
alter table item_production_line add First_production [datetime] NULL;
alter table item_production_line add Last_production [datetime] NULL;

alter table Demand_History_Interface alter column Proper_company_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Region_code_management_group [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Management_group_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Reference_date [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Analysis_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Region_code_management_unit [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Management_unit_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Item_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Description [nvarchar](255)  NULL;
alter table Demand_History_Interface alter column Demand_classification_01 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_classification_02 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_classification_03 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_classification_04 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_classification_05 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Bucket [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Date [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_type [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Quantity [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Unity_of_measure [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Client_company_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Client_company_name [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Client_unit_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Client_unit_description [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Plant_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Plant_description [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Production_line_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Production_line_description [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Product_code [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Product_description [nvarchar](255)  NULL;
alter table Demand_History_Interface alter column Region_code_origin [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Management_unit_code_origin [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Management_unit_description_origin [nvarchar](255)  NULL;
alter table Demand_History_Interface alter column Demand_category_classification_origin_01 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_category_classification_origin_02 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_category_classification_origin_03 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_category_classification_origin_04 [nvarchar](50)  NULL;
alter table Demand_History_Interface alter column Demand_category_classification_origin_05 [nvarchar](50)  NULL;
