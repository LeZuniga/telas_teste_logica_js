use proper_Base
update term set Field_name='companyProper' where Field_name='properCompany';

alter table Company_Proper add Reference_unit_of_measure_mass [nvarchar](20) NULL;
alter table Company_Proper add Reference_unit_of_measure_volume [nvarchar](20) NULL;
alter table Company_Proper add Reference_unit_of_measure_length [nvarchar](20) NULL;
alter table Company_Proper add Reference_unit_of_measure_units [nvarchar](20) NULL;
alter table Company_Proper add Reference_currency_id [numeric](18, 0) NULL;