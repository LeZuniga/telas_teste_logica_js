use proper_base;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='validation_Grouping' ) 
   alter table spu_parameter add validation_Grouping int NULL;   
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='validation_Frozen_Horizon' ) 
   alter table spu_parameter add validation_Frozen_Horizon int NULL;   
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='validation_Maximum_Demand_Variation' ) 
   alter table spu_parameter add validation_Maximum_Demand_Variation int NULL;   
   
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='spu_parameter' AND COLUMN_NAME='Proper_Assessment' ) 
   alter table spu_parameter add Proper_Assessment nvarchar(2) NULL DEFAULT '01';  
   


update spu_parameter set Proper_Assessment='01' where Proper_Assessment is null;

   
   



   