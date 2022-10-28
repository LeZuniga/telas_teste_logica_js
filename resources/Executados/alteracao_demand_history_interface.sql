use proper_Base

alter table Demand_History_Interface drop column Validation_item_code;
alter table Demand_History_Interface drop column Validation_item_description;
alter table Demand_History_Interface drop column Validation_demand_classification;
alter table Demand_History_Interface drop column Validation_client_company_name;
alter table Demand_History_Interface drop column Validation_client_unit_description;
alter table Demand_History_Interface drop column Validation_product_description;
alter table Demand_History_Interface drop column Validation_region_code;
alter table Demand_History_Interface drop column Validation_management_unit_code;

alter table Demand_History_Interface add Validation_total [numeric](18, 0) NULL;

alter table Demand_History_Interface add Validation_SPU_key [bit] NULL;
alter table Demand_History_Interface add Validation_plant_code [bit] NULL;
alter table Demand_History_Interface add Validation_production_line_code [bit] NULL;
alter table Demand_History_Interface add Validation_origin_SPU_key [bit] NULL;

INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field])
     VALUES ('Table.DemandType.04','Table DemandType 04','Table','DemandType','04');
     
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.01','Table TypeDemandDetail 01','Table','TypeDemandDetail','01');     
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.02','Table TypeDemandDetail 02','Table','TypeDemandDetail','02');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.03','Table TypeDemandDetail 03','Table','TypeDemandDetail','03');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.04','Table TypeDemandDetail 04','Table','TypeDemandDetail','04');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.05','Table TypeDemandDetail 05','Table','TypeDemandDetail','05');     
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.06','Table TypeDemandDetail 06','Table','TypeDemandDetail','06');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.07','Table TypeDemandDetail 07','Table','TypeDemandDetail','07');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.08','Table TypeDemandDetail 08','Table','TypeDemandDetail','08');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.09','Table TypeDemandDetail 09','Table','TypeDemandDetail','09');     
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.10','Table TypeDemandDetail 10','Table','TypeDemandDetail','10');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.11','Table TypeDemandDetail 11','Table','TypeDemandDetail','11');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.12','Table TypeDemandDetail 12','Table','TypeDemandDetail','12');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.13','Table TypeDemandDetail 13','Table','TypeDemandDetail','13');     
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.14','Table TypeDemandDetail 14','Table','TypeDemandDetail','14');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.15','Table TypeDemandDetail 15','Table','TypeDemandDetail','15');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.16','Table TypeDemandDetail 16','Table','TypeDemandDetail','16');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.17','Table TypeDemandDetail 17','Table','TypeDemandDetail','17');  
INSERT INTO [dbo].[Term] ([Term_code],[Term_description],[Type],[Functionality],[Field]) VALUES ('Table.TypeDemandDetail.18','Table TypeDemandDetail 18','Table','TypeDemandDetail','18');                               