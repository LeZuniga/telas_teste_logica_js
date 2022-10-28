use proper_Base
update term set Field_name='companyProper' where Field_name='properCompany';

alter table Company_Proper add Reference_unit_of_measure_mass_id [numeric](18, 0);
alter table Company_Proper add Reference_unit_of_measure_volume_id [numeric](18, 0);
alter table Company_Proper add Reference_unit_of_measure_area_id [numeric](18, 0);
alter table Company_Proper add Reference_unit_of_measure_length_id [numeric](18, 0);
alter table Company_Proper add Reference_unit_of_measure_units_id [numeric](18, 0);
alter table Company_Proper add Reference_currency_id [numeric](18, 0) NULL;

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Company_Proper' AND COLUMN_NAME='Reference_unit_of_measure_mass' )
	alter table Company_Proper drop column Reference_unit_of_measure_mass;
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Company_Proper' AND COLUMN_NAME='Reference_unit_of_measure_volume' )
	alter table Company_Proper drop column Reference_unit_of_measure_volume;	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Company_Proper' AND COLUMN_NAME='Reference_unit_of_measure_area' )
	alter table Company_Proper drop column Reference_unit_of_measure_area;
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Company_Proper' AND COLUMN_NAME='Reference_unit_of_measure_length' )
	alter table Company_Proper drop column Reference_unit_of_measure_length;	
	
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='Company_Proper' AND COLUMN_NAME='Reference_unit_of_measure_units' )
	alter table Company_Proper drop column Reference_unit_of_measure_units;
	
	