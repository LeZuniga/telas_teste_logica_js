USE [Proper_Base]
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu_Inventory_Performance' AND COLUMN_NAME='maximum_Inventory_Percentage' ) 
   alter table Spu_Inventory_Performance add maximum_Inventory_Percentage [numeric](18, 4) NULL;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Spu_Inventory_Performance' AND COLUMN_NAME='average_Inventory_Percentage' ) 
   alter table Spu_Inventory_Performance add average_Inventory_Percentage [numeric](18, 4) NULL;

   
