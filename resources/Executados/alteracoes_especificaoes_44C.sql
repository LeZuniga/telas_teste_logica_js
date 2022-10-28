use proper_base

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandForecastHistory' ,'Menu - Basic Data - Input Interfaces Demand Forecast History' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesDemandForecastHistory' ,0,0 ,NULL ,'5.02.06');

INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandForecastHistoryAnalize' ,'Menu - Basic Data - Input Interfaces Demand Forecast History Analize' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesDemandForecastHistoryAnalize' ,0,0 ,'inputInterfacesDemandForecastHistoryAnalize' ,'5.02.06.01');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandForecastHistoryList' ,'Menu - Basic Data - Input Interfaces Demand Forecast History List' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesDemandForecastHistoryList' ,0,0 ,'inputInterfacesDemandForecastHistoryList' ,'5.02.06.02');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesDemandForecastHistoryLoad' ,'Menu - Basic Data - Input Interfaces Demand Forecast History Load' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesDemandForecastHistoryLoad' ,0,0 ,'inputInterfacesDemandForecastHistoryLoad' ,'5.02.06.03');

 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesSpu' ,'Menu - Basic Data - Input Interfaces Spu' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesSpu' ,0,0 ,NULL ,'5.02.02');

INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesSpuAnalize' ,'Menu - Basic Data - Input Interfaces Spu Analize' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesSpuAnalize' ,0,0 ,'inputInterfacesSpuAnalize' ,'5.02.02.01');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesSpuList' ,'Menu - Basic Data - Input Interfaces Spu List' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesSpuList' ,0,0 ,'inputInterfacesSpuList' ,'5.02.02.02');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesSpuLoad' ,'Menu - Basic Data - Input Interfaces Spu Load' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesSpuLoad' ,0,0 ,'inputInterfacesSpuLoad' ,'5.02.02.03');

 CREATE TABLE [dbo].[Production_History_Interface_Parameters](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Analysis_id] [numeric](18, 0) NULL,
	[Validation_Demand_Category_Classification_1] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_2] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_3] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_4] [nvarchar](2) NULL,
	[Validation_Demand_Category_Classification_5] [nvarchar](2) NULL
) ON [PRIMARY]
GO
 
 
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesProductionHistory' ,'Menu - Basic Data - Input Interfaces Production History' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesProductionHistory' ,0,0 ,NULL ,'5.02.08');

INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesProductionHistoryAnalize' ,'Menu - Basic Data - Input Interfaces Production History Analize' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesProductionHistoryAnalize' ,0,0 ,'inputInterfacesProductionHistoryAnalize' ,'5.02.08.01');
 
 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesProductionHistoryList' ,'Menu - Basic Data - Input Interfaces Production History List' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesProductionHistoryList' ,0,0 ,'inputInterfacesProductionHistoryList' ,'5.02.08.02');

 INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field],[Width],[Order_Grid],[Field_name],[Menu_structure])
 VALUES('Menu.ProperInterfaces.InputInterfacesProductionHistoryLoad' ,'Menu - Basic Data - Input Interfaces Production History Load' ,'Menu' ,'ProperInterfaces' ,'InputInterfacesProductionHistoryLoad' ,0,0 ,'inputInterfacesProductionHistoryLoad' ,'5.02.08.03');

 
 alter table Permission add [allow_menu] [bit] NULL;
 update Permission set allow_query=1;
 update Permission set allow_update=1;
 update Permission set allow_delete=1;
 update Permission set allow_run=1;
 update Permission set allow_menu=1;


 