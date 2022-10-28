use Proper_Base 

alter table Demand_History_Interface add item_code_origin nvarchar(50) NULL;
alter table Demand_History_Interface alter column Validation_SPU_key [int] NULL;
 
  alter table Demand_History_Interface alter column Validation_bucket [int] NULL;
  alter table Demand_History_Interface alter column Validation_date [int] NULL;
  alter table Demand_History_Interface alter column Validation_demand_type [int] NULL;
  alter table Demand_History_Interface alter column Validation_quantity [int] NULL;
  
  alter table Demand_History_Interface alter column Validation_unit_of_measure [int] NULL;
  alter table Demand_History_Interface alter column Validation_client_company_code [int] NULL;
  alter table Demand_History_Interface alter column Validation_client_unit_code [int] NULL;
  alter table Demand_History_Interface alter column Validation_product_code [int] NULL;
 
  alter table Demand_History_Interface alter column Validation_plant_code [int] NULL;
  alter table Demand_History_Interface alter column Validation_production_line_code [int] NULL;
  alter table Demand_History_Interface alter column Validation_origin_SPU_key [int] NULL;
  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.BasicInformation.ProperInterfaces' ,'Menu - Basic Data - Proper Interfaces' ,'Menu' ,'BasicInformation' ,'ProperInterfaces' ,0,0 ,'#properInterfaces' ,'1.05.04');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.OutputInterfaces' ,'Menu - Basic Data - Output Interfaces' ,'Menu' ,'ProperInterfaces' ,'OutputInterfaces' ,0,0 ,NULL ,'5.01');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfaces' ,'Menu - Basic Data - Input Interfaces' ,'Menu' ,'ProperInterfaces' ,'InputInterfaces' ,0,0 ,NULL ,'5.02');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesItem' ,'Menu - Basic Data - Input Interfaces Item' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesItem' ,0,0 ,'inputInterfaceItem' ,'5.02.01');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesSpu' ,'Menu - Basic Data - Input Interfaces Spu' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesSpu' ,0,0 ,'inputInterfaceSpu' ,'5.02.02');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesCompany' ,'Menu - Basic Data - Input Interfaces Company' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesCompany' ,0,0 ,'inputInterfaceConpany' ,'5.02.03');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesSuplyAlternative' ,'Menu - Basic Data - Input Interfaces Suply Alternative' ,'Menu' ,'ProperInterfaces' ,'SuplyAlternative' ,0,0 ,'suplyAlternatie' ,'5.02.04');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandHistory' ,'Menu - Basic Data - Input Interfaces Demand History' ,'Menu' ,'ProperInterfaces' ,'DemandHistory' ,0,0 ,NULL ,'5.02.05');

INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandHistoryAnalize' ,'Menu - Basic Data - Input Interfaces Demand History Analize' ,'Menu' ,'ProperInterfaces' ,'DemandHistoryAnalize' ,0,0 ,'demandHistoryAnalize' ,'5.02.05.01');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandHistoryInterfaceList' ,'Menu - Basic Data - Input Interfaces Demand History List' ,'Menu' ,'ProperInterfaces' ,'DemandHistoryInterfaceList' ,0,0 ,'demandHistoryInterfaceList' ,'5.02.05.02');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandHistoryLoad' ,'Menu - Basic Data - Input Interfaces Demand History Load' ,'Menu' ,'ProperInterfaces' ,'DemandHistoryLoad' ,0,0 ,'demandHistoryLoad' ,'5.02.05.03');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesItemAnalize' ,'Menu - Basic Data - Input Interfaces Item Analize' ,'Menu' ,'ProperInterfaces' ,'InterfaceItemAnalize' ,0,0 ,'interfaceItemAnalize' ,'5.02.01.01');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesItemList' ,'Menu - Basic Data - Input Interfaces Item List' ,'Menu' ,'ProperInterfaces' ,'InterfaceItemList' ,0,0 ,'interfaceItemList' ,'5.02.01.02');

  INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesItemLoad' ,'Menu - Basic Data - Input Interfaces Item Load' ,'Menu' ,'ProperInterfaces' ,'InterfaceItemLoad' ,0,0 ,'interfaceItemLoad' ,'5.02.01.03');

 
INSERT [dbo].[Term] ( [Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES ( N'Menu.ProperInterfaces.Modules', N'Menu - Proper Interfaces - Modules', N'Menu', N'ProperInterfaces', N'Modules', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, N'5.05', NULL, NULL, NULL)
INSERT [dbo].[Term] ( [Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES ( N'Menu.ProperInterfaces.BasicInformation', N'Menu - Proper Interfaces - Modules - BasicInformation', N'Menu', N'ProperInterfaces', N'BasicInformation', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'#basicinformation', N'5.05.01', NULL, NULL, NULL)
INSERT [dbo].[Term] ( [Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES ( N'Menu.ProperInterfaces.ProperAssessment', N'Menu - Proper Interfaces- Modules - ProperAssessment', N'Menu', N'ProperInterfaces', N'ProperAssessment', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'#properAssessment', N'5.05.01', NULL, NULL, NULL)
INSERT [dbo].[Term] ( [Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES ( N'Menu.ProperInterfaces.ProperStock', N'Menu - Proper Interfaces- Modules - ProperStock', N'Menu', N'ProperInterfaces', N'ProperStock', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'#properStock', N'5.05.02', NULL, NULL, NULL)
INSERT [dbo].[Term] ( [Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES ( N'Menu.ProperInterfaces.ProperAction', N'Menu - Proper Interfaces- Modules - ProperAction', N'Menu', N'ProperInterfaces', N'ProperAction', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'#properAction', N'5.05.03', NULL, NULL, NULL)
INSERT [dbo].[Term] ( [Term_code], [Term_description], [Type], [Functionality], [Field], [Width], [Order_Grid], [Field_name], [Menu_structure], [Quantity_Frozen_Fields], [Align], [Complemento]) VALUES ( N'Menu.ProperInterfaces.Logout', N'Menu - Proper Interfaces - Logout', N'Menu', N'ProperInterfaces', N'Logout', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'#logout', N'5.06', NULL, NULL, NULL)
