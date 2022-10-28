
USE PROPER_BASE

insert Standard_Processes (code, Standard_Processes_description, class_name) Values ('TOT_DEMANDAS', 'Totalizacao das Demandas', 'br.com.straight.proper.jobs.TotalizacaoDasDemandas');

alter table spu add Unit_cost_effective_management_group_currency [numeric](18, 6) NULL;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Item_Filter_Sequencing' AND COLUMN_NAME='Field' ) 
   	alter table Item_Filter_Sequencing drop column Field;
alter table Item_Filter_Sequencing add Field [nvarchar](18) NULL;

  ALTER TABLE Item_Filter_Sequencing alter column Field [nvarchar](18) NULL;