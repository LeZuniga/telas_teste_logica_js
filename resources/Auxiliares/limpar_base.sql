
delete Language 
delete Life_cycle_colors 
delete Life_Cycle_Item 
delete Life_Cycle_Spu 
delete Management_Category 
delete Management_Group 
delete Management_Group_Category 
delete Management_Unit 
delete Management_Unit_Assignment 
delete Management_Unit_Category 
delete Management_Unit_Demand_and_Inventory_Map 
delete management_unit_parameter 
delete Packaging_Pallets_Bulk_Storage 
delete Parameters 
delete Parameters_Analysis 
delete Permission 
delete Planner 
delete Planner_Assignment_History 
delete Planner_Status_History 
delete Plant 
delete Plant_Category 
delete Production_History_Interface_Parameters 
delete Production_line 
delete Production_Line_Category 
delete Production_Planning_History_Interface 
delete ProperUser 
delete Region 
delete spu 
delete Spu_Company_Unit 
delete Spu_Inventory_Performance 
delete spu_parameter 
delete Standard_Analysis_Processes 
delete Standard_Processes 
delete Supply_Alternative 
delete System_Administrator_User 
delete Term 
delete Term_Language 
delete Transportation_Matrix 
delete Transportation_Node 
delete Unit_Of_Measure 
delete User_Management_Group_Assignment 
delete User_Profile 
delete User_Status 
delete User_Status_History 
delete Warehouse 
delete Analysis 
delete Warehouse_Category 
delete Analysis_Process_Control 
delete Warehouse_Content 
delete Analysis_tmp 
delete Warehouse_Content_Interface_Parameters 
delete Application_parameters 
delete Bill_Of_Materials 
delete Category 
delete Classification 
delete Columns_Position 
delete Company 
delete Company_Proper 
delete Company_Unit 
delete CompanyProper_old 
delete Conversion_Factor 
delete Currency 
delete Demand_Forecast_History 
delete Demand_Forecast_history_detail 
delete Demand_Forecast_History_Interface 
delete Demand_history 
delete Demand_history_detail 
delete Demand_History_Interface 
delete Demand_History_Interface_Parameters 
delete Demand_Single_Forecast_History 
delete Demand_Single_Forecast_history_detail 
delete Exchange_Rate 
delete Family 
delete Format 
delete Functions 
delete General_Parameters 
delete Global_Unit_of_Measure 
delete Graphics_Colors 
delete Help_File 
delete Independent_Demand_Estimate_Parameters_Item 
delete Independent_Demand_Estimate_Parameters_Management_Unit 
delete Independent_Demand_Estimate_Parameters_SPU 
delete interface_data 
delete interface_history 
delete interface_structure 
delete interface_table 
delete Inventory 
delete Inventory_Interface 
delete Inventory_Interface_Parameters 
delete Item_Company_Unit 
delete Item_Filter 
delete Item_Filter_Criteria 
delete Item_Filter_Field 
delete Item_Filter_Sequencing 
delete Item_Interface 
delete item_parameters 
delete Item_Production_Line 
delete Item_Supplier 
delete Itens 
delete job_script 
delete Demand_and_Inventory_Map
delete spu_interface

DBCC CHECKIDENT('Language', RESEED, 0)

DBCC CHECKIDENT('Life_Cycle_Item', RESEED, 0)
DBCC CHECKIDENT('Life_Cycle_Spu', RESEED, 0)
DBCC CHECKIDENT('Management_Category', RESEED, 0)
DBCC CHECKIDENT('Management_Group', RESEED, 0)
DBCC CHECKIDENT('Management_Group_Category', RESEED, 0)
DBCC CHECKIDENT('Management_Unit', RESEED, 0)
DBCC CHECKIDENT('Management_Unit_Assignment', RESEED, 0)
DBCC CHECKIDENT('Management_Unit_Category', RESEED, 0)
DBCC CHECKIDENT('Management_Unit_Demand_and_Inventory_Map', RESEED, 0)
DBCC CHECKIDENT('management_unit_parameter', RESEED, 0)
DBCC CHECKIDENT('Packaging_Pallets_Bulk_Storage', RESEED, 0)

DBCC CHECKIDENT('Parameters_Analysis', RESEED, 0)
DBCC CHECKIDENT('Permission', RESEED, 0)
DBCC CHECKIDENT('Planner', RESEED, 0)
DBCC CHECKIDENT('Planner_Assignment_History', RESEED, 0)
DBCC CHECKIDENT('Planner_Status_History', RESEED, 0)
DBCC CHECKIDENT('Plant', RESEED, 0)
DBCC CHECKIDENT('Plant_Category', RESEED, 0)
DBCC CHECKIDENT('Production_History_Interface_Parameters', RESEED, 0)
DBCC CHECKIDENT('Production_line', RESEED, 0)
DBCC CHECKIDENT('Production_Line_Category', RESEED, 0)
DBCC CHECKIDENT('Production_Planning_History_Interface', RESEED, 0)
DBCC CHECKIDENT('ProperUser', RESEED, 0)
DBCC CHECKIDENT('Region', RESEED, 0)
DBCC CHECKIDENT('spu', RESEED, 0)
DBCC CHECKIDENT('Spu_Company_Unit', RESEED, 0)
DBCC CHECKIDENT('Spu_Inventory_Performance', RESEED, 0)
DBCC CHECKIDENT('spu_parameter', RESEED, 0)
DBCC CHECKIDENT('Standard_Analysis_Processes', RESEED, 0)
DBCC CHECKIDENT('Standard_Processes', RESEED, 0)
DBCC CHECKIDENT('Supply_Alternative', RESEED, 0)
DBCC CHECKIDENT('System_Administrator_User', RESEED, 0)
DBCC CHECKIDENT('Term', RESEED, 0)
DBCC CHECKIDENT('Term_Language', RESEED, 0)
DBCC CHECKIDENT('Transportation_Matrix', RESEED, 0)
DBCC CHECKIDENT('Transportation_Node', RESEED, 0)
DBCC CHECKIDENT('Unit_Of_Measure', RESEED, 0)
DBCC CHECKIDENT('User_Management_Group_Assignment', RESEED, 0)
DBCC CHECKIDENT('User_Profile', RESEED, 0)

DBCC CHECKIDENT('User_Status_History', RESEED, 0)
DBCC CHECKIDENT('Warehouse', RESEED, 0)
DBCC CHECKIDENT('Analysis', RESEED, 0)
DBCC CHECKIDENT('Warehouse_Category', RESEED, 0)
DBCC CHECKIDENT('Analysis_Process_Control', RESEED, 0)
DBCC CHECKIDENT('Warehouse_Content', RESEED, 0)
DBCC CHECKIDENT('Analysis_tmp', RESEED, 0)
DBCC CHECKIDENT('Warehouse_Content_Interface_Parameters', RESEED, 0)

DBCC CHECKIDENT('Bill_Of_Materials', RESEED, 0)
DBCC CHECKIDENT('Category', RESEED, 0)
DBCC CHECKIDENT('Classification', RESEED, 0)
DBCC CHECKIDENT('Columns_Position', RESEED, 0)
DBCC CHECKIDENT('Company', RESEED, 0)
DBCC CHECKIDENT('Company_Unit', RESEED, 0)

DBCC CHECKIDENT('Conversion_Factor', RESEED, 0)
DBCC CHECKIDENT('Currency', RESEED, 0)
DBCC CHECKIDENT('Demand_Forecast_History', RESEED, 0)
DBCC CHECKIDENT('Demand_Forecast_history_detail', RESEED, 0)
DBCC CHECKIDENT('Demand_Forecast_History_Interface', RESEED, 0)
DBCC CHECKIDENT('Demand_history', RESEED, 0)
DBCC CHECKIDENT('Demand_history_detail', RESEED, 0)
DBCC CHECKIDENT('Demand_History_Interface', RESEED, 0)
DBCC CHECKIDENT('Demand_History_Interface_Parameters', RESEED, 0)
DBCC CHECKIDENT('Demand_Single_Forecast_History', RESEED, 0)
DBCC CHECKIDENT('Demand_Single_Forecast_history_detail', RESEED, 0)
DBCC CHECKIDENT('Exchange_Rate', RESEED, 0)
DBCC CHECKIDENT('Family', RESEED, 0)
DBCC CHECKIDENT('Format', RESEED, 0)
DBCC CHECKIDENT('Functions', RESEED, 0)
DBCC CHECKIDENT('General_Parameters', RESEED, 0)
DBCC CHECKIDENT('Global_Unit_of_Measure', RESEED, 0)

DBCC CHECKIDENT('Help_File', RESEED, 0)
DBCC CHECKIDENT('Independent_Demand_Estimate_Parameters_Item', RESEED, 0)
DBCC CHECKIDENT('Independent_Demand_Estimate_Parameters_Management_Unit', RESEED, 0)
DBCC CHECKIDENT('Independent_Demand_Estimate_Parameters_SPU', RESEED, 0)
DBCC CHECKIDENT('interface_data', RESEED, 0)
DBCC CHECKIDENT('interface_history', RESEED, 0)
DBCC CHECKIDENT('interface_structure', RESEED, 0)
DBCC CHECKIDENT('interface_table', RESEED, 0)
DBCC CHECKIDENT('Inventory', RESEED, 0)
DBCC CHECKIDENT('Inventory_Interface', RESEED, 0)
DBCC CHECKIDENT('Inventory_Interface_Parameters', RESEED, 0)
DBCC CHECKIDENT('Item_Company_Unit', RESEED, 0)
DBCC CHECKIDENT('Item_Filter', RESEED, 0)
DBCC CHECKIDENT('Item_Filter_Criteria', RESEED, 0)
DBCC CHECKIDENT('Item_Filter_Field', RESEED, 0)
DBCC CHECKIDENT('Item_Filter_Sequencing', RESEED, 0)
DBCC CHECKIDENT('Item_Interface', RESEED, 0)
DBCC CHECKIDENT('item_parameters', RESEED, 0)
DBCC CHECKIDENT('Item_Production_Line', RESEED, 0)
DBCC CHECKIDENT('Item_Supplier', RESEED, 0)
DBCC CHECKIDENT('Itens', RESEED, 0)
DBCC CHECKIDENT('job_script', RESEED, 0)
DBCC CHECKIDENT('Demand_and_Inventory_Map', RESEED, 0)
DBCC CHECKIDENT('spu_interface', RESEED, 0)