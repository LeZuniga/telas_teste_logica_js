use proper_base

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Standard_period' )
EXEC sp_rename 'Parameters_Analysis.Standard_period', 'Standard_bucket', 'COLUMN';
