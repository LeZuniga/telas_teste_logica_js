use Proper_Base
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Outlier_criteria' )
	alter table Parameters_Analysis drop column Outlier_criteria;
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='management_unit_parameter' AND COLUMN_NAME='push_Pull_Selection' )
	alter table management_unit_parameter drop column push_Pull_Selection;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Parameters_Analysis' AND COLUMN_NAME='Relevant_history_duration_unit_of_measure' )
	alter table Parameters_Analysis add Relevant_history_duration_unit_of_measure [nvarchar](2) NULL;