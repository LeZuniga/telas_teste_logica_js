USE [Proper_Base]
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='lead_time_modal_value' ) 
   alter table spu_parameter add lead_time_modal_value [numeric](18, 4) NULL;


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='transportation_matrix' AND COLUMN_NAME='Transportation_mode' ) 
  alter table transportation_matrix add Transportation_mode [nvarchar](2) NULL;

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesItemClear', N'Menu - Basic Data - Input Interfaces Item Clear', N'Menu', N'ProperInterfaces', N'InputInterfacesItemClear',0,0, N'inputInterfacesItemClear','5.02.01.04',NULL,NULL,NULL)

INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesSpuClear', N'Menu - Basic Data - Input Interfaces Spu Clear', N'Menu', N'ProperInterfaces', N'InputInterfacesSpuClear',0,0, N'inputInterfacesSpuClear','5.02.02.04',NULL,NULL,NULL)

 
 INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesInventory', N'Menu - Basic Data - Input Interfaces Inventory', N'Menu', N'ProperInterfaces', N'InputInterfacesInventory',0,0,NULL, N'5.02.07',NULL,NULL,NULL)
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesInventoryAnalize', N'Menu - Basic Data - Input Interfaces Inventory Analize', N'Menu', N'ProperInterfaces', N'InputInterfacesInventoryAnalize',0,0, N'inputInterfacesInventoryAnalize','5.02.07.01',NULL,NULL,NULL)
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesInventoryList', N'Menu - Basic Data - Input Interfaces Inventory List', N'Menu', N'ProperInterfaces', N'InputInterfacesInventoryList',0,0, N'inputInterfacesInventoryList','5.02.07.02',NULL,NULL,NULL)
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesInventoryLoad', N'Menu - Basic Data - Input Interfaces Inventory Load', N'Menu', N'ProperInterfaces', N'InputInterfacesInventoryLoad',0,0, N'inputInterfacesInventoryLoad','5.02.07.03',NULL,NULL,NULL)
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesInventoryClear', N'Menu - Basic Data - Input Interfaces Inventory Clear', N'Menu', N'ProperInterfaces', N'InputInterfacesInventoryClear',0,0, N'inputInterfacesInventoryClear','5.02.07.04',NULL,NULL,NULL)

 update term set field='InputInterfacesSupplyAlternative',field_name=null where Menu_structure='5.02.04'
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesSupplyAlternativeAnalize', N'Menu - Basic Data - Input Interfaces SupplyAlternative Analize', N'Menu', N'ProperInterfaces', N'InputInterfacesSupplyAlternativeAnalize',0,0, N'inputInterfacesSupplyAlternativeAnalize','5.02.04.01',NULL,NULL,NULL)
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesSupplyAlternativeList', N'Menu - Basic Data - Input Interfaces SupplyAlternative List', N'Menu', N'ProperInterfaces', N'InputInterfacesSupplyAlternativeList',0,0, N'inputInterfacesSupplyAlternativeList','5.02.04.02',NULL,NULL,NULL)
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesSupplyAlternativeLoad', N'Menu - Basic Data - Input Interfaces SupplyAlternative Load', N'Menu', N'ProperInterfaces', N'InputInterfacesSupplyAlternativeLoad',0,0, N'inputInterfacesSupplyAlternativeLoad','5.02.04.03',NULL,NULL,NULL)
INSERT [dbo].[Term] ([Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES 
(N'Menu.ProperInterfaces.InputInterfacesSupplyAlternativeClear', N'Menu - Basic Data - Input Interfaces SupplyAlternative Clear', N'Menu', N'ProperInterfaces', N'InputInterfacesSupplyAlternativeClear',0,0, N'inputInterfacesSupplyAlternativeClear','5.02.04.04',NULL,NULL,NULL)

alter table Demand_History_Interface add proper_company_code [nvarchar](50) NULL;
alter table Demand_History_Interface add region_code_mgmt_group [nvarchar](50) NULL;
alter table Demand_History_Interface add mgmt_group_code [nvarchar](50) NULL;
alter table Demand_History_Interface add reference_date [nvarchar](50) NULL;
alter table Demand_History_Interface add analysis_code [nvarchar](50) NULL;

alter table Demand_History_Interface add date [datetime] NULL;

	EXEC sp_rename 'Demand_History_Interface.[Demand Date]', 'Demand_Date', 'COLUMN';

alter table Demand_Forecast_History_Interface add proper_company_code [nvarchar](50) NULL;
alter table Demand_Forecast_History_Interface add region_code_mgmt_group [nvarchar](50) NULL;
alter table Demand_Forecast_History_Interface add mgmt_group_code [nvarchar](50) NULL;
alter table Demand_Forecast_History_Interface add reference_date [nvarchar](50) NULL;
alter table Demand_Forecast_History_Interface add analysis_code [nvarchar](50) NULL;

update term set term_code='Header.DemandHistoryInterfaceList.demand_date',
term_description='DemandHistoryInterfaceList - Header - demand_date',
field='demand_date',field_name='demand_date' where term.Term_code='Header.DemandHistoryInterfaceList.date'

alter table inventory_Interface add data [datetime] NULL;

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Spu_id] [numeric](18, 0) NULL,
	[warehouse_id] [numeric](18, 0) NULL,
	[Date] [date] NULL,
	[Quantity_on_hand] [numeric](18, 4) NULL,
	[Quantity_reserved] [numeric](18, 4) NULL,
	[Quantity_under_inspection] [numeric](18, 4) NULL,
	[Quantity_rejected] [numeric](18, 4) NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory_Interface_Parameters](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Validation_Demand_Category_Classification_1] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_2] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_3] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_4] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_5] [nvarchar](2) NULL
	
) ON [PRIMARY]
GO


alter table Spu_Inventory_Performance add Average_inventory_Percentage [numeric](18, 4) NULL
alter table Spu_Inventory_Performance add maximum_Inventory_Percentage [numeric](18, 4) NULL


drop table interface_history;
CREATE TABLE [dbo].[interface_history](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[interface_table_id] [numeric](18, 0) NULL,
	identificador [nvarchar](max) NULL,
	[input_file_name] [nvarchar](max) NULL,
	[data_hora_inicio] [datetime] NULL,
	[data_hora_termino] [datetime] NULL,
	[user_id] [numeric](18, 0) NULL,
	[qtd_total] [int] NULL,
	[qtd_errors] [int] NULL,

 CONSTRAINT [PK_interface_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

alter table interface_table add use_history_interface [bit] 
alter table demand_history_Interface add interface_history_id [numeric](18, 0) NULL
alter table demand_forecast_history_Interface add interface_history_id [numeric](18, 0) NULL
alter table inventory_Interface add interface_history_id [numeric](18, 0) NULL
alter table interface_table add key_fields [nvarchar](max) NULL
