USE [Proper_Base]
GO

Drop Table Item_Interface

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Item_Interface](
 [Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 [Interface_time_stamp] [nvarchar](50) NULL,
 [analysis_id] [numeric](18, 0) NULL,
Item_Code [nvarchar](50) NULL,
Description [nvarchar](max) NULL,
Family_Code_1 [nvarchar](50) NULL,
Family_Code_2 [nvarchar](50) NULL,
Family_Code_3 [nvarchar](50) NULL,
Item_Category_Classification_01 [nvarchar](50) NULL,
Item_Category_Classification_02 [nvarchar](50) NULL,
Item_Category_Classification_03 [nvarchar](50) NULL,
Item_Category_Classification_04 [nvarchar](50) NULL,
Item_Category_Classification_05 [nvarchar](50) NULL,
Creation_Date_ERP [nvarchar](50) NULL,
Main_Unity_Of_Measure [nvarchar](50) NULL,
Unity_Of_Measure_Mass [nvarchar](50) NULL,
Conversion_Factor_Mass [nvarchar](50) NULL,
Unity_Of_Measure_Volume [nvarchar](50) NULL,
Conversion_Factor_Volume [nvarchar](50) NULL,
Unity_Of_Measure_Area [nvarchar](50) NULL,
Conversion_Factor_Area [nvarchar](50) NULL,
Unity_Of_Measure_Length [nvarchar](50) NULL,
Conversion_Factor_Length [nvarchar](50) NULL,
Unity_Of_Measure_Units [nvarchar](50) NULL,
Conversion_Factor_Units [nvarchar](50) NULL,
Primary_Packaging [nvarchar](50) NULL,
Secondary_Packaging [nvarchar](50) NULL,
Palletization [nvarchar](50) NULL,
Bulk_Storage_Code [nvarchar](50) NULL,
Shelf_Life_Unit_Of_Measure [nvarchar](50) NULL,
Shelf_Life [nvarchar](50) NULL,
First_Demand_Input [nvarchar](50) NULL,
Criticality_Criterion_1_Grade [nvarchar](50) NULL,
Criticality_Criterion_2_Grade [nvarchar](50) NULL,
Criticality_Criterion_3_Grade [nvarchar](50) NULL,
Criticality_Criterion_4_Grade [nvarchar](50) NULL,
Criticality_Criterion_5_Grade [nvarchar](50) NULL,
Qualitative_Criterion_1_Grade [nvarchar](50) NULL,
Qualitative_Criterion_2_Grade [nvarchar](50) NULL,
Qualitative_Criterion_3_Grade [nvarchar](50) NULL,
Qualitative_Criterion_4_Grade [nvarchar](50) NULL,
Qualitative_Criterion_5_Grade [nvarchar](50) NULL,
Qualitative_Criterion_6_Grade [nvarchar](50) NULL,
Qualitative_Criterion_7_Grade [nvarchar](50) NULL,
Qualitative_Criterion_8_Grade [nvarchar](50) NULL,
Qualitative_Criterion_9_Grade [nvarchar](50) NULL,
Qualitative_Criterion_10_Grade [nvarchar](50) NULL,
interface_history_id [numeric](18, 0) NULL,
Validation_Total [int] NULL,
Validation_Basic_Data [int] NULL,
Validation_Item_Family [int] NULL,
Validation_Item_Category [int] NULL,
Validation_Unit_Of_Measure [int] NULL,
Validation_Packaging [int] NULL,
Validation_Shelf_Life [int] NULL,
Validation_First_Demand [int] NULL,
Validation_Criticality [int] NULL,
Validation_Qualitative_Criterion [int] NULL,

 CONSTRAINT [PK_Item_Interface] PRIMARY KEY CLUSTERED 
(
 [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_total' )
	alter table Itens drop column Validation_total;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_basic_data' )
	alter table Itens drop column Validation_basic_data;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_item_family' )
	alter table Itens drop column Validation_item_family;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_item_category' )
	alter table Itens drop column Validation_item_category;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_unit_of_measure' )
	alter table Itens drop column Validation_unit_of_measure;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_packaging' )
	alter table Itens drop column Validation_packaging;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_shelf_life' )
	alter table Itens drop column Validation_shelf_life;		
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_first_and_last_demand' )
	alter table Itens drop column Validation_first_and_last_demand;	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Validation_criticality_grades' )
	alter table Itens drop column Validation_criticality_grades;		

	


IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Palletization_quantity' )
	alter table Itens drop column Palletization_quantity;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Primary_packaging_quantity' )
	alter table Itens drop column Primary_packaging_quantity;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Secondary_packaging_quantity' )
	alter table Itens drop column Secondary_packaging_quantity;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Unity_of_measure_01_id' )
	alter table Itens drop column Unity_of_measure_01_id;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Unity_of_measure_02_id' )
	alter table Itens drop column Unity_of_measure_02_id;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Unity_of_measure_03_id' )
	alter table Itens drop column Unity_of_measure_03_id;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Unity_of_measure_04_id' )
	alter table Itens drop column Unity_of_measure_04_id;
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Itens' AND COLUMN_NAME='Unity_of_measure_05_id' )
	alter table Itens drop column Unity_of_measure_05_id;
	
/** limpar Validar item do jobscript **/
Delete job_script where id=(SELECT id FROM Standard_Processes where code='VAL_ITM')
Delete Standard_Processes where code='VAL_ITM'

/** inserir item interface  na lista de importacao de interfaces **/
update interface_table set ordem=ordem+4 where ordem>10

INSERT INTO interface_table
           (table_name
           ,description
           ,file_pattern
           ,analysis_key
           ,ordem
           ,use_history_interface) VALUES
           ('item_interface'
           ,'item interface'
           ,'Export_item_interface'
           ,1
           ,11
           ,1);

insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 0,'Interface_time_stamp','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 1,'Item_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 2,'Description','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 3,'Family_code_1','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 4,'Family_code_2','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 5,'Family_code_3','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 6,'Item_category_classification_01','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 7,'Item_category_classification_02','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 8,'Item_category_classification_03','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 9,'Item_category_classification_04','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 10,'Item_category_classification_05','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 11,'Creation_date_ERP','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 12,'Main_unity_of_measure','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 13,'Unity_of_measure_mass','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 14,'Conversion_factor_mass','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 15,'Unity_of_measure_volume','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 16,'Conversion_factor_volume','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 17,'Unity_of_measure_area','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 18,'Conversion_factor_area','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 19,'Unity_of_measure_length','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 20,'Conversion_factor_length','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 21,'Unity_of_measure_units','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 22,'Conversion_factor_units','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 23,'Primary_packaging','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 24,'Secondary_packaging','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 25,'Palletization','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 26,'Bulk_storage_code','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 27,'Shelf_life_unit_of_measure','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 28,'Shelf_life','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 29,'First_demand_input','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 30,'Criticality_criterion_1_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 31,'Criticality_criterion_2_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 32,'Criticality_criterion_3_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 33,'Criticality_criterion_4_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 34,'Criticality_criterion_5_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 35,'Qualitative_criterion_1_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 36,'Qualitative_criterion_2_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 37,'Qualitative_criterion_3_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 38,'Qualitative_criterion_4_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 39,'Qualitative_criterion_5_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 40,'Qualitative_criterion_6_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 41,'Qualitative_criterion_7_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 42,'Qualitative_criterion_8_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 43,'Qualitative_criterion_9_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 44,'Qualitative_criterion_10_grade','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 45,'Validation_total','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 46,'Validation_basic_data','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 47,'Validation_item_family','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 48,'Validation_item_category','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 49,'Validation_unit_of_measure','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 50,'Validation_packaging','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 51,'Validation_shelf_life','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 52,'Validation_first_demand','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 53,'Validation_criticality','STR');
insert [interface_structure] (interface_table_id, position, field_name,type) Values ((select id from interface_table where table_name='item_interface'), 54,'Validation_qualitative_criterion','STR');

update term set Term_code='Menu.ProperInterfaces.InputInterfacesItemAnalyze',[Term_description]='Menu - Basic Data - Input Interfaces Item Analyze',[Field]='InterfaceItemAnalyze' ,[Field_name]='interfaceItemAnalyze' where Term_code='Menu.ProperInterfaces.InputInterfacesItemAnalize';

alter table warehouse add Warehouse_category_id[numeric](18, 0) NULL;