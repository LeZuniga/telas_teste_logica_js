use proper_base
go

Update [interface_table] set [key_fields]=UPPER('Region_code_management_group;Management_group_code;Reference_date;Analysis_code;Region_code_management_unit;Management_unit_code;Item_code;Demand_category_classification_01];Demand_category_classification_02;Demand_category_classification_03;Demand_category_classification_04;Demand_category_classification_05;Warehouse_code;Date') where table_name='Inventory_Interface'


ALTER TABLE Inventory_Interface alter column Region_code_management_group [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Management_group_code [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Reference_date [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Analysis_code [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Region_code_management_unit [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Management_unit_code [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Item_code [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Demand_category_classification_01 [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Demand_category_classification_02 [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Demand_category_classification_03 [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Demand_category_classification_04 [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Demand_category_classification_05 [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Warehouse_code [nvarchar](20) NULL;
ALTER TABLE Inventory_Interface alter column Date [nvarchar](20) NULL;
      
CREATE NONCLUSTERED INDEX [NonClusteredIndex-Inventory_Interface-key] ON [dbo].[Inventory_Interface]
(
	  [Region_code_management_group] ASC,
      [Management_group_code] ASC,
      [Reference_date] ASC,
      [Analysis_code] ASC,
      [Region_code_management_unit] ASC,
      [Management_unit_code] ASC,
      [Item_code] ASC,
      [Demand_category_classification_01] ASC,
      [Demand_category_classification_02] ASC,
      [Demand_category_classification_03] ASC,
      [Demand_category_classification_04] ASC,
      [Demand_category_classification_05] ASC,
      [Warehouse_code] ASC,
      [Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO