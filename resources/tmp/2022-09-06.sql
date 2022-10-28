use proper_base

ALTER TABLE Inventory_interface add unit_of_measure [nvarchar](20)  NULL;
ALTER TABLE Inventory_interface add lot_number [nvarchar](50) NULL;
ALTER TABLE Inventory_interface add lot_begin_date [nvarchar](20)  NULL;
ALTER TABLE Inventory_interface add lot_end_date [nvarchar](20)  NULL;

ALTER TABLE Inventory add unit_of_measure_id [numeric](18, 0) NULL;
ALTER TABLE Inventory add lot_number [nvarchar](50) NULL;
ALTER TABLE Inventory add lot_begin_date date NULL;
ALTER TABLE Inventory add lot_end_date date NULL;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Demand_History_Interface' AND COLUMN_NAME='begin_date' )	
	EXEC sp_rename 'Demand_History_Interface.begin_date', 'Demand_History_Begin_Date', 'COLUMN';
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='Demand_History_Interface' AND COLUMN_NAME='end_date' )	
	EXEC sp_rename 'Demand_History_Interface.end_date', 'Demand_History_End_Date', 'COLUMN';
	
update term set field_name='demand_history_begin_date' where term_code='Header.DemandHistoryInterfaceList.DemandHistoryBeginDate';
update term set field_name='demand_history_end_date' where term_code='Header.DemandHistoryInterfaceList.DemandHistoryEndDate';

delete [interface_structure] where interface_table_id=9;

INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type])  VALUES
(9,0,'date_hour','AUX');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type])  VALUES
(9,1,'region_code_mgmt_unit','AUX');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,2,'management_unit_id','CH','management_unit','management_unit_code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,3,'item_id','CH_AN','itens','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,4,'Demand_category_classification_01_id','DC_AN','category','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,5,'Demand_category_classification_02_id','DC_AN','category','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,6,'Demand_category_classification_03_id','DC_AN','category','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,7,'Demand_category_classification_04_id','DC_AN','category','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,8,'Demand_category_classification_05_id','DC_AN','category','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type])  VALUES
(9,9,'creation_date_Proper','DATA');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type])  VALUES
(9,10,'creation_date_ERP','DATA');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,11,'palletization_id','CH_AN','unit_of_measure','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,12,'bulk_storage_id','CH_AN','unit_of_measure','code');
INSERT INTO [interface_structure] ([interface_table_id],[position],[field_name],[type],[table_aux],[field_name_aux])  VALUES
(9,13,'planner_id','CH_AN','planner','code');

delete [interface_structure] where interface_table_id=12 and (position=1 or position=2 or
  position=3 or position=4 or position=5);

update [interface_structure] set position=(position-5) where interface_table_id=12 and position>0;

delete [interface_structure] where interface_table_id=19 and (position=1 or position=2 or
  position=3 or position=4 or position=5);

update [interface_structure] set position=(position-5) where interface_table_id=19 and position>0;

update [interface_structure] set field_name='receiving_management_unit_id' where interface_table_id=19 and field_name='management_unit_id';

update [interface_structure] set type='PORC' where interface_table_id=19 and field_name='Scrap_Rate';

