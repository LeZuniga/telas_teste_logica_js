use Proper_Base

alter table itens drop column Unity_of_measure_01;
alter table itens drop column Unity_of_measure_02;
alter table itens drop column Unity_of_measure_03;
alter table itens drop column Unity_of_measure_04;
alter table itens drop column Unity_of_measure_05;

alter table itens drop column Conversion_factor_2;
alter table itens drop column Conversion_factor_3;
alter table itens drop column Conversion_factor_4;
alter table itens drop column Conversion_factor_5;

alter table itens drop column  Validation_basic_data;
alter table itens drop column  Validation_item_family;
alter table itens drop column  Validation_item_category;
alter table itens drop column  Validation_unit_of_measure;
alter table itens drop column  Validation_packaging;
alter table itens drop column  Validation_shelf_life;
alter table itens drop column  Validation_first_and_last_demand;
alter table itens drop column  Validation_criticality_grades;
alter table itens drop column  Validation_qualitative_factors_grades;
alter table itens drop column  Validation_life_cycle;

alter table itens add Validation_basic_data [numeric](18, 0) NULL;
alter table itens add Validation_item_family [numeric](18, 0) NULL;
alter table itens add Validation_item_category [numeric](18, 0) NULL;
alter table itens add Validation_unit_of_measure [numeric](18, 0) NULL;
alter table itens add Validation_packaging [numeric](18, 0) NULL;
alter table itens add Validation_shelf_life [numeric](18, 0) NULL;
alter table itens add Validation_first_and_last_demand [numeric](18, 0) NULL;
alter table itens add Validation_criticality_grades [numeric](18, 0) NULL;
alter table itens add Validation_qualitative_factors_grades [numeric](18, 0) NULL;
alter table itens add Validation_life_cycle [numeric](18, 0) NULL;

alter table itens add Main_unit_of_measure_id [numeric](18, 0) NULL;

alter table itens add Unity_of_measure_mass_id [numeric](18, 0) NULL;
alter table itens add Conversion_factor_mass [numeric](18, 6) NULL;

alter table itens add Unity_of_measure_volume_id [numeric](18, 0) NULL;
alter table itens add Conversion_factor_volume [numeric](18, 6) NULL;

alter table itens add Unity_of_measure_area_id [numeric](18, 0) NULL;
alter table itens add Conversion_factor_area [numeric](18, 6) NULL;

alter table itens add Unity_of_measure_length_id [numeric](18, 0) NULL;
alter table itens add Conversion_factor_length [numeric](18, 6) NULL;

alter table itens add Unity_of_measure_units_id [numeric](18, 0) NULL;
alter table itens add Conversion_factor_units [numeric](18, 6) NULL





